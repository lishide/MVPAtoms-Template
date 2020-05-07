package ${componentPackageName}

import com.vea.atoms.mvp.di.component.AppComponent

import ${moudlePackageName}.${pageName}Module
import ${contractPackageName}.${pageName}Contract
<#if needActivity && needFragment>
import com.vea.atoms.mvp.di.scope.ActivityScope
import ${ativityPackageName}.${pageName}Activity
import ${fragmentPackageName}.${pageName}Fragment
<#elseif needActivity>
import com.vea.atoms.mvp.di.scope.ActivityScope
import ${ativityPackageName}.${pageName}Activity
<#elseif needFragment>
import com.vea.atoms.mvp.di.scope.FragmentScope
import ${fragmentPackageName}.${pageName}Fragment
</#if>
import dagger.BindsInstance
import dagger.Component

<#if needActivity && needFragment>
@ActivityScope
<#elseif needActivity>
@ActivityScope
<#elseif needFragment>
@FragmentScope
</#if>
@Component(modules = [${pageName}Module::class], dependencies = [AppComponent::class])
interface ${pageName}Component {
  <#if needActivity && needFragment>
    fun inject(activity: ${pageName}Activity)
    fun inject(fragment: ${pageName}Fragment)
  <#elseif needActivity || needFragment>
    fun inject(<#if needFragment>fragment: ${pageName}Fragment<#else>activity: ${pageName}Activity</#if>)
  </#if>

    @Component.Builder
    interface Builder {
        @BindsInstance
        fun view(view: ${pageName}Contract.View): Builder

        fun appComponent(appComponent: AppComponent): Builder

        fun build(): ${pageName}Component
    }
}
