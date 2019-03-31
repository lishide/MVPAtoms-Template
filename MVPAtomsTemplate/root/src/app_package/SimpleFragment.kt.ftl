package ${fragmentPackageName}

import com.vea.atoms.mvp.base.BaseFragment
import com.vea.atoms.mvp.di.component.AppComponent

import ${componentPackageName}.Dagger${pageName}Component
import ${moudlePackageName}.${pageName}Module
import ${contractPackageName}.${pageName}Contract
import ${presenterPackageName}.${pageName}Presenter

import ${packageName}.R

/**
 * 如果没presenter
 * 你可以这样写
 *
 * @FragmentScope(請注意命名空間) class NullObjectPresenterByFragment
 * @Inject constructor() : IPresenter {
 * override fun onStart() {
 * }
 *
 * override fun onDestroy() {
 * }
 * }
 */
class ${pageName}Fragment : BaseFragment<${pageName}Presenter>(), ${pageName}Contract.View {
    companion object {
        fun newInstance(): ${pageName}Fragment {
            val fragment = ${pageName}Fragment()
            return fragment
        }
    }

    override fun setupFragmentComponent(appComponent: AppComponent) {
        Dagger${pageName}Component //如找不到该类,请编译一下项目
                .builder()
                .appComponent(appComponent)
                .${extractLetters(pageName[0]?lower_case)}${pageName?substring(1,pageName?length)}Module(${pageName}Module(this))
                .build()
                .inject(this)
    }

    override fun getLayoutId(): Int {
        return R.layout.${fragmentLayoutName}
    }

    override fun initData(savedInstanceState: Bundle?) {

    }

}
