package ${contractPackageName};

import com.vea.atoms.mvp.base.IPresenter;
import com.vea.atoms.mvp.base.IView;

public interface ${pageName}Contract {
    /**
     * 对于经常使用的关于 UI 的方法可以定义到 IView 中，如显示隐藏进度条和显示文字消息
     */
    interface View extends IView {

    }

    /**
     * Presenter 层定义接口
     */
    interface Presenter extends IPresenter<View> {

    }
}
