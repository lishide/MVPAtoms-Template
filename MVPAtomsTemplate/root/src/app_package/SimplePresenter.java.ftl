package ${presenterPackageName};

import com.vea.atoms.mvp.base.BasePresenter;
<#if needActivity && needFragment>
import com.vea.atoms.mvp.di.scope.ActivityScope;
<#elseif needActivity>
import com.vea.atoms.mvp.di.scope.ActivityScope;
<#elseif needFragment>
import com.vea.atoms.mvp.di.scope.FragmentScope;
</#if>
import ${contractPackageName}.${pageName}Contract;
import com.vea.atoms.mvp.integration.IRepositoryManager;

import javax.inject.Inject;

<#if needActivity && needFragment>
@ActivityScope
<#elseif needActivity>
@ActivityScope
<#elseif needFragment>
@FragmentScope
</#if>
public class ${pageName}Presenter extends BasePresenter<${pageName}Contract.View> implements ${pageName}Contract.Presenter {

    private IRepositoryManager repositoryManager;

    @Inject
    public ${pageName}Presenter(IRepositoryManager repositoryManager, ${pageName}Contract.View view) {
        super(view);
        this.repositoryManager = repositoryManager;
    }
}
