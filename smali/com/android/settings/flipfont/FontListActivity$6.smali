.class Lcom/android/settings/flipfont/FontListActivity$6;
.super Ljava/lang/Object;
.source "FontListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/flipfont/FontListActivity;->selectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/flipfont/FontListActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/flipfont/FontListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListActivity$6;->this$0:Lcom/android/settings/flipfont/FontListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListActivity$6;->this$0:Lcom/android/settings/flipfont/FontListActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/flipfont/FontListActivity;->mSelectDialogIsActive:Z
    invoke-static {v0, v1}, Lcom/android/settings/flipfont/FontListActivity;->access$002(Lcom/android/settings/flipfont/FontListActivity;Z)Z

    .line 432
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListActivity$6;->this$0:Lcom/android/settings/flipfont/FontListActivity;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListActivity;->savePreferences()V

    .line 433
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListActivity$6;->this$0:Lcom/android/settings/flipfont/FontListActivity;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListActivity;->onCancelButtonPressed()V

    .line 434
    return-void
.end method
