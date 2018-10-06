package ${ativityPackageName};

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

import com.vea.atoms.mvp.di.component.AppComponent;
import ${packageName}.R;
import ${componentPackageName}.Dagger${pageName}Component;
import ${moudlePackageName}.${pageName}Module;
import ${contractPackageName}.${pageName}Contract;
import ${presenterPackageName}.${pageName}Presenter;
import com.vea.atoms.mvp.base.BaseActivity;

public class ${pageName}Activity extends BaseActivity<${pageName}Presenter> implements ${pageName}Contract.View {

    @Override
    public void setupActivityComponent(@NonNull AppComponent appComponent) {
        Dagger${pageName}Component //如找不到该类,请编译一下项目
                .builder()
                .appComponent(appComponent)
                .${extractLetters(pageName[0]?lower_case)}${pageName?substring(1,pageName?length)}Module(new ${pageName}Module(this))
                .build()
                .inject(this);
    }

    @Override
    protected int getLayoutId() {
        return R.layout.${activityLayoutName};
    }

    @Override
    public void initData(@Nullable Bundle savedInstanceState) {

    }
   
}
