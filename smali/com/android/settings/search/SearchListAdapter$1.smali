.class Lcom/android/settings/search/SearchListAdapter$1;
.super Ljava/lang/Object;
.source "SearchListAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/SearchListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/search/SearchListAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/search/SearchListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/settings/search/SearchListAdapter$1;->this$0:Lcom/android/settings/search/SearchListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "cmpButton"
    .parameter "value"

    .prologue
    .line 271
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v2

    .line 272
    .local v2, position:I
    iget-object v4, p0, Lcom/android/settings/search/SearchListAdapter$1;->this$0:Lcom/android/settings/search/SearchListAdapter;

    invoke-virtual {v4, v2}, Lcom/android/settings/search/SearchListAdapter;->getItem(I)Lcom/android/settings/search/SearchItem;

    move-result-object v4

    iget v3, v4, Lcom/android/settings/search/SearchItem;->rowId:I

    .line 273
    .local v3, rowId:I
    iget-object v4, p0, Lcom/android/settings/search/SearchListAdapter$1;->this$0:Lcom/android/settings/search/SearchListAdapter;

    invoke-virtual {v4, v2}, Lcom/android/settings/search/SearchListAdapter;->getItem(I)Lcom/android/settings/search/SearchItem;

    move-result-object v4

    iget-object v1, v4, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    .line 275
    .local v1, keyName:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.settings.REQUEST_FINDO_SEARCH_CHANGE_SETTING_VALUE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "rowId"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    const-string v4, "keyName"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v4, "value"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 279
    iget-object v4, p0, Lcom/android/settings/search/SearchListAdapter$1;->this$0:Lcom/android/settings/search/SearchListAdapter;

    #getter for: Lcom/android/settings/search/SearchListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/search/SearchListAdapter;->access$000(Lcom/android/settings/search/SearchListAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 280
    return-void
.end method
