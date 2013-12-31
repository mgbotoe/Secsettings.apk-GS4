.class Lcom/android/settings/wfd/WfdPickerActivity$5;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WfdPickerActivity;->setWfdEnabled()V
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
    .line 695
    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity$5;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$5;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$000(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$5;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->finish()V

    .line 704
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$5;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3200(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/android/settings/wfd/WfdSwitchEnabler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$5;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3200(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/android/settings/wfd/WfdSwitchEnabler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdSwitchEnabler;->resume()V

    goto :goto_0
.end method
