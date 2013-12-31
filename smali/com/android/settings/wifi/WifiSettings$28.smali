.class Lcom/android/settings/wifi/WifiSettings$28;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 3102
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 17
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 3104
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v12

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v12

    iget v12, v12, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v12

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v12, v13, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiVzwDialog;

    move-result-object v12

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiVzwDialog;

    move-result-object v12

    iget-boolean v12, v12, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    if-nez v12, :cond_5

    .line 3108
    const-string v12, "WifiSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MangeNetwork dialog bttn clicked: button = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_2

    .line 3115
    const-string v12, "WifiSettings"

    const-string v13, "COnnect button clicked  in manage network dialog"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v12

    const v13, 0x7fffffff

    if-ne v12, v13, :cond_1

    .line 3117
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 3354
    :cond_0
    :goto_0
    return-void

    .line 3119
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 3120
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$1200(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v14

    #calls: Lcom/android/settings/wifi/WifiSettings;->connectNetwork(ILandroid/net/wifi/WifiManager$ActionListener;)V
    invoke-static {v12, v13, v14}, Lcom/android/settings/wifi/WifiSettings;->access$1300(Lcom/android/settings/wifi/WifiSettings;ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 3122
    :cond_2
    const/4 v12, -0x3

    move/from16 v0, p2

    if-ne v0, v12, :cond_3

    .line 3123
    const-string v12, "WifiSettings"

    const-string v13, "Neutral edit  button clicked  in manage network dialog"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    const/4 v14, 0x1

    #calls: Lcom/android/settings/wifi/WifiSettings;->showNewDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/settings/wifi/WifiSettings;->access$2600(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 3125
    :cond_3
    const/4 v12, -0x2

    move/from16 v0, p2

    if-ne v0, v12, :cond_0

    .line 3126
    const-string v12, "WifiSettings"

    const-string v13, "Remove button clicked  in manage network dialog"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$800(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 3133
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 3134
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiSettings$Scanner;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 3136
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)V

    goto/16 :goto_0

    .line 3141
    :cond_5
    const/4 v12, -0x2

    move/from16 v0, p2

    if-ne v0, v12, :cond_7

    sget v12, Lcom/android/settings/wifi/WifiSettings;->forget_network:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiVzwDialog;

    move-result-object v12

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiVzwDialog;

    move-result-object v12

    iget-boolean v12, v12, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    if-nez v12, :cond_7

    .line 3143
    const-string v12, "WifiSettings"

    const-string v13, "negative forget button in connected network dialog in manage network dialog"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3144
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$800(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 3150
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 3151
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiSettings$Scanner;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 3153
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)V

    .line 3154
    const-string v12, " "

    sput-object v12, Lcom/android/settings/wifi/WifiVzwDialog;->ConnectedPassword:Ljava/lang/String;

    .line 3157
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v12

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v12

    iget v12, v12, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v12

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v12

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v12, v13, :cond_9

    const/4 v2, 0x1

    .line 3159
    .local v2, forgetable:Z
    :goto_1
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_a

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiVzwDialog;

    move-result-object v12

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiVzwDialog;

    move-result-object v12

    iget-boolean v12, v12, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    if-nez v12, :cond_a

    sget v12, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    if-nez v12, :cond_a

    .line 3161
    const-string v12, "WifiSettings"

    const-string v13, "forget button in connected network dialog in normal wifi settings"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    const-string v12, "WifiSettings"

    const-string v13, "button == WifiVzwDialog.BUTTON_FORGET"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$800(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 3169
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 3170
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiSettings$Scanner;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 3172
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)V

    .line 3173
    const-string v12, " "

    sput-object v12, Lcom/android/settings/wifi/WifiVzwDialog;->ConnectedPassword:Ljava/lang/String;

    goto/16 :goto_0

    .line 3157
    .end local v2           #forgetable:Z
    :cond_9
    const/4 v2, 0x0

    goto :goto_1

    .line 3175
    .restart local v2       #forgetable:Z
    :cond_a
    const/4 v12, -0x3

    move/from16 v0, p2

    if-ne v0, v12, :cond_b

    sget-boolean v12, Lcom/android/settings/wifi/WifiSettings;->vzwViewFlag:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_b

    .line 3176
    const-string v12, "WifiSettings"

    const-string v13, "button == WifiVzwDialog.BUTTON_VIEW"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3177
    const-string v12, "WifiSettings"

    const-string v13, "View button in connected netork dialog in normal wifi settings"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3178
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    #calls: Lcom/android/settings/wifi/WifiSettings;->showNewDialog(Lcom/android/settings/wifi/AccessPoint;ZZ)V
    invoke-static {v12, v13, v14, v15}, Lcom/android/settings/wifi/WifiSettings;->access$2800(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPoint;ZZ)V

    .line 3179
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/settings/wifi/WifiSettings;->vzwViewFlag:Z

    goto/16 :goto_0

    .line 3180
    :cond_b
    const/4 v12, -0x3

    move/from16 v0, p2

    if-eq v0, v12, :cond_c

    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_1f

    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiVzwDialog;

    move-result-object v12

    if-eqz v12, :cond_1f

    sget v12, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    if-nez v12, :cond_1f

    .line 3181
    const-string v12, "WifiSettings"

    const-string v13, "button == WifiVzwDialog.BUTTON_SUBMIT/BUTTON_CONNECT"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3183
    sget-object v10, Lcom/android/settings/wifi/WifiVzwDialog;->ConnectedPassword:Ljava/lang/String;

    .line 3184
    .local v10, previousPass:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiVzwDialog;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings/wifi/WifiVzwDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 3185
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    const-string v11, ""

    .line 3187
    .local v11, sChangedpassword:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiVzwDialog;

    move-result-object v12

    iget-object v12, v12, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    if-eqz v12, :cond_d

    .line 3188
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiVzwDialog;

    move-result-object v12

    iget-object v12, v12, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/android/settings/wifi/WifiVzwDialog;->changedssid:Ljava/lang/String;

    .line 3191
    :cond_d
    const/4 v7, 0x0

    .line 3192
    .local v7, nSsidSecuritySame:Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v12

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiVzwDialog;

    move-result-object v12

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiVzwDialog;

    move-result-object v12

    iget-object v12, v12, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    if-eqz v12, :cond_e

    .line 3193
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiVzwDialog;

    move-result-object v12

    iget-boolean v12, v12, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v12

    iget-object v12, v12, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_e

    .line 3194
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiVzwDialog;

    move-result-object v12

    iget v12, v12, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-ne v12, v13, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiVzwDialog;

    move-result-object v12

    iget-object v12, v12, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    iget-object v13, v13, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiVzwDialog;

    move-result-object v12

    iget-object v12, v12, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->length()I

    move-result v12

    if-nez v12, :cond_e

    .line 3197
    const-string v12, "WifiSettings"

    const-string v13, " nSsidSecuritySame is true"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3198
    const/4 v7, 0x1

    .line 3206
    :cond_e
    const/4 v5, 0x0

    .line 3207
    .local v5, mdmSecurityOrSSIDSame:Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v12

    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiVzwDialog;

    move-result-object v12

    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiVzwDialog;

    move-result-object v12

    iget-object v12, v12, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v12, v12, Lcom/android/settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v12, :cond_f

    .line 3209
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiVzwDialog;

    move-result-object v12

    iget-boolean v12, v12, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v12

    iget-object v12, v12, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_f

    .line 3210
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v12, v12, Lcom/android/settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    iget-object v13, v13, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiVzwDialog;

    move-result-object v12

    iget v12, v12, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-ne v12, v13, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiVzwDialog;

    move-result-object v12

    iget-object v12, v12, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    iget-object v13, v13, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 3214
    const-string v12, "WifiSettings"

    const-string v13, " mdmSecurityOrSSIDChanged is true"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3215
    const/4 v5, 0x1

    .line 3221
    :cond_f
    if-nez v1, :cond_10

    .line 3222
    const-string v12, "WifiSettings"

    const-string v13, " config null "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3223
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    #calls: Lcom/android/settings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    invoke-static {v12, v13}, Lcom/android/settings/wifi/WifiSettings;->access$2900(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 3224
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$1200(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v14

    #calls: Lcom/android/settings/wifi/WifiSettings;->connectNetwork(ILandroid/net/wifi/WifiManager$ActionListener;)V
    invoke-static {v12, v13, v14}, Lcom/android/settings/wifi/WifiSettings;->access$1300(Lcom/android/settings/wifi/WifiSettings;ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0

    .line 3226
    :cond_10
    iget v12, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1a

    .line 3227
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 3228
    const-string v12, "WifiSettings"

    const-string v13, " mSelectedAccessPoint != null"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3230
    if-nez v7, :cond_11

    if-nez v5, :cond_11

    .line 3231
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 3234
    :cond_11
    const/4 v12, -0x1

    move/from16 v0, p2

    if-eq v0, v12, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v12

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v12, v13, :cond_17

    .line 3235
    :cond_12
    const-string v12, "WifiSettings"

    const-string v13, " Uzzal EDIT--> CONNECT clicked."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3236
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    iget-boolean v12, v12, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v12, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 3237
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    invoke-static {v12, v1}, Lcom/android/settings/wifi/WifiSettings;->access$3000(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    .line 3240
    .local v3, found:Z
    if-nez v3, :cond_15

    if-nez v7, :cond_15

    if-nez v5, :cond_15

    .line 3243
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v9

    .line 3244
    .local v9, newNetId:I
    const-string v12, "WifiSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "saveNetwork():newNetId = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3245
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$3100(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v13

    invoke-virtual {v12, v1, v13}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 3246
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 3247
    const/4 v12, -0x1

    if-eq v9, v12, :cond_13

    .line 3248
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$1200(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v13

    #calls: Lcom/android/settings/wifi/WifiSettings;->connectNetwork(ILandroid/net/wifi/WifiManager$ActionListener;)V
    invoke-static {v12, v9, v13}, Lcom/android/settings/wifi/WifiSettings;->access$1300(Lcom/android/settings/wifi/WifiSettings;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 3269
    .end local v9           #newNetId:I
    :cond_13
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v12

    if-eqz v12, :cond_14

    .line 3270
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiSettings$Scanner;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 3272
    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)V

    goto/16 :goto_0

    .line 3252
    :cond_15
    const/4 v12, 0x1

    if-ne v5, v12, :cond_16

    .line 3253
    const/4 v12, 0x0

    iput-object v12, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3256
    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$3100(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v13

    invoke-virtual {v12, v1, v13}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 3257
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 3259
    const/4 v12, 0x1

    if-ne v5, v12, :cond_13

    .line 3260
    const-string v12, "WifiSettings"

    const-string v13, "Since the config has changed for mdm network, reconnect"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3262
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 3263
    iget v12, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_13

    .line 3264
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    iget v13, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$1200(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_2

    .line 3274
    .end local v3           #found:Z
    :cond_17
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const v13, 0x7f090332

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Lcom/android/settings/wifi/WifiSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 3275
    .local v6, messageRes:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v12

    iget-boolean v12, v12, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v12, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 3276
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    invoke-static {v12, v1}, Lcom/android/settings/wifi/WifiSettings;->access$3000(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    .line 3278
    .restart local v3       #found:Z
    if-nez v3, :cond_19

    .line 3279
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v9

    .line 3280
    .restart local v9       #newNetId:I
    const-string v12, "WifiSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "saveNetwork():newNetId = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", and enabled"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3281
    const/4 v12, -0x1

    if-ne v9, v12, :cond_18

    .line 3282
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v12}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const v13, 0x7f090333

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 3292
    .end local v9           #newNetId:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)V

    goto/16 :goto_0

    .line 3285
    .restart local v9       #newNetId:I
    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v12}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v12, v6, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 3286
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v9, v13}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 3287
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    goto :goto_3

    .line 3290
    .end local v9           #newNetId:I
    :cond_19
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v12}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v12, v6, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 3296
    .end local v3           #found:Z
    .end local v6           #messageRes:Ljava/lang/String;
    :cond_1a
    const-string v12, "WifiSettings"

    const-string v13, "new network"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3297
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->getNewNetworkId(Landroid/net/wifi/WifiConfiguration;)I
    invoke-static {v12, v1}, Lcom/android/settings/wifi/WifiSettings;->access$3200(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)I

    move-result v8

    .line 3298
    .local v8, networkId:I
    const/4 v12, -0x1

    if-ne v8, v12, :cond_1b

    .line 3299
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v12}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const v13, 0x7f090333

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 3302
    :cond_1b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v8, v13}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 3303
    iput v8, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 3304
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiVzwDialog;

    move-result-object v12

    iget-boolean v12, v12, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    if-nez v12, :cond_1c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    invoke-static {v12, v1}, Lcom/android/settings/wifi/WifiSettings;->access$2900(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 3305
    :cond_1c
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_1d

    .line 3306
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 3307
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)V

    .line 3308
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$1200(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v13

    #calls: Lcom/android/settings/wifi/WifiSettings;->connectNetwork(ILandroid/net/wifi/WifiManager$ActionListener;)V
    invoke-static {v12, v8, v13}, Lcom/android/settings/wifi/WifiSettings;->access$1300(Lcom/android/settings/wifi/WifiSettings;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 3310
    new-instance v4, Landroid/content/Intent;

    const-string v12, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3311
    .local v4, intent:Landroid/content/Intent;
    const-string v12, "wifi_state"

    const/4 v13, 0x3

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3312
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v13}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    #calls: Lcom/android/settings/wifi/WifiSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v12, v13, v4}, Lcom/android/settings/wifi/WifiSettings;->access$000(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Context;Landroid/content/Intent;)V

    .line 3313
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)V

    .line 3314
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v12, v13}, Lcom/android/settings/wifi/WifiSettings;->access$3300(Lcom/android/settings/wifi/WifiSettings;Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 3316
    .end local v4           #intent:Landroid/content/Intent;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const v13, 0x7f090332

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Lcom/android/settings/wifi/WifiSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 3317
    .restart local v6       #messageRes:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v12}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v12, v6, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 3318
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    goto/16 :goto_0

    .line 3321
    .end local v6           #messageRes:Ljava/lang/String;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$1200(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v13

    #calls: Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    invoke-static {v12, v1, v13}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 3322
    sget-object v12, Lcom/android/settings/wifi/WifiVzwDialog;->ConnectedPassword:Ljava/lang/String;

    sput-object v12, Lcom/android/settings/wifi/WifiVzwDialog;->ConnectedCorrectPassword:Ljava/lang/String;

    goto/16 :goto_0

    .line 3326
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v5           #mdmSecurityOrSSIDSame:Z
    .end local v7           #nSsidSecuritySame:Z
    .end local v8           #networkId:I
    .end local v10           #previousPass:Ljava/lang/String;
    .end local v11           #sChangedpassword:Ljava/lang/String;
    :cond_1f
    const/4 v12, -0x3

    move/from16 v0, p2

    if-ne v0, v12, :cond_21

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiVzwDialog;

    move-result-object v12

    if-eqz v12, :cond_21

    .line 3327
    const-string v12, "WifiSettings"

    const-string v13, "onClick() BUTTON_CONNECTED_EDIT neutral edit button in unconnected network dialog in manage networks"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3328
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiVzwDialog;

    move-result-object v12

    if-eqz v12, :cond_20

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiVzwDialog;

    move-result-object v12

    iget-object v12, v12, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    if-eqz v12, :cond_20

    .line 3329
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiVzwDialog;

    move-result-object v12

    iget-object v12, v12, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/android/settings/wifi/WifiVzwDialog;->ConnectedPassword:Ljava/lang/String;

    .line 3330
    const-string v12, "WifiSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "password is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/android/settings/wifi/WifiVzwDialog;->ConnectedPassword:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3333
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    const/4 v14, 0x1

    #calls: Lcom/android/settings/wifi/WifiSettings;->showNewDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/settings/wifi/WifiSettings;->access$2600(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPoint;Z)V

    .line 3334
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/settings/wifi/WifiSettings;->vzwEditFlag:Z

    .line 3335
    const/4 v12, 0x0

    sput v12, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    goto/16 :goto_0

    .line 3332
    :cond_20
    const-string v12, "WifiSettings"

    const-string v13, "   mVzwDialog.mPasswordView is null 1 "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3336
    :cond_21
    const/4 v12, -0x2

    move/from16 v0, p2

    if-ne v0, v12, :cond_23

    sget-boolean v12, Lcom/android/settings/wifi/WifiSettings;->vzwEditFlag:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_23

    .line 3337
    const-string v12, "WifiSettings"

    const-string v13, "button == WifiVzwDialog.BUTTON_EDIT"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3338
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiVzwDialog;

    move-result-object v12

    if-eqz v12, :cond_22

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiVzwDialog;

    move-result-object v12

    iget-object v12, v12, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    if-eqz v12, :cond_22

    .line 3339
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;
    invoke-static {v12}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiVzwDialog;

    move-result-object v12

    iget-object v12, v12, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/android/settings/wifi/WifiVzwDialog;->ConnectedPassword:Ljava/lang/String;

    .line 3340
    const-string v12, "WifiSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "password is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/android/settings/wifi/WifiVzwDialog;->ConnectedPassword:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3343
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    const/4 v14, 0x1

    #calls: Lcom/android/settings/wifi/WifiSettings;->showNewDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/settings/wifi/WifiSettings;->access$2600(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPoint;Z)V

    .line 3344
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/settings/wifi/WifiSettings;->vzwEditFlag:Z

    goto/16 :goto_0

    .line 3342
    :cond_22
    const-string v12, "WifiSettings"

    const-string v13, "  mVzwDialog.mPasswordView is null  "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 3345
    :cond_23
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_24

    sget v12, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_24

    .line 3346
    const-string v12, "WifiSettings"

    const-string v13, "button == WifiVzwDialog.BUTTON_EDIT NW"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3347
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    const/4 v14, 0x1

    #calls: Lcom/android/settings/wifi/WifiSettings;->showNewDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/settings/wifi/WifiSettings;->access$2600(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPoint;Z)V

    .line 3348
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/settings/wifi/WifiSettings;->vzwEditFlag:Z

    .line 3349
    const/4 v12, 0x0

    sput v12, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    goto/16 :goto_0

    .line 3351
    :cond_24
    const-string v12, "WifiSettings"

    const-string v13, "button == WifiVzwDialog.BUTTON_NEGATIVE"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3352
    const/4 v12, 0x0

    sput v12, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    goto/16 :goto_0
.end method
