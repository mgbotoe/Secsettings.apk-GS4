.class Lcom/android/settings/wfd/WfdHelpActivity$4;
.super Ljava/lang/Object;
.source "WfdHelpActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WfdHelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WfdHelpActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WfdHelpActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/settings/wfd/WfdHelpActivity$4;->this$0:Lcom/android/settings/wfd/WfdHelpActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings/wfd/WfdHelpActivity$4;->this$0:Lcom/android/settings/wfd/WfdHelpActivity;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdHelpActivity;->finish()V

    .line 180
    return-void
.end method
