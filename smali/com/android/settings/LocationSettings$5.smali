.class Lcom/android/settings/LocationSettings$5;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LocationSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LocationSettings;

.field final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/settings/LocationSettings;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lcom/android/settings/LocationSettings$5;->this$0:Lcom/android/settings/LocationSettings;

    iput-object p2, p0, Lcom/android/settings/LocationSettings$5;->val$cr:Landroid/content/ContentResolver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x1

    .line 501
    iget-object v0, p0, Lcom/android/settings/LocationSettings$5;->val$cr:Landroid/content/ContentResolver;

    const-string v1, "assisted_gps_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 502
    iget-object v0, p0, Lcom/android/settings/LocationSettings$5;->val$cr:Landroid/content/ContentResolver;

    const-string v1, "assisted_gps_enabled_older"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 503
    iget-object v0, p0, Lcom/android/settings/LocationSettings$5;->this$0:Lcom/android/settings/LocationSettings;

    #getter for: Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/LocationSettings;->access$200(Lcom/android/settings/LocationSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 504
    return-void
.end method
