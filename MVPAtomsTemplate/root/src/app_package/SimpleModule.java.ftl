package ${moudlePackageName};

<#if needActivity && needFragment>
import com.vea.atoms.mvp.di.scope.ActivityScope;
<#elseif needActivity>
import com.vea.atoms.mvp.di.scope.ActivityScope;
<#elseif needFragment>
import com.vea.atoms.mvp.di.scope.FragmentScope;
</#if>
import ${contractPackageName}.${pageName}Contract;

import dagger.Module;
import dagger.Provides;

@Module
public class ${pageName}Module {
    private ${pageName}Contract.View view;

    /**
     * 构建 ${pageName}Module 时，将 View 的实现类传进来，这样就可以提供 View 的实现类给 presenter
     *
     * @param view
     */
    public ${pageName}Module(${pageName}Contract.View view) {
        this.view = view;
    }

    <#if needActivity && needFragment>
    @ActivityScope
    <#elseif needActivity>
    @ActivityScope
    <#elseif needFragment>
    @FragmentScope
    </#if>
    @Provides
    ${pageName}Contract.View provide${pageName}View() {
        return this.view;
    }

}