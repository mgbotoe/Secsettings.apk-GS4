.class Lcom/android/settings/DockSettings$4;
.super Ljava/lang/Object;
.source "DockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DockSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DockSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 448
    iput-object p1, p0, Lcom/android/settings/DockSettings$4;->this$0:Lcom/android/settings/DockSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/settings/DockSettings$4;->this$0:Lcom/android/settings/DockSettings;

    #getter for: Lcom/android/settings/DockSettings;->mDeskHomeScreen:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/DockSettings;->access$300(Lcom/android/settings/DockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 451
    return-void
.end method
