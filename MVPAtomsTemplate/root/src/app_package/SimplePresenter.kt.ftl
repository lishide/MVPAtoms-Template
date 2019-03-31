package ${presenterPackageName}

import com.vea.atoms.mvp.base.BasePresenter
import ${contractPackageName}.${pageName}Contract
<#if needActivity && needFragment>
import com.vea.atoms.mvp.di.scope.ActivityScope
<#elseif needActivity>
import com.vea.atoms.mvp.di.scope.ActivityScope
<#elseif needFragment>
import com.vea.atoms.mvp.di.scope.FragmentScope
</#if>
import com.vea.atoms.mvp.integration.IRepositoryManager

import javax.inject.Inject

<#if needActivity && needFragment>
@ActivityScope
<#elseif needActivity>
@ActivityScope
<#elseif needFragment>
@FragmentScope
</#if>
class ${pageName}Presenter @Inject
constructor(private val repositoryManager: IRepositoryManager, view: ${pageName}Contract.View) :
        BasePresenter<${pageName}Contract.View>(view), ${pageName}Contract.Presenter {

}
