.class Lcom/android/settings/LocationSettings$6;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LocationSettings;->showLocationTagAllowDialog(Landroid/preference/Preference;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LocationSettings;

.field final synthetic val$preference:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/android/settings/LocationSettings;Landroid/preference/Preference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 577
    iput-object p1, p0, Lcom/android/settings/LocationSettings$6;->this$0:Lcom/android/settings/LocationSettings;

    iput-object p2, p0, Lcom/android/settings/LocationSettings$6;->val$preference:Landroid/preference/Preference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 580
    const-string v0, "LocationSettings"

    const-string v1, "DIALOG CANCELLED"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v0, p0, Lcom/android/settings/LocationSettings$6;->this$0:Lcom/android/settings/LocationSettings;

    iget-object v1, p0, Lcom/android/settings/LocationSettings$6;->val$preference:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #calls: Lcom/android/settings/LocationSettings;->setTagCurrentLocation(Landroid/preference/Preference;Ljava/lang/Boolean;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/LocationSettings;->access$300(Lcom/android/settings/LocationSettings;Landroid/preference/Preference;Ljava/lang/Boolean;)V

    .line 582
    return-void
.end method
