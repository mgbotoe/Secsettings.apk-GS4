.class Lcom/android/settings/search/SearchMain$3;
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
    .line 200
    iput-object p1, p0, Lcom/android/settings/search/SearchMain$3;->this$0:Lcom/android/settings/search/SearchMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "action"
    .parameter "event"

    .prologue
    .line 203
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/settings/search/SearchMain$3;->this$0:Lcom/android/settings/search/SearchMain;

    #getter for: Lcom/android/settings/search/SearchMain;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/android/settings/search/SearchMain;->access$900(Lcom/android/settings/search/SearchMain;)Landroid/widget/SearchView;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 206
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
