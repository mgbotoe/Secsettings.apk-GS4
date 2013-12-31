.class Lcom/android/settings/wfd/WfdPickerActivity$8;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 1590
    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity$8;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x0

    .line 1593
    const-string v1, "WfdPickerActivity"

    const-string v2, "createWfdTerminateDialog ok is clicked.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$8;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3500(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1596
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$8;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v2, 0x2

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V
    invoke-static {v1, v2}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3600(Lcom/android/settings/wfd/WfdPickerActivity;I)V

    .line 1597
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$8;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$000(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1598
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$8;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v1}, Lcom/android/settings/wfd/WfdPickerDialog;->changeToScan()V

    .line 1599
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$8;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3700(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1603
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$8;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$600(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    .line 1605
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$8;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1606
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$8;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3800(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1608
    return-void
.end method
