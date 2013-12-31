.class Lcom/android/settings/wifi/WifiPoorConnection$3;
.super Ljava/lang/Object;
.source "WifiPoorConnection.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiPoorConnection;->showPoorConnectionDiag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiPoorConnection;

.field final synthetic val$mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiPoorConnection;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/settings/wifi/WifiPoorConnection$3;->this$0:Lcom/android/settings/wifi/WifiPoorConnection;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiPoorConnection$3;->val$mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPoorConnection$3;->val$mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    invoke-static {}, Lcom/android/settings/wifi/WifiPoorConnection;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiPoorConnection"

    const-string v1, "CANCEL BUTTON - CHECKBOX CHECKED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPoorConnection$3;->this$0:Lcom/android/settings/wifi/WifiPoorConnection;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiPoorConnection;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_poor_connection_warning"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 93
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPoorConnection$3;->this$0:Lcom/android/settings/wifi/WifiPoorConnection;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiPoorConnection;->finish()V

    .line 94
    return-void

    .line 91
    :cond_2
    invoke-static {}, Lcom/android/settings/wifi/WifiPoorConnection;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WifiPoorConnection"

    const-string v1, "CANCEL BUTTON - CHECKBOX UNCHECKED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
