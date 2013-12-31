.class Lcom/android/settings/wfd/WfdPickerActivity$29$1;
.super Landroid/os/CountDownTimer;
.source "WfdPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WfdPickerActivity$29;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wfd/WfdPickerActivity$29;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WfdPickerActivity$29;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3059
    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity$29$1;->this$1:Lcom/android/settings/wfd/WfdPickerActivity$29;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 3064
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$29$1;->this$1:Lcom/android/settings/wfd/WfdPickerActivity$29;

    iget-object v0, v0, Lcom/android/settings/wfd/WfdPickerActivity$29;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1202(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z

    .line 3065
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .parameter "millisUntilFinished"

    .prologue
    .line 3062
    return-void
.end method
