.class Lcom/android/settings/wifi/WifiTimer$1;
.super Ljava/lang/Object;
.source "WifiTimer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiTimer;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiTimer;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiTimer;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/settings/wifi/WifiTimer$1;->this$0:Lcom/android/settings/wifi/WifiTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimer$1;->this$0:Lcom/android/settings/wifi/WifiTimer;

    #getter for: Lcom/android/settings/wifi/WifiTimer;->mStartTimeCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiTimer;->access$000(Lcom/android/settings/wifi/WifiTimer;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimer$1;->this$0:Lcom/android/settings/wifi/WifiTimer;

    #calls: Lcom/android/settings/wifi/WifiTimer;->hideKeypad()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiTimer;->access$100(Lcom/android/settings/wifi/WifiTimer;)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimer$1;->this$0:Lcom/android/settings/wifi/WifiTimer;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiTimer;->mStartTimePickerView:Landroid/widget/TimePicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setEnabled(Z)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimer$1;->this$0:Lcom/android/settings/wifi/WifiTimer;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiTimer;->mStartTimePickerView:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->clearFocus()V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimer$1;->this$0:Lcom/android/settings/wifi/WifiTimer;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiTimer;->mStartTimePickerView:Landroid/widget/TimePicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setEnabled(Z)V

    goto :goto_0
.end method
