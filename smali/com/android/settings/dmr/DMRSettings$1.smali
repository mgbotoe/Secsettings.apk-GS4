.class Lcom/android/settings/dmr/DMRSettings$1;
.super Ljava/lang/Object;
.source "DMRSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dmr/DMRSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dmr/DMRSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/dmr/DMRSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 887
    iput-object p1, p0, Lcom/android/settings/dmr/DMRSettings$1;->this$0:Lcom/android/settings/dmr/DMRSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 891
    iget-object v1, p0, Lcom/android/settings/dmr/DMRSettings$1;->this$0:Lcom/android/settings/dmr/DMRSettings;

    invoke-static {p2}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    .line 892
    const-string v1, "Settings"

    const-string v2, "ServiceConnection"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget-object v1, p0, Lcom/android/settings/dmr/DMRSettings$1;->this$0:Lcom/android/settings/dmr/DMRSettings;

    iget-object v1, v1, Lcom/android/settings/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    if-nez v1, :cond_0

    .line 895
    const-string v1, "Settings"

    const-string v2, "mIMediaServer == null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :goto_0
    return-void

    .line 901
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dmr/DMRSettings$1;->this$0:Lcom/android/settings/dmr/DMRSettings;

    invoke-virtual {v1}, Lcom/android/settings/dmr/DMRSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 904
    iget-object v1, p0, Lcom/android/settings/dmr/DMRSettings$1;->this$0:Lcom/android/settings/dmr/DMRSettings;

    invoke-virtual {v1}, Lcom/android/settings/dmr/DMRSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 905
    .local v0, currentPreference:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    iget-object v1, p0, Lcom/android/settings/dmr/DMRSettings$1;->this$0:Lcom/android/settings/dmr/DMRSettings;

    iget-object v2, p0, Lcom/android/settings/dmr/DMRSettings$1;->this$0:Lcom/android/settings/dmr/DMRSettings;

    invoke-virtual {v2}, Lcom/android/settings/dmr/DMRSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    #calls: Lcom/android/settings/dmr/DMRSettings;->registerPreferenceChangeListener(Landroid/preference/PreferenceGroup;Ljava/util/Map;)V
    invoke-static {v1, v2, v0}, Lcom/android/settings/dmr/DMRSettings;->access$000(Lcom/android/settings/dmr/DMRSettings;Landroid/preference/PreferenceGroup;Ljava/util/Map;)V

    .line 907
    iget-object v1, p0, Lcom/android/settings/dmr/DMRSettings$1;->this$0:Lcom/android/settings/dmr/DMRSettings;

    #calls: Lcom/android/settings/dmr/DMRSettings;->refreshPreferenceValues()V
    invoke-static {v1}, Lcom/android/settings/dmr/DMRSettings;->access$100(Lcom/android/settings/dmr/DMRSettings;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/settings/dmr/DMRSettings$1;->this$0:Lcom/android/settings/dmr/DMRSettings;

    invoke-virtual {v0}, Lcom/android/settings/dmr/DMRSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 915
    iget-object v0, p0, Lcom/android/settings/dmr/DMRSettings$1;->this$0:Lcom/android/settings/dmr/DMRSettings;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    .line 916
    return-void
.end method
