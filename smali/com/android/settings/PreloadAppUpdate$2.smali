.class Lcom/android/settings/PreloadAppUpdate$2;
.super Ljava/lang/Object;
.source "PreloadAppUpdate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PreloadAppUpdate;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PreloadAppUpdate;


# direct methods
.method constructor <init>(Lcom/android/settings/PreloadAppUpdate;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings/PreloadAppUpdate$2;->this$0:Lcom/android/settings/PreloadAppUpdate;

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

    .line 85
    iget-object v0, p0, Lcom/android/settings/PreloadAppUpdate$2;->this$0:Lcom/android/settings/PreloadAppUpdate;

    const-string v1, "com.android.settings.wifi.WifiSettings"

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2, v3}, Lcom/android/settings/PreloadAppUpdate;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 86
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 87
    return-void
.end method
