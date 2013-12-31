.class public Lcom/android/settings/search/SearchActivity;
.super Landroid/app/Activity;
.source "SearchActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/android/settings/search/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 21
    invoke-virtual {p0}, Lcom/android/settings/search/SearchActivity;->finish()V

    .line 22
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 28
    const-string v4, "android.settings.REQUEST_FINDO_SEARCH_CALL_SETTING_MENU"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 29
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, mintentdata:Ljava/lang/String;
    const-string v4, "content://com.sec.providers.settingsearch/searchinfo/rowid/"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 32
    .local v3, rowId:I
    new-instance v1, Lcom/android/settings/search/SettingSearchManager;

    invoke-direct {v1, p0}, Lcom/android/settings/search/SettingSearchManager;-><init>(Landroid/content/Context;)V

    .line 33
    .local v1, mSearchManger:Lcom/android/settings/search/SettingSearchManager;
    invoke-virtual {v1, v3}, Lcom/android/settings/search/SettingSearchManager;->getPreInfo(I)Lcom/android/settings/search/SearchItem;

    move-result-object v0

    .line 34
    .local v0, item:Lcom/android/settings/search/SearchItem;
    invoke-static {v0, p0}, Lcom/android/settings/search/SettingsSearchUtils;->callMenu(Lcom/android/settings/search/SearchItem;Landroid/content/Context;)Z

    .line 37
    .end local v0           #item:Lcom/android/settings/search/SearchItem;
    .end local v1           #mSearchManger:Lcom/android/settings/search/SettingSearchManager;
    .end local v2           #mintentdata:Ljava/lang/String;
    .end local v3           #rowId:I
    :cond_0
    return-void
.end method
