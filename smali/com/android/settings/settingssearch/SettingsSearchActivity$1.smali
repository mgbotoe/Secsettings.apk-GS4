.class Lcom/android/settings/settingssearch/SettingsSearchActivity$1;
.super Ljava/lang/Object;
.source "SettingsSearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/settingssearch/SettingsSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/settingssearch/SettingsSearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$1;->this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 282
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 287
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 291
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, keyword:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$1;->this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;

    #getter for: Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchResultAdapter:Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;
    invoke-static {v1}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$000(Lcom/android/settings/settingssearch/SettingsSearchActivity;)Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;->clear()V

    .line 294
    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$1;->this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;

    #getter for: Lcom/android/settings/settingssearch/SettingsSearchActivity;->mSearchResultAdapter:Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;
    invoke-static {v1}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$000(Lcom/android/settings/settingssearch/SettingsSearchActivity;)Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/settings/settingssearch/SettingsSearchActivity$SearchResultAdapter;->setKeyword(Ljava/lang/String;)V

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchActivity$1;->this$0:Lcom/android/settings/settingssearch/SettingsSearchActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/settings/settingssearch/SettingsSearchActivity;->search(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/settings/settingssearch/SettingsSearchActivity;->access$100(Lcom/android/settings/settingssearch/SettingsSearchActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
