.class Lcom/android/settings/wifi/WifiApDialog$4;
.super Ljava/lang/Object;
.source "WifiApDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiApDialog;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 939
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApDialog$4;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog$4;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    #calls: Lcom/android/settings/wifi/WifiApDialog;->restartFocusedViewInput()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApDialog;->access$1900(Lcom/android/settings/wifi/WifiApDialog;)V

    .line 942
    return-void
.end method
