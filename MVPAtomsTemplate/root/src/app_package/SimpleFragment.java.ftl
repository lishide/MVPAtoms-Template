package ${fragmentPackageName};

import android.os.Bundle;
import android.view.View;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import com.vea.atoms.mvp.base.BaseFragment;
import com.vea.atoms.mvp.di.component.AppComponent;

import ${componentPackageName}.Dagger${pageName}Component;
import ${moudlePackageName}.${pageName}Module;
import ${contractPackageName}.${pageName}Contract;
import ${presenterPackageName}.${pageName}Presenter;

import ${packageName}.R;

public class ${pageName}Fragment extends BaseFragment<${pageName}Presenter> implements ${pageName}Contract.View {

    public static ${pageName}Fragment newInstance() {
        ${pageName}Fragment fragment = new ${pageName}Fragment();
        return fragment;
    }

    @Override
    public void setupFragmentComponent(@NonNull AppComponent appComponent) {
        Dagger${pageName}Component //如找不到该类,请编译一下项目
                .builder()
                .appComponent(appComponent)
                .view(this)
                .build()
                .inject(this);
    }

    @Override
    protected int getLayoutId() {
        return R.layout.${fragmentLayoutName};
    }

    @Override
    public void initData(@Nullable Bundle savedInstanceState) {

    }

}
