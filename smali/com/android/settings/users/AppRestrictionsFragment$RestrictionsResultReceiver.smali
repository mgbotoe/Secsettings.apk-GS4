.class Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/AppRestrictionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestrictionsResultReceiver"
.end annotation


# instance fields
.field packageName:Ljava/lang/String;

.field preference:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

.field final synthetic this$0:Lcom/android/settings/users/AppRestrictionsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment;Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V
    .locals 0
    .parameter
    .parameter "packageName"
    .parameter "preference"

    .prologue
    .line 918
    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    .line 919
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 920
    iput-object p2, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->packageName:Ljava/lang/String;

    .line 921
    iput-object p3, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->preference:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 922
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 926
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v4

    .line 927
    .local v4, results:Landroid/os/Bundle;
    const-string v5, "android.intent.extra.restrictions_list"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 929
    .local v2, restrictions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    const-string v5, "android.intent.extra.restrictions_intent"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 930
    .local v3, restrictionsIntent:Landroid/content/Intent;
    if-eqz v2, :cond_1

    if-nez v3, :cond_1

    .line 931
    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    iget-object v6, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->preference:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    iget-object v7, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->packageName:Ljava/lang/String;

    #calls: Lcom/android/settings/users/AppRestrictionsFragment;->onRestrictionsReceived(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/lang/String;Ljava/util/ArrayList;)V
    invoke-static {v5, v6, v7, v2}, Lcom/android/settings/users/AppRestrictionsFragment;->access$1000(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 932
    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    #getter for: Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;
    invoke-static {v5}, Lcom/android/settings/users/AppRestrictionsFragment;->access$1200(Lcom/android/settings/users/AppRestrictionsFragment;)Landroid/os/UserManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/users/RestrictionUtils;->restrictionsToBundle(Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    #getter for: Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;
    invoke-static {v8}, Lcom/android/settings/users/AppRestrictionsFragment;->access$1100(Lcom/android/settings/users/AppRestrictionsFragment;)Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 958
    :cond_0
    :goto_0
    return-void

    .line 934
    :cond_1
    if-eqz v3, :cond_0

    .line 935
    move-object v0, v3

    .line 936
    .local v0, customIntent:Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 937
    const-string v5, "android.intent.extra.restrictions_bundle"

    invoke-static {v2}, Lcom/android/settings/users/RestrictionUtils;->restrictionsToBundle(Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 940
    :cond_2
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 941
    .local v1, p:Landroid/preference/Preference;
    const v5, 0x7f090b27

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 942
    new-instance v5, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver$1;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver$1;-><init>(Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;Landroid/content/Intent;)V

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 952
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 953
    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->preference:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-virtual {v5}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getOrder()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setOrder(I)V

    .line 954
    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->preference:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    iget-object v5, v5, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->childPreferences:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 955
    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    #getter for: Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;
    invoke-static {v5}, Lcom/android/settings/users/AppRestrictionsFragment;->access$1400(Lcom/android/settings/users/AppRestrictionsFragment;)Landroid/preference/PreferenceGroup;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 956
    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->preference:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-virtual {v5, v2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setRestrictions(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
