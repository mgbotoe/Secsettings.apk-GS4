.class Lcom/android/settings/inputmethod/InputMethodPreference$4;
.super Ljava/lang/Object;
.source "InputMethodPreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/InputMethodPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/InputMethodPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/InputMethodPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodPreference$4;->this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 160
    const/16 v4, 0x42

    if-eq p2, v4, :cond_0

    const/16 v4, 0x17

    if-ne p2, v4, :cond_2

    .line 161
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 162
    invoke-virtual {p1, v2}, Landroid/view/View;->playSoundEffect(I)V

    .line 164
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodPreference$4;->this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

    #getter for: Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;
    invoke-static {v4}, Lcom/android/settings/inputmethod/InputMethodPreference;->access$400(Lcom/android/settings/inputmethod/InputMethodPreference;)Lcom/android/settings/SettingsPreferenceFragment;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodPreference$4;->this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

    #getter for: Lcom/android/settings/inputmethod/InputMethodPreference;->mSettingsIntent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodPreference;->access$500(Lcom/android/settings/inputmethod/InputMethodPreference;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/SettingsPreferenceFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    move v2, v3

    .line 176
    :cond_2
    return v2

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodPreference$4;->this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

    #getter for: Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;
    invoke-static {v4}, Lcom/android/settings/inputmethod/InputMethodPreference;->access$400(Lcom/android/settings/inputmethod/InputMethodPreference;)Lcom/android/settings/SettingsPreferenceFragment;

    move-result-object v4

    const v5, 0x7f0907af

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/inputmethod/InputMethodPreference$4;->this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

    #getter for: Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v7}, Lcom/android/settings/inputmethod/InputMethodPreference;->access$200(Lcom/android/settings/inputmethod/InputMethodPreference;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/inputmethod/InputMethodPreference$4;->this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

    #getter for: Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;
    invoke-static {v8}, Lcom/android/settings/inputmethod/InputMethodPreference;->access$400(Lcom/android/settings/inputmethod/InputMethodPreference;)Lcom/android/settings/SettingsPreferenceFragment;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/SettingsPreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, msg:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference$4;->this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

    #getter for: Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;
    invoke-static {v2}, Lcom/android/settings/inputmethod/InputMethodPreference;->access$400(Lcom/android/settings/inputmethod/InputMethodPreference;)Lcom/android/settings/SettingsPreferenceFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
