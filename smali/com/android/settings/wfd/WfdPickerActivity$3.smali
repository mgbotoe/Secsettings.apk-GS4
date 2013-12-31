.class Lcom/android/settings/wfd/WfdPickerActivity$3;
.super Landroid/os/Handler;
.source "WfdPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WfdPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WfdPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 575
    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 577
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 580
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mCanShake:Z
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2902(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z

    .line 581
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3000(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3000(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mMotionListener:Landroid/hardware/motion/MRListener;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3100(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/hardware/motion/MRListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 584
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$600(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$600(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v0

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1300(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v0

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1300(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1300(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 588
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->scanDevice()V
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$100(Lcom/android/settings/wfd/WfdPickerActivity;)V

    .line 589
    :cond_2
    const/16 v0, 0x1e1

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/wfd/WfdPickerActivity$3;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 592
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mCanShake:Z
    invoke-static {v0, v3}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2902(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z

    .line 593
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3000(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3000(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mMotionListener:Landroid/hardware/motion/MRListener;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3100(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/hardware/motion/MRListener;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    goto :goto_0

    .line 578
    nop

    :pswitch_data_0
    .packed-switch 0x1e0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
