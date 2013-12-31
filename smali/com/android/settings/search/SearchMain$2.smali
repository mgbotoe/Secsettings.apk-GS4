.class Lcom/android/settings/search/SearchMain$2;
.super Ljava/lang/Object;
.source "SearchMain.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/SearchMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/search/SearchMain;


# direct methods
.method constructor <init>(Lcom/android/settings/search/SearchMain;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/settings/search/SearchMain$2;->this$0:Lcom/android/settings/search/SearchMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "view"
    .parameter "action"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 183
    const/16 v3, 0x42

    if-ne p2, v3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 184
    iget-object v3, p0, Lcom/android/settings/search/SearchMain$2;->this$0:Lcom/android/settings/search/SearchMain;

    #getter for: Lcom/android/settings/search/SearchMain;->mSearchListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/settings/search/SearchMain;->access$700(Lcom/android/settings/search/SearchMain;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v1

    .line 185
    .local v1, position:I
    invoke-static {}, Lcom/android/settings/search/SearchMain;->access$800()Lcom/android/settings/search/SearchListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/search/SearchListAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    if-nez v1, :cond_1

    .line 196
    .end local v1           #position:I
    :cond_0
    :goto_0
    return v4

    .line 188
    .restart local v1       #position:I
    :cond_1
    invoke-static {}, Lcom/android/settings/search/SearchMain;->access$800()Lcom/android/settings/search/SearchListAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/settings/search/SearchListAdapter;->getItem(I)Lcom/android/settings/search/SearchItem;

    move-result-object v3

    iget v2, v3, Lcom/android/settings/search/SearchItem;->rowId:I

    .line 190
    .local v2, rowId:I
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.settings.REQUEST_FINDO_SEARCH_CALL_SETTING_MENU"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "rowId"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    invoke-static {}, Lcom/android/settings/search/SearchMain;->access$200()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
