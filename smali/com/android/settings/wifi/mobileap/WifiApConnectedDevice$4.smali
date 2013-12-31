.class Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$4;
.super Ljava/lang/Object;
.source "WifiApConnectedDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

.field final synthetic val$msgId:I


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    iput p2, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$4;->val$msgId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 275
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->access$200(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "#ff"

    const-string v6, "#"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, color:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->access$200(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$4;->val$msgId:I

    new-array v6, v10, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<font color="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->access$300(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</font>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, toastMsg:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$4;->this$0:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->access$200(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-static {v4, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 280
    .local v1, toast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x102000b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 281
    .local v3, tv:Landroid/widget/TextView;
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 282
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 283
    return-void
.end method
