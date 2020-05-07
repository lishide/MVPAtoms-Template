package ${ativityPackageName}

import android.os.Bundle

import com.vea.atoms.mvp.base.BaseActivity
import com.vea.atoms.mvp.di.component.AppComponent
import ${packageName}.R
import ${componentPackageName}.Dagger${pageName}Component
import ${contractPackageName}.${pageName}Contract
import ${presenterPackageName}.${pageName}Presenter

/**
 * 如果没presenter
 * 你可以这样写
 *
 * @ActivityScope(請注意命名空間) class NullObjectPresenterByActivity
 * @Inject constructor() : IPresenter {
 * override fun onStart() {
 * }
 *
 * override fun onDestroy() {
 * }
 * }
 */
class ${pageName}Activity : BaseActivity<${pageName}Presenter>(), ${pageName}Contract.View {

    override fun setupActivityComponent(appComponent: AppComponent) {
        Dagger${pageName}Component //如找不到该类,请编译一下项目
                .builder()
                .appComponent(appComponent)
                .view(this)
                .build()
                .inject(this)
    }

    override fun getLayoutId(): Int {
        return R.layout.${activityLayoutName}
    }

    override fun initData(savedInstanceState: Bundle?) {

    }

}
