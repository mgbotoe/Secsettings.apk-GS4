.class Lcom/android/settings/AirViewSettings$4;
.super Ljava/lang/Object;
.source "AirViewSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirViewSettings;->showAllOptionDisabledDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirViewSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AirViewSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/settings/AirViewSettings$4;->this$0:Lcom/android/settings/AirViewSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/settings/AirViewSettings$4;->this$0:Lcom/android/settings/AirViewSettings;

    #getter for: Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/AirViewSettings;->access$300(Lcom/android/settings/AirViewSettings;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_ON:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    .line 444
    iget-object v0, p0, Lcom/android/settings/AirViewSettings$4;->this$0:Lcom/android/settings/AirViewSettings;

    #calls: Lcom/android/settings/AirViewSettings;->updateMenuEnableState()V
    invoke-static {v0}, Lcom/android/settings/AirViewSettings;->access$500(Lcom/android/settings/AirViewSettings;)V

    .line 445
    return-void
.end method
