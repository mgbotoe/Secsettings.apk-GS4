.class Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$2;
.super Ljava/lang/Object;
.source "PersonalPageChooseLockAdditionalPin.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 256
    if-eqz p2, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;

    #getter for: Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->access$100(Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;

    #getter for: Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->access$000(Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;

    #getter for: Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->access$100(Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;

    #getter for: Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->access$000(Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
