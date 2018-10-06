package ${componentPackageName};


import com.vea.atoms.mvp.di.component.AppComponent;

import ${moudlePackageName}.${pageName}Module;

<#if needActivity && needFragment>
import com.vea.atoms.mvp.di.scope.ActivityScope;
import ${ativityPackageName}.${pageName}Activity;
import ${fragmentPackageName}.${pageName}Fragment;
<#elseif needActivity>
import com.vea.atoms.mvp.di.scope.ActivityScope;
import ${ativityPackageName}.${pageName}Activity;   
<#elseif needFragment>
import com.vea.atoms.mvp.di.scope.FragmentScope;
import ${fragmentPackageName}.${pageName}Fragment;
</#if>

import dagger.Component;

<#if needActivity && needFragment>
@ActivityScope
<#elseif needActivity>
@ActivityScope
<#elseif needFragment>
@FragmentScope
</#if>
@Component(modules = ${pageName}Module.class,dependencies = AppComponent.class)
public interface ${pageName}Component {
  <#if needActivity && needFragment>
	void inject(${pageName}Activity activity);
	void inject(${pageName}Fragment fragment);
  <#elseif needActivity || needFragment>
    void inject(<#if needFragment>${pageName}Fragment fragment<#else>${pageName}Activity activity</#if>);
  </#if>
}