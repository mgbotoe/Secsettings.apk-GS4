.class public Lcom/android/settings/search/SettingsSearchUtils;
.super Ljava/lang/Object;
.source "SettingsSearchUtils.java"


# static fields
.field private static mMenuInfoItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SearchItem$MenuInfoItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mContext:Landroid/content/Context;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 133
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    .line 135
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 136
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 137
    invoke-direct {p0}, Lcom/android/settings/search/SettingsSearchUtils;->initMenuTable()V

    .line 138
    invoke-direct {p0}, Lcom/android/settings/search/SettingsSearchUtils;->additionalIncludeMenu()Z

    .line 139
    invoke-direct {p0}, Lcom/android/settings/search/SettingsSearchUtils;->additionaRemoveMenu()Z

    .line 140
    invoke-direct {p0}, Lcom/android/settings/search/SettingsSearchUtils;->loadMenufromCSCXml()V

    .line 141
    return-void
.end method

.method private additionaRemoveMenu()Z
    .locals 13

    .prologue
    const v12, 0x7f070024

    const v11, 0x7f0700a9

    const/4 v4, 0x0

    const v10, 0x7f0b0580

    const/4 v3, 0x1

    .line 1401
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1402
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 1403
    array-length v1, v1

    if-eqz v1, :cond_5

    move v2, v3

    .line 1406
    :goto_0
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 1407
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 1408
    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 1410
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-direct {v5, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move v1, v4

    .line 1412
    :goto_1
    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_b

    .line 1414
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sec.android.app.safetyassurance"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1423
    :cond_0
    :goto_2
    :try_start_1
    iget-object v6, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sec.android.app.kieswifi"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1431
    :cond_1
    :goto_3
    const-string v6, "jjh"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bluetoothAvailable: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    if-nez v2, :cond_2

    .line 1433
    const-string v6, "enable_bluetooth_tethering"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v11, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/android/settings/search/SettingsSearchUtils;->compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1436
    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1440
    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_6

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "ATT"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1469
    :cond_3
    :goto_4
    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isSignatureLockInstalled()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1470
    const-string v6, "unlock_set_signature"

    const v7, 0x7f070092

    const/4 v8, 0x2

    const-string v9, "unlock_set_or_change"

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/android/settings/search/SettingsSearchUtils;->compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1473
    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1412
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_5
    move v2, v4

    .line 1403
    goto/16 :goto_0

    .line 1416
    :catch_0
    move-exception v6

    .line 1417
    const-string v6, "Safety assistance"

    const v7, 0x7f070046

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v4, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/android/settings/search/SettingsSearchUtils;->compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1419
    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1425
    :catch_1
    move-exception v6

    .line 1426
    const v6, 0x7f0b0592

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Connections"

    invoke-direct {p0, v6, v12, v4, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/android/settings/search/SettingsSearchUtils;->compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1428
    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1442
    :cond_6
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Connections"

    invoke-direct {p0, v6, v12, v4, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/android/settings/search/SettingsSearchUtils;->compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1445
    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1446
    :cond_7
    const-string v6, "enable_switch_wifi_ap"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v11, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/android/settings/search/SettingsSearchUtils;->compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1449
    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1451
    :cond_8
    const-string v6, "usb_tether_settings"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v11, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/android/settings/search/SettingsSearchUtils;->compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1454
    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1456
    :cond_9
    const-string v6, "enable_bluetooth_tethering"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v11, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/android/settings/search/SettingsSearchUtils;->compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1459
    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1461
    :cond_a
    const-string v6, "tethering_help"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v11, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/android/settings/search/SettingsSearchUtils;->compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1464
    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    .line 1478
    :cond_b
    return v3
.end method

.method private additionalIncludeMenu()Z
    .locals 1

    .prologue
    .line 1396
    const/4 v0, 0x1

    return v0
.end method

.method public static callMenu(Lcom/android/settings/search/SearchItem;Landroid/content/Context;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const-wide/32 v0, 0x7f0b05a2

    const-wide/32 v2, 0x7f0b059d

    const/4 v9, 0x1

    .line 1738
    .line 1740
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0020

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 1744
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1745
    if-eqz v4, :cond_1

    .line 1746
    const-string v4, "com.android.settings"

    const-string v6, "com.android.settings.Settings"

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1750
    :goto_0
    const v4, 0x10008000

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1752
    invoke-static {p0, p1}, Lcom/android/settings/search/SettingsSearchUtils;->getParentType(Lcom/android/settings/search/SearchItem;Landroid/content/Context;)I

    move-result v4

    .line 1754
    if-nez v4, :cond_4

    .line 1755
    iget-object v6, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/search/SettingsSearchUtils;->getHeadTabIndex(Ljava/lang/String;)I

    move-result v6

    .line 1757
    const-string v7, "Safety assistance"

    iget-object v8, p0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1765
    :goto_1
    const-string v2, "extra_from_search"

    invoke-virtual {v5, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1766
    const-string v2, "extra_parent_type"

    invoke-virtual {v5, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1767
    const-string v2, "extra_tab_id"

    invoke-virtual {v5, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1768
    const-string v2, "extra_header_id"

    invoke-virtual {v5, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1769
    const-string v0, "extra_setting_value"

    iget v1, p0, Lcom/android/settings/search/SearchItem;->value:I

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1771
    invoke-virtual {p1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1852
    :cond_0
    :goto_2
    return v9

    .line 1748
    :cond_1
    const-string v4, "com.android.settings"

    const-string v6, "com.android.settings.SettingsTabActivity"

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1759
    :cond_2
    const-string v0, "Call settings"

    iget-object v1, p0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-wide v0, v2

    .line 1760
    goto :goto_1

    .line 1762
    :cond_3
    new-instance v0, Ljava/lang/Long;

    iget-object v1, p0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    .line 1772
    :cond_4
    if-ne v4, v9, :cond_9

    .line 1775
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1776
    iget-object v7, p0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1778
    const-string v7, "Safety assistance"

    iget-object v8, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1786
    :goto_3
    new-instance v2, Lcom/android/settings/search/SettingSearchManager;

    invoke-direct {v2, p1}, Lcom/android/settings/search/SettingSearchManager;-><init>(Landroid/content/Context;)V

    .line 1787
    iget-object v3, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/search/SettingSearchManager;->getPreInfo(Ljava/lang/String;)Lcom/android/settings/search/SearchItem;

    move-result-object v2

    .line 1788
    iget-object v2, v2, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/search/SettingsSearchUtils;->getHeadTabIndex(Ljava/lang/String;)I

    move-result v2

    .line 1790
    const-string v3, "extra_from_search"

    invoke-virtual {v5, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1791
    const-string v3, "extra_parent_type"

    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1792
    const-string v3, "extra_tab_id"

    invoke-virtual {v5, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1793
    const-string v2, "extra_header_id"

    invoke-virtual {v5, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1795
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1797
    const-string v3, "extra_parent_preference_key"

    iget-object v4, p0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    const-string v3, "extra_setting_value"

    iget v4, p0, Lcom/android/settings/search/SearchItem;->value:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1799
    const-string v3, "extra_link_key_array"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1800
    const-wide/32 v3, 0x7f0b05c5

    cmp-long v3, v0, v3

    if-eqz v3, :cond_5

    const-wide/32 v3, 0x7f0b05c1

    cmp-long v0, v0, v3

    if-nez v0, :cond_8

    .line 1802
    :cond_5
    const-string v0, "extra_second_fragment_bundle_key"

    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1807
    :goto_4
    invoke-virtual {p1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 1780
    :cond_6
    const-string v0, "Call settings"

    iget-object v1, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-wide v0, v2

    .line 1781
    goto :goto_3

    .line 1783
    :cond_7
    new-instance v0, Ljava/lang/Long;

    iget-object v1, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_3

    .line 1804
    :cond_8
    const-string v0, "extra_fragment_bundle_key"

    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_4

    .line 1808
    :cond_9
    const/4 v0, 0x2

    if-ne v4, v0, :cond_0

    .line 1813
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1814
    iget-object v0, p0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1816
    new-instance v6, Lcom/android/settings/search/SettingSearchManager;

    invoke-direct {v6, p1}, Lcom/android/settings/search/SettingSearchManager;-><init>(Landroid/content/Context;)V

    .line 1817
    iget-object v0, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/settings/search/SettingSearchManager;->getPreInfo(Ljava/lang/String;)Lcom/android/settings/search/SearchItem;

    move-result-object v0

    .line 1818
    :goto_5
    invoke-static {v0, p1}, Lcom/android/settings/search/SettingsSearchUtils;->getParentType(Lcom/android/settings/search/SearchItem;Landroid/content/Context;)I

    move-result v7

    if-eqz v7, :cond_a

    .line 1819
    iget-object v7, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1820
    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/settings/search/SettingSearchManager;->getPreInfo(Ljava/lang/String;)Lcom/android/settings/search/SearchItem;

    move-result-object v0

    goto :goto_5

    .line 1823
    :cond_a
    const-string v6, "Call settings"

    iget-object v7, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1829
    :goto_6
    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/search/SettingsSearchUtils;->getHeadTabIndex(Ljava/lang/String;)I

    move-result v0

    .line 1831
    const-string v6, "extra_from_search"

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1832
    const-string v6, "extra_parent_type"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1833
    const-string v4, "extra_tab_id"

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1834
    const-string v0, "extra_header_id"

    invoke-virtual {v5, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1836
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1837
    const-string v2, "extra_parent_preference_key"

    iget-object v3, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    const-string v2, "extra_link_key_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1839
    const-string v2, "extra_fragment_bundle_key"

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1841
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1842
    const-string v2, "extra_parent_preference_key"

    iget-object v3, p0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1843
    const-string v2, "extra_setting_value"

    iget v3, p0, Lcom/android/settings/search/SearchItem;->value:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1844
    const-string v2, "extra_link_key_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1845
    const-string v1, "extra_second_fragment_bundle_key"

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1847
    invoke-virtual {p1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1848
    const-string v0, "SettingsSearchUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PARENT_TYPE_PREFERENCE, parent key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1826
    :cond_b
    new-instance v2, Ljava/lang/Long;

    iget-object v3, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto/16 :goto_6
.end method

.method private compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1611
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    .line 1612
    iget-object v1, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->id_key:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/settings/search/SearchItem$MenuInfoItem;->id_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->fileId:I

    iget v2, p2, Lcom/android/settings/search/SearchItem$MenuInfoItem;->fileId:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->parentType:I

    iget v2, p2, Lcom/android/settings/search/SearchItem$MenuInfoItem;->parentType:I

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->parentKey:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/settings/search/SearchItem$MenuInfoItem;->parentKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1616
    const-string v0, "SettingsSearchUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this menu is removed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    const/4 v0, 0x1

    .line 1620
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getHeadTabIndex(Ljava/lang/String;)I
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1888
    .line 1889
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1890
    const-string v4, "Connections"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1911
    :cond_0
    :goto_0
    return v0

    .line 1892
    :cond_1
    const-string v4, "Device"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    .line 1893
    goto :goto_0

    .line 1894
    :cond_2
    const-string v1, "Controls"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v2

    .line 1895
    goto :goto_0

    .line 1896
    :cond_3
    const-string v1, "General"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v3

    .line 1897
    goto :goto_0

    .line 1900
    :cond_4
    const-string v4, "Connections"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1902
    const-string v4, "My device"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v1

    .line 1903
    goto :goto_0

    .line 1904
    :cond_5
    const-string v1, "Accounts"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v0, v2

    .line 1905
    goto :goto_0

    .line 1906
    :cond_6
    const-string v1, "More"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v3

    .line 1907
    goto :goto_0
.end method

.method private static getParentType(Lcom/android/settings/search/SearchItem;Landroid/content/Context;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1857
    iget-object v1, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    .line 1859
    if-nez v1, :cond_1

    .line 1860
    const-string v1, "SettingsSearchUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParentType()> parent key :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    :cond_0
    :goto_0
    return v0

    .line 1863
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1864
    const-string v2, "Connections"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Device"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Controls"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "General"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1877
    :cond_2
    new-instance v0, Lcom/android/settings/search/SettingSearchManager;

    invoke-direct {v0, p1}, Lcom/android/settings/search/SettingSearchManager;-><init>(Landroid/content/Context;)V

    .line 1879
    iget-object v1, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/search/SettingSearchManager;->getPreInfo(Ljava/lang/String;)Lcom/android/settings/search/SearchItem;

    move-result-object v0

    .line 1880
    invoke-static {v0, p1}, Lcom/android/settings/search/SettingsSearchUtils;->getParentType(Lcom/android/settings/search/SearchItem;Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_4

    .line 1881
    const/4 v0, 0x1

    goto :goto_0

    .line 1870
    :cond_3
    const-string v2, "Connections"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "My device"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Accounts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "More"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1883
    :cond_4
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private initMenuTable()V
    .locals 12

    .prologue
    const v11, 0x7f07002a

    const v10, 0x7f0b05c5

    const/4 v1, 0x0

    const/4 v9, 0x2

    const/4 v2, 0x1

    .line 145
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v3, "com.ipsec.vpnclient"

    invoke-static {v0, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 150
    const-string v0, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BST"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    :cond_0
    move v0, v2

    .line 152
    :goto_0
    iget-object v4, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "shopdemo"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 154
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v5

    if-eqz v5, :cond_45

    .line 157
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b057d

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070024

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b057f

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070024

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b0580

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070024

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b0582

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070024

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b0584

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070024

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b0585

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070024

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b058a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070024

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v5, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.nfc"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 165
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b058c

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070024

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b058e

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070024

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_1
    const-string v5, "ALL"

    const-string v6, "ALL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 171
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b058f

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070024

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_2
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b0590

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070024

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b0592

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070024

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    const-string v5, "SKT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 181
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b0588

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070024

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_3
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b059a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070034

    const-string v8, "Device"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b0597

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070034

    const-string v8, "Device"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05b5

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070034

    const-string v8, "Device"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 189
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b0599

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070034

    const-string v8, "Device"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_4
    if-nez v4, :cond_5

    .line 192
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b0596

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070034

    const-string v8, "Device"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_5
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05b7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070034

    const-string v8, "Device"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05b8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070034

    const-string v8, "Device"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05b9

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070034

    const-string v8, "Device"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    const-string v5, "SKT"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 198
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05ba

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070034

    const-string v8, "Device"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_6
    const-string v5, "SKT"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 201
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b059b

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070034

    const-string v8, "Device"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_7
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05a6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070034

    const-string v8, "Device"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v5, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 205
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "Call settings"

    const v7, 0x7f070034

    const-string v8, "Device"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_8
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b059e

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070034

    const-string v8, "Device"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05aa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07004c

    const-string v8, "Controls"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05b1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07004c

    const-string v8, "Controls"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b059f

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07004c

    const-string v8, "Controls"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05cb

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07004c

    const-string v8, "Controls"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05af

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07004c

    const-string v8, "Controls"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 232
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05cc

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07004c

    const-string v8, "Controls"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_9
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05cd

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07004c

    const-string v8, "Controls"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05ce

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07004c

    const-string v8, "Controls"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05ae

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07004c

    const-string v8, "Controls"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05cf

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07004c

    const-string v8, "Controls"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05bb

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070046

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b057a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070046

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b057b

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070046

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05bd

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070046

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "Safety assistance"

    const v7, 0x7f070046

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05a5

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070046

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_EnableBrowserBar"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v2, :cond_a

    .line 253
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05a7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070046

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_a
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05bf

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070046

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v5

    if-nez v5, :cond_b

    .line 257
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05c0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070046

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_b
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05c1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070046

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05a4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070046

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05c3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070046

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05c4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070046

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    const-string v5, "eng"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 265
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070046

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_c
    if-ne v2, v0, :cond_d

    .line 269
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05c6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070046

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05c7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070046

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "update_prl"

    const v7, 0x7f0700a0

    const v8, 0x7f0b05c7

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v9, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "update_profile"

    const v7, 0x7f0700a0

    const v8, 0x7f0b05c7

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v9, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "uicc_unlock"

    const v7, 0x7f0700a0

    const v8, 0x7f0b05c7

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v9, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_d
    const-string v5, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 286
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b0594

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070046

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b0595

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070046

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_e
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b05c8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070046

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "enable_switch_wifi_ap"

    const v6, 0x7f0700a9

    const v7, 0x7f0b0580

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "usb_tether_settings"

    const v6, 0x7f0700a9

    const v7, 0x7f0b0580

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    const-string v1, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 303
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "enable_bluetooth_tethering"

    const v6, 0x7f0700a9

    const v7, 0x7f0b0580

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_f
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "location_toggle"

    const v6, 0x7f070051

    const v7, 0x7f0b0585

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "location_gps"

    const v6, 0x7f070051

    const v7, 0x7f0b0585

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "location_network"

    const v6, 0x7f070051

    const v7, 0x7f0b0585

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 318
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "assisted_gps"

    const v6, 0x7f070051

    const v7, 0x7f0b0585

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_10
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "key_my_place"

    const v6, 0x7f070051

    const v7, 0x7f0b0585

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 328
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "mobile_network_settings"

    const v6, 0x7f0700cc

    const v7, 0x7f0b058a

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_11
    const-string v1, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    :cond_12
    if-eqz v3, :cond_3b

    .line 331
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "vpn_settings_for_att"

    const v5, 0x7f0700cc

    const v6, 0x7f0b058a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    :goto_1
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.hardware.nfc"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v3, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v1, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 338
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "toggle_android_beam"

    const v5, 0x7f070063

    const v6, 0x7f0b058c

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_13
    const-string v1, "ALL"

    const-string v3, "ALL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 349
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "allshare_shared_contents"

    const v5, 0x7f070011

    const v6, 0x7f0b058f

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "allshare_accept_device"

    const v5, 0x7f070011

    const v6, 0x7f0b058f

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "allshare_reject_device"

    const v5, 0x7f070011

    const v6, 0x7f0b058f

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "allshare_download_to"

    const v5, 0x7f070011

    const v6, 0x7f0b058f

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "allshare_download_from"

    const v5, 0x7f070011

    const v6, 0x7f0b058f

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    :cond_14
    if-nez v4, :cond_17

    .line 358
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 359
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "unlock_set_or_change"

    const v5, 0x7f070089

    const v6, 0x7f0b0596

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_screen_clock_settings"

    const v5, 0x7f070089

    const v6, 0x7f0b0596

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "Germany"

    const-string v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "Australia"

    const-string v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 364
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_screen_shortcut_menu"

    const v5, 0x7f070089

    const v6, 0x7f0b0596

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_15
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_screen_myprofile_settings"

    const v5, 0x7f070089

    const v6, 0x7f0b0596

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "owner_info_settings"

    const v5, 0x7f070089

    const v6, 0x7f0b0596

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "biometric_weak_improve_matching"

    const v5, 0x7f070089

    const v6, 0x7f0b0596

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "visiblepattern"

    const v5, 0x7f070089

    const v6, 0x7f0b0596

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "visiblesignature"

    const v5, 0x7f070089

    const v6, 0x7f0b0596

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "signature_verification_level"

    const v5, 0x7f070089

    const v6, 0x7f0b0596

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "unlock_effect"

    const v5, 0x7f070089

    const v6, 0x7f0b0596

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_screen_wakeup_settings"

    const v5, 0x7f070089

    const v6, 0x7f0b0596

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_after_timeout"

    const v5, 0x7f070089

    const v6, 0x7f0b0596

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    const-string v1, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v5, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 379
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "power_button_instantly_locks"

    const v5, 0x7f070089

    const v6, 0x7f0b0596

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    :cond_16
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "quick_note"

    const v5, 0x7f070089

    const v6, 0x7f0b0596

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "help_text"

    const v5, 0x7f070089

    const v6, 0x7f0b0596

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_17
    :goto_2
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "homescreen_wallpaper"

    const v5, 0x7f0700b6

    const v6, 0x7f0b05b7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lockscreen_wallpaper"

    const v5, 0x7f0700b6

    const v6, 0x7f0b05b7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "both_wallpaper"

    const v5, 0x7f0700b6

    const v6, 0x7f0b05b7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "MONOTYPE"

    const v5, 0x7f070045

    const v6, 0x7f0b05b8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "font_size"

    const v5, 0x7f070045

    const v6, 0x7f0b05b8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "brightness"

    const v5, 0x7f070036

    const v6, 0x7f0b0597

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "screen_timeout"

    const v5, 0x7f070036

    const v6, 0x7f0b0597

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "touch_key_light"

    const v5, 0x7f070036

    const v6, 0x7f0b0597

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "screen_mode"

    const v5, 0x7f070036

    const v6, 0x7f0b0597

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "reading_mode"

    const v5, 0x7f070036

    const v6, 0x7f0b0597

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 428
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "power_saving_mode"

    const v5, 0x7f070036

    const v6, 0x7f0b0597

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    :cond_18
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "screensaver"

    const v5, 0x7f070036

    const v6, 0x7f0b0597

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 432
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "accelerometer"

    const v5, 0x7f070036

    const v6, 0x7f0b0597

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    :cond_19
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "display_battery_level"

    const v5, 0x7f070036

    const v6, 0x7f0b0597

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "edit_screen_capture"

    const v5, 0x7f070036

    const v6, 0x7f0b0597

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "notification_panel_menu"

    const v5, 0x7f070064

    const v6, 0x7f0b05b9

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "brightness_adjustment"

    const v5, 0x7f070064

    const v6, 0x7f0b05b9

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 443
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "led_indicator_charging_key"

    const v5, 0x7f07004f

    const v6, 0x7f0b0599

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "led_indicator_low_battery_key"

    const v5, 0x7f07004f

    const v6, 0x7f0b0599

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "led_indicator_missed_event_key"

    const v5, 0x7f07004f

    const v6, 0x7f0b0599

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "led_indicator_voice_recording_key"

    const v5, 0x7f07004f

    const v6, 0x7f0b0599

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    :cond_1a
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "open_multi_window_view"

    const v5, 0x7f07005f

    const v6, 0x7f0b05b5

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "phone_language"

    const v5, 0x7f07004e

    const v6, 0x7f0b05aa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "current_input_method"

    const v5, 0x7f07004e

    const v6, 0x7f0b05aa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "recognizer_settings"

    const v5, 0x7f07004e

    const v6, 0x7f0b05aa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "tts_settings"

    const v5, 0x7f07004e

    const v6, 0x7f0b05aa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "pointer_speed"

    const v5, 0x7f07004e

    const v6, 0x7f0b05aa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "com.sec.feature.spen_usp"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    if-le v1, v2, :cond_1b

    .line 459
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "handwriting_language"

    const v5, 0x7f07004e

    const v6, 0x7f0b05aa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_1b
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 464
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "voice_input_control_incomming_calls"

    const v5, 0x7f0700b3

    const v6, 0x7f0b05b1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    :cond_1c
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "voice_input_control_alarm"

    const v5, 0x7f0700b3

    const v6, 0x7f0b05b1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "voice_input_control_camera"

    const v5, 0x7f0700b3

    const v6, 0x7f0b05b1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "voice_input_control_music"

    const v5, 0x7f0700b3

    const v6, 0x7f0b05b1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "incoming_call_notification"

    const v5, 0x7f07003a

    const v6, 0x7f0b059f

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "air_call_accept_hands_free"

    const v5, 0x7f07003a

    const v6, 0x7f0b059f

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    const-string v1, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 476
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "message_notification"

    const v5, 0x7f07003a

    const v6, 0x7f0b059f

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_1d
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "alarm_notification"

    const v5, 0x7f07003a

    const v6, 0x7f0b059f

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "schedule_notification"

    const v5, 0x7f07003a

    const v6, 0x7f0b059f

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "air_motion_indicator"

    const v5, 0x7f07000b

    const v6, 0x7f0b05cb

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "quick_glance"

    const v5, 0x7f07000b

    const v6, 0x7f0b05cb

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "air_scroll"

    const v5, 0x7f07000b

    const v6, 0x7f0b05cb

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "air_turn"

    const v5, 0x7f07000b

    const v6, 0x7f0b05cb

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "air_call_accept"

    const v5, 0x7f07000b

    const v6, 0x7f0b05cb

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 533
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "pick_up_to_call_out"

    const v5, 0x7f07005b

    const v6, 0x7f0b05cd

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    :cond_1e
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 536
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "pick_up"

    const v5, 0x7f07005b

    const v6, 0x7f0b05cd

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    :cond_1f
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "tilt"

    const v5, 0x7f07005b

    const v6, 0x7f0b05cd

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "pan_to_browse_image"

    const v5, 0x7f07005b

    const v6, 0x7f0b05cd

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 544
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "turn_over"

    const v5, 0x7f07005b

    const v6, 0x7f0b05cd

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    :cond_20
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "palm_swipe"

    const v5, 0x7f070048

    const v6, 0x7f0b05ce

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "palm_touch"

    const v5, 0x7f070048

    const v6, 0x7f0b05ce

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "smartscreen_stay"

    const v5, 0x7f07009e

    const v6, 0x7f0b05ae

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "smartscreen_rotation"

    const v5, 0x7f07009e

    const v6, 0x7f0b05ae

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "smartscreen_pause"

    const v5, 0x7f07009e

    const v6, 0x7f0b05ae

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "smartscreen_scroll"

    const v5, 0x7f07009e

    const v6, 0x7f0b05ae

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "ring_volume"

    const v5, 0x7f0700a1

    const v6, 0x7f0b059a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "vibration_feedback_intensity"

    const v5, 0x7f0700a1

    const v6, 0x7f0b059a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 568
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "ringtone"

    const v5, 0x7f0700a1

    const v6, 0x7f0b059a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    :cond_21
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 571
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "phone_vibration"

    const v5, 0x7f0700a1

    const v6, 0x7f0b059a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    :cond_22
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "notification_sound"

    const v5, 0x7f0700a1

    const v6, 0x7f0b059a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 575
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "vibrate_when_ringing"

    const v5, 0x7f0700a1

    const v6, 0x7f0b059a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    :cond_23
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 578
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "dtmf_tone"

    const v5, 0x7f0700a1

    const v6, 0x7f0b059a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    :cond_24
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "sound_effects"

    const v5, 0x7f0700a1

    const v6, 0x7f0b059a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_sounds"

    const v5, 0x7f0700a1

    const v6, 0x7f0b059a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "haptic_feedback"

    const v5, 0x7f0700a1

    const v6, 0x7f0b059a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "audio_output"

    const v5, 0x7f0700a1

    const v6, 0x7f0b059a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "my_sound"

    const v5, 0x7f0700a1

    const v6, 0x7f0b059a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "sip_feedback_sound"

    const v5, 0x7f0700a1

    const v6, 0x7f0b059a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "sip_feedback_vibration"

    const v5, 0x7f0700a1

    const v6, 0x7f0b059a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "key_account_add"

    const v5, 0x7f070006

    const v6, 0x7f0b05bb

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 599
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "auto_time"

    const v5, 0x7f070029

    const v6, 0x7f0b05bd

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    :cond_25
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "date"

    const v5, 0x7f070029

    const v6, 0x7f0b05bd

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "time"

    const v5, 0x7f070029

    const v6, 0x7f0b05bd

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 604
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "auto_zone"

    const v5, 0x7f070029

    const v6, 0x7f0b05bd

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    :cond_26
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "timezone"

    const v5, 0x7f070029

    const v6, 0x7f0b05bd

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "24 hour"

    const v5, 0x7f070029

    const v6, 0x7f0b05bd

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "date_format"

    const v5, 0x7f070029

    const v6, 0x7f0b05bd

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 612
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "disable_incoming_calls"

    const v5, 0x7f070039

    const v6, 0x7f0b059e

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    :cond_27
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "disable_notifications"

    const v5, 0x7f070039

    const v6, 0x7f0b059e

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "disable_alarm_and_timer"

    const v5, 0x7f070039

    const v6, 0x7f0b059e

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 617
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "disable_led_indicator"

    const v5, 0x7f070039

    const v6, 0x7f0b059e

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    :cond_28
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "always"

    const v5, 0x7f070039

    const v6, 0x7f0b059e

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 621
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "allowed_contacts"

    const v5, 0x7f070039

    const v6, 0x7f0b059e

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "allowed_list"

    const v5, 0x7f070039

    const v6, 0x7f0b059e

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    :cond_29
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "power_saving_cpu"

    const v5, 0x7f070057

    const v6, 0x7f0b05a4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "power_saving_display"

    const v5, 0x7f070057

    const v6, 0x7f0b05a4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "power_saving_haptic"

    const v5, 0x7f070057

    const v6, 0x7f0b05a4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "power_saving_tips"

    const v5, 0x7f070057

    const v6, 0x7f0b05a4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    const-string v1, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 631
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "power_saving_auto_turn_on"

    const v5, 0x7f070057

    const v6, 0x7f0b05a4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    :cond_2a
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "toggle_lock_screen_rotation_preference"

    const/high16 v5, 0x7f07

    const v6, 0x7f0b05a6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "screen_timeout"

    const/high16 v5, 0x7f07

    const v6, 0x7f0b05a6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "toggle_speak_password_preference"

    const/high16 v5, 0x7f07

    const v6, 0x7f0b05a6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 640
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "call_answering_ending"

    const/high16 v5, 0x7f07

    const v6, 0x7f0b05a6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    :cond_2b
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "toggle_easy_interaction_preference"

    const/high16 v5, 0x7f07

    const v6, 0x7f0b05a6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "power_key_hold"

    const/high16 v5, 0x7f07

    const v6, 0x7f0b05a6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "share_acc_setting_menu"

    const/high16 v5, 0x7f07

    const v6, 0x7f0b05a6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "font_size"

    const/high16 v5, 0x7f07

    const v6, 0x7f0b05a6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "screen_magnification_preference_screen"

    const/high16 v5, 0x7f07

    const v6, 0x7f0b05a6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "high_contrast"

    const/high16 v5, 0x7f07

    const v6, 0x7f0b05a6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "color_blind"

    const/high16 v5, 0x7f07

    const v6, 0x7f0b05a6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "notification_preference"

    const/high16 v5, 0x7f07

    const v6, 0x7f0b05a6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "notification_time_interval"

    const v5, 0x7f070065

    const-string v6, "notification_preference"

    invoke-direct {p0, v3, v5, v9, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "enable_global_gesture_preference_screen"

    const/high16 v5, 0x7f07

    const v6, 0x7f0b05a6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "tts_settings_preference"

    const/high16 v5, 0x7f07

    const v6, 0x7f0b05a6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "toggle_script_injection_preference"

    const/high16 v5, 0x7f07

    const v6, 0x7f0b05a6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "audio_balance"

    const/high16 v5, 0x7f07

    const v6, 0x7f0b05a6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "mono_audio_key"

    const/high16 v5, 0x7f07

    const v6, 0x7f0b05a6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "all_sound_off_key"

    const/high16 v5, 0x7f07

    const v6, 0x7f0b05a6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "call_hearing_aid"

    const/high16 v5, 0x7f07

    const v6, 0x7f0b05a6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "flash_notification_key"

    const/high16 v5, 0x7f07

    const v6, 0x7f0b05a6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "assistant_menu_preference"

    const/high16 v5, 0x7f07

    const v6, 0x7f0b05a6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "select_long_press_timeout_preference"

    const/high16 v5, 0x7f07

    const v6, 0x7f0b05a6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "access_control_key"

    const/high16 v5, 0x7f07

    const v6, 0x7f0b05a6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "dock_sounds"

    const v5, 0x7f070038

    const v6, 0x7f0b05a5

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "cradle_enable"

    const v5, 0x7f070038

    const v6, 0x7f0b05a5

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 672
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "desk_home_screen_display"

    const v5, 0x7f070038

    const v6, 0x7f0b05a5

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    :cond_2c
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "automatic_unlock"

    const v5, 0x7f070038

    const v6, 0x7f0b05a5

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1110072

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 679
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "sview_color"

    const v5, 0x7f070038

    const v6, 0x7f0b05a5

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "select_info"

    const v5, 0x7f070038

    const v6, 0x7f0b05a5

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    :cond_2d
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "audio_output"

    const v5, 0x7f070038

    const v6, 0x7f0b05a5

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isExistCoverNotePackage(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 685
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "cover_note"

    const v5, 0x7f070038

    const v6, 0x7f0b05a5

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "cover_note_weather_unit"

    const v5, 0x7f070038

    const v6, 0x7f0b05a5

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    :cond_2e
    invoke-static {}, Lcom/android/settings/Utils;->DisableCloud()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 692
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "com.sec.android.cloudagent"

    const/4 v5, 0x5

    invoke-virtual {v1, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 693
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "pref_add_samsung_account"

    const v5, 0x7f070020

    const/4 v6, 0x1

    const v7, 0x7f0b057a

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v3, v5, v6, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    :cond_2f
    :goto_3
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "backup_data"

    const v5, 0x7f070077

    const v6, 0x7f0b057b

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "configure_account"

    const v5, 0x7f070077

    const v6, 0x7f0b057b

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "auto_restore"

    const v5, 0x7f070077

    const v6, 0x7f0b057b

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "master_clear"

    const v5, 0x7f070077

    const v6, 0x7f0b057b

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "display_battery_level"

    const v5, 0x7f070074

    const v6, 0x7f0b05c1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "encryption"

    const v5, 0x7f070096

    const v6, 0x7f0b05c4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v1

    if-nez v1, :cond_30

    .line 713
    new-instance v1, Lcom/android/settings/encryption/EncryptionPreferenceManager;

    iget-object v3, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/settings/encryption/EncryptionPreferenceManager;-><init>(Landroid/content/Context;)V

    .line 714
    if-eqz v1, :cond_30

    invoke-virtual {v1}, Lcom/android/settings/encryption/EncryptionPreferenceManager;->isSDcardEncryptionPossible()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 715
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "sdEncpref"

    const v5, 0x7f070094

    const v6, 0x7f0b05c4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    :cond_30
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 719
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "sim_lock_settings"

    const v5, 0x7f07008f

    const v6, 0x7f0b05c4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    :cond_31
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "show_password"

    const v5, 0x7f07008f

    const v6, 0x7f0b05c4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "device_admin"

    const v5, 0x7f07008f

    const v6, 0x7f0b05c4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "toggle_install_applications"

    const v5, 0x7f07008f

    const v6, 0x7f0b05c4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "toggle_verify_applications"

    const v5, 0x7f07008f

    const v6, 0x7f0b05c4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "selinux_security_level"

    const v5, 0x7f07008f

    const v6, 0x7f0b05c4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "credential_storage_type"

    const v5, 0x7f07008f

    const v6, 0x7f0b05c4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "trusted_credentials"

    const v5, 0x7f07008f

    const v6, 0x7f0b05c4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "credentials_install_key"

    const v5, 0x7f07008f

    const v6, 0x7f0b05c4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "reset_credentials"

    const v5, 0x7f07008f

    const v6, 0x7f0b05c4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "auto_policy_update"

    const v5, 0x7f07008f

    const v6, 0x7f0b05c4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "use_wifi_only"

    const v5, 0x7f07008f

    const v6, 0x7f0b05c4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    const-string v1, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 735
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "bugreport"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v11, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "local_backup_password"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v11, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "keep_screen_on"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v11, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "hdcp_checking"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v11, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "enforce_read_external"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v11, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "enable_adb"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v11, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "bugreport_in_power"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v11, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "allow_mock_location"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v11, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "debug_app"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v11, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "wait_for_debugger"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v11, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "verify_apps_over_usb"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v11, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "show_touches"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v11, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "pointer_location"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v11, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "debug_layout"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v11, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "show_hw_screen_udpates"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v11, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "show_hw_layers_udpates"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v11, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "show_hw_overdraw"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v11, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "show_screen_updates"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v11, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "window_animation_scale"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v11, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "transition_animation_scale"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v11, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "animator_duration_scale"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v11, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "disable_overlays"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v11, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "force_hw_ui"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v11, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "force_msaa"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v11, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "overlay_display_devices"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v11, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "strict_mode"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v11, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "show_cpu_usage"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v11, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "track_frame_time"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v11, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "enable_opengl_traces"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v11, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "enable_traces"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v11, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "immediately_destroy_activities"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v11, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "app_process_limit"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v11, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "show_all_anrs"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v11, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "show_non_rect_clip"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v11, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    :cond_32
    const-string v1, "ATT"

    const-string v3, "TMO"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 773
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "system_update_settings_na_gsm"

    const v5, 0x7f07002d

    const v6, 0x7f0b05c8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    :goto_4
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "status_info"

    const v5, 0x7f07002d

    const v6, 0x7f0b05c8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "container"

    const v5, 0x7f07002d

    const v6, 0x7f0b05c8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "device_name"

    const v5, 0x7f07002d

    const v6, 0x7f0b05c8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "device_model"

    const v5, 0x7f07002d

    const v6, 0x7f0b05c8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "firmware_version"

    const v5, 0x7f07002d

    const v6, 0x7f0b05c8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "baseband_version"

    const v5, 0x7f07002d

    const v6, 0x7f0b05c8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "kernel_version"

    const v5, 0x7f07002d

    const v6, 0x7f0b05c8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "build_number"

    const v5, 0x7f07002d

    const v6, 0x7f0b05c8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "selinux_status"

    const v5, 0x7f07002d

    const v6, 0x7f0b05c8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    if-nez v4, :cond_35

    .line 794
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "unlock_set_none"

    const v4, 0x7f070092

    const-string v5, "unlock_set_or_change"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 795
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v1

    if-nez v1, :cond_33

    .line 796
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "unlock_set_biometric_weak"

    const v4, 0x7f070092

    const-string v5, "unlock_set_or_change"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    :cond_33
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v1

    if-nez v1, :cond_34

    .line 799
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "unlock_set_biometric_weak_with_voice"

    const v4, 0x7f070092

    const-string v5, "unlock_set_or_change"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    :cond_34
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "unlock_set_signature"

    const v4, 0x7f070092

    const-string v5, "unlock_set_or_change"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "unlock_set_pattern"

    const v4, 0x7f070092

    const-string v5, "unlock_set_or_change"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "unlock_set_pin"

    const v4, 0x7f070092

    const-string v5, "unlock_set_or_change"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "unlock_set_password"

    const v4, 0x7f070092

    const-string v5, "unlock_set_or_change"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "unlock_set_smart"

    const v4, 0x7f070092

    const-string v5, "unlock_set_or_change"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "unlock_set_off"

    const v4, 0x7f070092

    const-string v5, "unlock_set_or_change"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 811
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "dualclock_settings"

    const v4, 0x7f070053

    const-string v5, "lock_screen_clock_settings"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "clock_size"

    const v4, 0x7f070053

    const-string v5, "lock_screen_clock_settings"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 813
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_screen_date_and_year"

    const v4, 0x7f070053

    const-string v5, "lock_screen_clock_settings"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "clock_weather"

    const v4, 0x7f070053

    const-string v5, "lock_screen_clock_settings"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_screen_profile"

    const v4, 0x7f070053

    const-string v5, "lock_screen_myprofile_settings"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    :cond_35
    :goto_5
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "tts_default_rate"

    const v4, 0x7f0700af

    const-string v5, "tts_settings"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "tts_play_example"

    const v4, 0x7f0700af

    const-string v5, "tts_settings"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "time_and_date"

    const v4, 0x7f070078

    const-string v5, "quick_glance"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "notification"

    const v4, 0x7f070078

    const-string v5, "quick_glance"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "missed_call"

    const v4, 0x7f070078

    const-string v5, "quick_glance"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "unread_message"

    const v4, 0x7f070078

    const-string v5, "quick_glance"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "battery"

    const v4, 0x7f070078

    const-string v5, "quick_glance"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "current_music"

    const v4, 0x7f070078

    const-string v5, "quick_glance"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "single_photo_view"

    const v4, 0x7f07000e

    const-string v5, "air_turn"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "now_playing_on_music"

    const v4, 0x7f07000e

    const-string v5, "air_turn"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "bgm_on_lock_screen"

    const v4, 0x7f07000e

    const-string v5, "air_turn"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 851
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "advanced_air_call_accept_auto_start_speaker"

    const v4, 0x7f07007b

    const-string v5, "air_call_accept"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "information_preview"

    const v4, 0x7f070044

    const v5, 0x7f0b05af

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "progress_bar_preview"

    const v4, 0x7f070044

    const v5, 0x7f0b05af

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "speed_dial_tip"

    const v4, 0x7f070044

    const v5, 0x7f0b05af

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "magnifier"

    const v4, 0x7f070044

    const v5, 0x7f0b05af

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "sound_and_haptic_feedback"

    const v4, 0x7f070044

    const v5, 0x7f0b05af

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "smart_scroll_sensitivity"

    const v3, 0x7f07009f

    const-string v4, "smartscreen_scroll"

    invoke-direct {p0, v2, v3, v9, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "smart_scroll_visual_feedback_icon"

    const v3, 0x7f07009f

    const-string v4, "smartscreen_scroll"

    invoke-direct {p0, v2, v3, v9, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 888
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "weather"

    const v3, 0x7f070097

    const-string v4, "select_info"

    invoke-direct {p0, v2, v3, v9, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 889
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "walking_mate"

    const v3, 0x7f070097

    const-string v4, "select_info"

    invoke-direct {p0, v2, v3, v9, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    :cond_36
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 894
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "sim_toggle"

    const v3, 0x7f07009b

    const-string v4, "sim_lock_settings"

    invoke-direct {p0, v2, v3, v9, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 895
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "sim_pin"

    const v3, 0x7f07009b

    const-string v4, "sim_lock_settings"

    invoke-direct {p0, v2, v3, v9, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    :cond_37
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 898
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "perso_toggle"

    const v3, 0x7f07009b

    const-string v4, "sim_lock_settings"

    invoke-direct {p0, v2, v3, v9, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    :cond_38
    const-string v1, "ATT"

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1369
    :cond_39
    :goto_6
    return-void

    :cond_3a
    move v0, v1

    .line 150
    goto/16 :goto_0

    .line 333
    :cond_3b
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "vpn_settings"

    const v5, 0x7f0700cc

    const v6, 0x7f0b058a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 384
    :cond_3c
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "unlock_set_or_change"

    const v5, 0x7f07008e

    const v6, 0x7f0b0596

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_screen_widget_options"

    const v5, 0x7f070088

    const v6, 0x7f0b0596

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-nez v1, :cond_3d

    const-string v1, "Germany"

    const-string v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    const-string v1, "Australia"

    const-string v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 389
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_screen_shortcut_menu"

    const v5, 0x7f070088

    const v6, 0x7f0b0596

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_3d
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "unlock_effect"

    const v5, 0x7f070088

    const v6, 0x7f0b0596

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "help_text"

    const v5, 0x7f070088

    const v6, 0x7f0b0596

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "say_your_wakeup"

    const v5, 0x7f070088

    const v6, 0x7f0b0596

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "set_wakeup_command"

    const v5, 0x7f070088

    const v6, 0x7f0b0596

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "biometric_weak_improve_matching"

    const v5, 0x7f070085

    const v6, 0x7f0b0596

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "biometric_weak_liveliness"

    const v5, 0x7f070085

    const v6, 0x7f0b0596

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_after_timeout"

    const v5, 0x7f070085

    const v6, 0x7f0b0596

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    const-string v1, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v5, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 399
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "power_button_instantly_locks"

    const v5, 0x7f070085

    const v6, 0x7f0b0596

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_3e
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "visiblepattern"

    const v5, 0x7f070091

    const v6, 0x7f0b0596

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "quick_note"

    const v5, 0x7f070088

    const v6, 0x7f0b0596

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 694
    :catch_0
    move-exception v1

    .line 695
    const-string v1, "SettingsSearchUtils"

    const-string v3, "Cloud package not found"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 774
    :cond_3f
    if-eqz v0, :cond_40

    .line 776
    :cond_40
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 777
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "system_update_settings_vzw"

    const v5, 0x7f07002d

    const v6, 0x7f0b05c8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 779
    :cond_41
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "software_update_settings"

    const v5, 0x7f07002d

    const v6, 0x7f0b05c8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 820
    :cond_42
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_screen_short_or_camera_widget"

    const v4, 0x7f070052

    const-string v5, "lock_screen_widget_options"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_screen_clock_or_myprofile"

    const v4, 0x7f070052

    const-string v5, "lock_screen_widget_options"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "dualclock_settings"

    const v4, 0x7f070052

    const-string v5, "lock_screen_widget_options"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "clock_size"

    const v4, 0x7f070052

    const-string v5, "lock_screen_widget_options"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_screen_date_and_year"

    const v4, 0x7f070052

    const-string v5, "lock_screen_widget_options"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_screen_profile"

    const v4, 0x7f070052

    const-string v5, "lock_screen_widget_options"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 904
    :cond_43
    if-eqz v0, :cond_44

    .line 907
    :cond_44
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "update"

    const v2, 0x7f0700a0

    const-string v3, "software_update_settings"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "auto_update"

    const v2, 0x7f0700a0

    const-string v3, "software_update_settings"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "wifi_only"

    const v2, 0x7f0700a0

    const-string v3, "software_update_settings"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 921
    :cond_45
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b057d

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070024

    const-string v7, "Connections"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 922
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b057f

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070024

    const-string v7, "Connections"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 923
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b0584

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070024

    const-string v7, "Connections"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 924
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b058a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070024

    const-string v7, "Connections"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 925
    iget-object v4, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.nfc"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 926
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b058c

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070024

    const-string v7, "Connections"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b058e

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070024

    const-string v7, "Connections"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    :cond_46
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b0591

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070024

    const-string v7, "Connections"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b0592

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070024

    const-string v7, "Connections"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 940
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b0596

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07002b

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 941
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b0597

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07002b

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 942
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 943
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b0599

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07002b

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    :cond_47
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b059a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07002b

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 946
    const-string v4, "SKT"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_48

    .line 947
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b05ba

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07002b

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 949
    :cond_48
    const-string v4, "SKT"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 950
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b059b

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07002b

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    :cond_49
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "Call settings"

    const v6, 0x7f07002b

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b059e

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07002b

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b059f

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07002b

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 957
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "Safety assistance"

    const v6, 0x7f07002b

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 958
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b05a4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07002b

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 959
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b05a5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07002b

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 960
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b05a6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07002b

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 961
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b05aa

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07002b

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 963
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b05ad

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07002b

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b05ae

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07002b

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 965
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b05b0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07002b

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b05b1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07002b

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 969
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b0578

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070008

    const-string v7, "Accounts"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 970
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b057a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070008

    const-string v7, "Accounts"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 971
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b057b

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070008

    const-string v7, "Accounts"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 974
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b0585

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070056

    const-string v7, "More"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 975
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b05c4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070056

    const-string v7, "More"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 976
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b05bf

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070056

    const-string v7, "More"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b05c1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070056

    const-string v7, "More"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b05c3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070056

    const-string v7, "More"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 979
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b05bd

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070056

    const-string v7, "More"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 980
    const-string v4, "eng"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 981
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070056

    const-string v7, "More"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 983
    :cond_4a
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b05c8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070056

    const-string v7, "More"

    invoke-direct {p0, v5, v6, v1, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "toggle_airplane"

    const v5, 0x7f0700cc

    const v6, 0x7f0b058a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 988
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "mobile_network_settings"

    const v5, 0x7f0700cc

    const v6, 0x7f0b058a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 989
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "tether_settings"

    const v5, 0x7f0700cc

    const v6, 0x7f0b058a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v2, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    const-string v1, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    :cond_4b
    if-eqz v3, :cond_55

    .line 993
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "vpn_settings_for_att"

    const v4, 0x7f0700cc

    const v5, 0x7f0b058a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1001
    :goto_7
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.hardware.nfc"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v3, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v1, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 1002
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "toggle_android_beam"

    const v4, 0x7f070063

    const v5, 0x7f0b058c

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1011
    :cond_4c
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "allshare_onoff"

    const v4, 0x7f070011

    const v5, 0x7f0b058f

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1012
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "allshare_shared_contents"

    const v4, 0x7f070011

    const v5, 0x7f0b058f

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1013
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "allshare_accept_device"

    const v4, 0x7f070011

    const v5, 0x7f0b058f

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1014
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "allshare_reject_device"

    const v4, 0x7f070011

    const v5, 0x7f0b058f

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1015
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "allshare_download_to"

    const v4, 0x7f070011

    const v5, 0x7f0b058f

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1016
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "allshare_download_from"

    const v4, 0x7f070011

    const v5, 0x7f0b058f

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1019
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "unlock_set_or_change"

    const v4, 0x7f07008e

    const v5, 0x7f0b0596

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1020
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_screen_widget_options"

    const v4, 0x7f070088

    const v5, 0x7f0b0596

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1021
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-nez v1, :cond_4d

    const-string v1, "Germany"

    const-string v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    const-string v1, "Australia"

    const-string v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 1024
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_screen_shortcut_menu"

    const v4, 0x7f070088

    const v5, 0x7f0b0596

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1026
    :cond_4d
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "unlock_effect"

    const v4, 0x7f070088

    const v5, 0x7f0b0596

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "help_text"

    const v4, 0x7f070088

    const v5, 0x7f0b0596

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1028
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "say_your_wakeup"

    const v4, 0x7f070088

    const v5, 0x7f0b0596

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1029
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "set_wakeup_command"

    const v4, 0x7f070088

    const v5, 0x7f0b0596

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1030
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "biometric_weak_improve_matching"

    const v4, 0x7f070085

    const v5, 0x7f0b0596

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1031
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "biometric_weak_liveliness"

    const v4, 0x7f070085

    const v5, 0x7f0b0596

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1032
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_after_timeout"

    const v4, 0x7f070085

    const v5, 0x7f0b0596

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1033
    const-string v1, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 1034
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "power_button_instantly_locks"

    const v4, 0x7f070085

    const v5, 0x7f0b0596

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1036
    :cond_4e
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "visiblepattern"

    const v4, 0x7f070091

    const v5, 0x7f0b0596

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "quick_note"

    const v4, 0x7f070088

    const v5, 0x7f0b0596

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "wallpaper"

    const v4, 0x7f070035

    const v5, 0x7f0b0597

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1041
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "notification_panel_edit"

    const v4, 0x7f070035

    const v5, 0x7f0b0597

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1042
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "key_multi_window"

    const v4, 0x7f070035

    const v5, 0x7f0b0597

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1043
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "screen_mode"

    const v4, 0x7f070035

    const v5, 0x7f0b0597

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1044
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "brightness"

    const v4, 0x7f070035

    const v5, 0x7f0b0597

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1045
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "accelerometer"

    const v4, 0x7f070035

    const v5, 0x7f0b0597

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1046
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "screen_timeout"

    const v4, 0x7f070035

    const v5, 0x7f0b0597

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1047
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "screensaver"

    const v4, 0x7f070035

    const v5, 0x7f0b0597

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1048
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "MONOTYPE"

    const v4, 0x7f070035

    const v5, 0x7f0b0597

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1049
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "font_size"

    const v4, 0x7f070035

    const v5, 0x7f0b0597

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1053
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "touch_key_light"

    const v4, 0x7f070035

    const v5, 0x7f0b0597

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1054
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "display_battery_level"

    const v4, 0x7f070035

    const v5, 0x7f0b0597

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "edit_screen_capture"

    const v4, 0x7f070035

    const v5, 0x7f0b0597

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1056
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "power_saving_mode"

    const v4, 0x7f070035

    const v5, 0x7f0b0597

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1057
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "auto_adjust_touch"

    const v4, 0x7f070035

    const v5, 0x7f0b0597

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1060
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 1061
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "led_indicator_charging_key"

    const v4, 0x7f07004f

    const v5, 0x7f0b0599

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1062
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "led_indicator_low_battery_key"

    const v4, 0x7f07004f

    const v5, 0x7f0b0599

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1063
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "led_indicator_missed_event_key"

    const v4, 0x7f07004f

    const v5, 0x7f0b0599

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1064
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "led_indicator_voice_recording_key"

    const v4, 0x7f07004f

    const v5, 0x7f0b0599

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1068
    :cond_4f
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "ring_volume"

    const v4, 0x7f0700a1

    const v5, 0x7f0b059a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1069
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "vibration_feedback_intensity"

    const v4, 0x7f0700a1

    const v5, 0x7f0b059a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1070
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "ringtone"

    const v4, 0x7f0700a1

    const v5, 0x7f0b059a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1071
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "phone_vibration"

    const v4, 0x7f0700a1

    const v5, 0x7f0b059a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1072
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "notification_sound"

    const v4, 0x7f0700a1

    const v5, 0x7f0b059a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1073
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "vibrate_when_ringing"

    const v4, 0x7f0700a1

    const v5, 0x7f0b059a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1074
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "dtmf_tone"

    const v4, 0x7f0700a1

    const v5, 0x7f0b059a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1075
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "sound_effects"

    const v4, 0x7f0700a1

    const v5, 0x7f0b059a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1076
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "lock_sounds"

    const v4, 0x7f0700a1

    const v5, 0x7f0b059a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1077
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "haptic_feedback"

    const v4, 0x7f0700a1

    const v5, 0x7f0b059a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1078
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "my_sound"

    const v4, 0x7f0700a1

    const v5, 0x7f0b059a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1081
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "disable_incoming_calls"

    const v4, 0x7f070039

    const v5, 0x7f0b059e

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1082
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "disable_notifications"

    const v4, 0x7f070039

    const v5, 0x7f0b059e

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1083
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "disable_alarm_and_timer"

    const v4, 0x7f070039

    const v5, 0x7f0b059e

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1084
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "disable_led_indicator"

    const v4, 0x7f070039

    const v5, 0x7f0b059e

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1085
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "always"

    const v4, 0x7f070039

    const v5, 0x7f0b059e

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1086
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "allowed_contacts"

    const v4, 0x7f070039

    const v5, 0x7f0b059e

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1087
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "allowed_list"

    const v4, 0x7f070039

    const v5, 0x7f0b059e

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1091
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "incoming_call_notification"

    const v4, 0x7f07003a

    const v5, 0x7f0b059f

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1092
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "message_notification"

    const v4, 0x7f07003a

    const v5, 0x7f0b059f

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1093
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "alarm_notification"

    const v4, 0x7f07003a

    const v5, 0x7f0b059f

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1094
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "schedule_notification"

    const v4, 0x7f07003a

    const v5, 0x7f0b059f

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1098
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "power_saving_cpu"

    const v4, 0x7f070057

    const v5, 0x7f0b05a4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1099
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "power_saving_display"

    const v4, 0x7f070057

    const v5, 0x7f0b05a4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1100
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "power_saving_haptic"

    const v4, 0x7f070057

    const v5, 0x7f0b05a4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1101
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "power_saving_tips"

    const v4, 0x7f070057

    const v5, 0x7f0b05a4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1102
    const-string v1, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1103
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "power_saving_auto_turn_on"

    const v4, 0x7f070057

    const v5, 0x7f0b05a4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1107
    :cond_50
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "dock_sounds"

    const v4, 0x7f070038

    const v5, 0x7f0b05a5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1108
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "cradle_enable"

    const v4, 0x7f070038

    const v5, 0x7f0b05a5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1109
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "desk_home_screen_display"

    const v4, 0x7f070038

    const v5, 0x7f0b05a5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1110
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "automatic_unlock"

    const v4, 0x7f070038

    const v5, 0x7f0b05a5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1111
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "audio_output"

    const v4, 0x7f070038

    const v5, 0x7f0b05a5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1114
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "toggle_lock_screen_rotation_preference"

    const/high16 v4, 0x7f07

    const v5, 0x7f0b05a6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1115
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "screen_timeout"

    const/high16 v4, 0x7f07

    const v5, 0x7f0b05a6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1116
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "toggle_speak_password_preference"

    const/high16 v4, 0x7f07

    const v5, 0x7f0b05a6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1117
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "call_answering_ending"

    const/high16 v4, 0x7f07

    const v5, 0x7f0b05a6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1118
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "power_key_hold"

    const/high16 v4, 0x7f07

    const v5, 0x7f0b05a6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1119
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "share_acc_setting_menu"

    const/high16 v4, 0x7f07

    const v5, 0x7f0b05a6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1120
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "font_size"

    const/high16 v4, 0x7f07

    const v5, 0x7f0b05a6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1121
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "screen_magnification_preference_screen"

    const/high16 v4, 0x7f07

    const v5, 0x7f0b05a6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1122
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "high_contrast"

    const/high16 v4, 0x7f07

    const v5, 0x7f0b05a6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1123
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "color_blind"

    const/high16 v4, 0x7f07

    const v5, 0x7f0b05a6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1124
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "enable_global_gesture_preference_screen"

    const/high16 v4, 0x7f07

    const v5, 0x7f0b05a6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1125
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "tts_settings_preference"

    const/high16 v4, 0x7f07

    const v5, 0x7f0b05a6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "toggle_script_injection_preference"

    const/high16 v4, 0x7f07

    const v5, 0x7f0b05a6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1127
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "audio_balance"

    const/high16 v4, 0x7f07

    const v5, 0x7f0b05a6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1128
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "mono_audio_key"

    const/high16 v4, 0x7f07

    const v5, 0x7f0b05a6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1129
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "all_sound_off_key"

    const/high16 v4, 0x7f07

    const v5, 0x7f0b05a6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1130
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "flash_notification_key"

    const/high16 v4, 0x7f07

    const v5, 0x7f0b05a6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1131
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "assistant_menu_preference"

    const/high16 v4, 0x7f07

    const v5, 0x7f0b05a6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1132
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "select_long_press_timeout_preference"

    const/high16 v4, 0x7f07

    const v5, 0x7f0b05a6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1133
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "access_control_key"

    const/high16 v4, 0x7f07

    const v5, 0x7f0b05a6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1135
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "notification_preference"

    const/high16 v4, 0x7f07

    const v5, 0x7f0b05a6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1136
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "notification_time_interval"

    const v4, 0x7f070065

    const-string v5, "notification_preference"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1140
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "phone_language"

    const v4, 0x7f07004e

    const v5, 0x7f0b05aa

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1141
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "current_input_method"

    const v4, 0x7f07004e

    const v5, 0x7f0b05aa

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1142
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "recognizer_settings"

    const v4, 0x7f07004e

    const v5, 0x7f0b05aa

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1143
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "tts_settings"

    const v4, 0x7f07004e

    const v5, 0x7f0b05aa

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1144
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "pointer_speed"

    const v4, 0x7f07004e

    const v5, 0x7f0b05aa

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1147
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "air_motion"

    const v4, 0x7f07007c

    const v5, 0x7f0b05ad

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1148
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "motion"

    const v4, 0x7f07007c

    const v5, 0x7f0b05ad

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1149
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "surface"

    const v4, 0x7f07007c

    const v5, 0x7f0b05ad

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1150
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "g_sensor_cal"

    const v4, 0x7f07007c

    const v5, 0x7f0b05ad

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1153
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "smartscreen_stay"

    const v4, 0x7f07009e

    const v5, 0x7f0b05ae

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1154
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "smartscreen_rotation"

    const v4, 0x7f07009e

    const v5, 0x7f0b05ae

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1155
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "smartscreen_pause"

    const v4, 0x7f07009e

    const v5, 0x7f0b05ae

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1156
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "smartscreen_scroll"

    const v4, 0x7f07009e

    const v5, 0x7f0b05ae

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1159
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "air_view_mode"

    const v4, 0x7f07000f

    const v5, 0x7f0b05b0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1160
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "pen_air_view_option"

    const v4, 0x7f07000f

    const v5, 0x7f0b05b0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1161
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "finger_air_view_option"

    const v4, 0x7f07000f

    const v5, 0x7f0b05b0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1162
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "key_air_button"

    const v4, 0x7f07000f

    const v5, 0x7f0b05b0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1165
    invoke-static {}, Lcom/android/settings/Utils;->DisableCloud()Z

    move-result v1

    if-nez v1, :cond_51

    .line 1167
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "com.sec.android.cloudagent"

    const/4 v4, 0x5

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1168
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "pref_add_samsung_account"

    const v4, 0x7f070020

    const/4 v5, 0x1

    const v6, 0x7f0b057a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1176
    :cond_51
    :goto_8
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "backup_data"

    const v4, 0x7f070077

    const v5, 0x7f0b057b

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1177
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "configure_account"

    const v4, 0x7f070077

    const v5, 0x7f0b057b

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1178
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "auto_restore"

    const v4, 0x7f070077

    const v5, 0x7f0b057b

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1179
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "master_clear"

    const v4, 0x7f070077

    const v5, 0x7f0b057b

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1182
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "location_toggle"

    const v4, 0x7f070051

    const v5, 0x7f0b0585

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1188
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "location_gps"

    const v4, 0x7f070051

    const v5, 0x7f0b0585

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1189
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "location_network"

    const v4, 0x7f070051

    const v5, 0x7f0b0585

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1192
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 1193
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "assisted_gps"

    const v4, 0x7f070051

    const v5, 0x7f0b0585

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1195
    :cond_52
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "key_my_place"

    const v4, 0x7f070051

    const v5, 0x7f0b0585

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1198
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "encryption"

    const v4, 0x7f070096

    const v5, 0x7f0b05c4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1199
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "sdEncpref"

    const v4, 0x7f070094

    const v5, 0x7f0b05c4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1200
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "sim_card_lock"

    const v4, 0x7f07008f

    const v5, 0x7f0b05c4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1201
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "show_password"

    const v4, 0x7f07008f

    const v5, 0x7f0b05c4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1202
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "device_administrators"

    const v4, 0x7f07008f

    const v5, 0x7f0b05c4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1203
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "toggle_install_applications"

    const v4, 0x7f07008f

    const v5, 0x7f0b05c4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1204
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "toggle_verify_applications"

    const v4, 0x7f07008f

    const v5, 0x7f0b05c4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1205
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "trusted_credentials"

    const v4, 0x7f07008f

    const v5, 0x7f0b05c4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1206
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "credentials_install_key"

    const v4, 0x7f07008f

    const v5, 0x7f0b05c4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1207
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "reset_credentials"

    const v4, 0x7f07008f

    const v5, 0x7f0b05c4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1210
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "auto_time"

    const v4, 0x7f070029

    const v5, 0x7f0b05bd

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1211
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "date"

    const v4, 0x7f070029

    const v5, 0x7f0b05bd

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1212
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "time"

    const v4, 0x7f070029

    const v5, 0x7f0b05bd

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1213
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "auto_zone"

    const v4, 0x7f070029

    const v5, 0x7f0b05bd

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1214
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "timezone"

    const v4, 0x7f070029

    const v5, 0x7f0b05bd

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1215
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "24 hour"

    const v4, 0x7f070029

    const v5, 0x7f0b05bd

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1216
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "date_format"

    const v4, 0x7f070029

    const v5, 0x7f0b05bd

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1219
    const-string v1, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 1220
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "bugreport"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v11, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1221
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "local_backup_password"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v11, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1222
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "keep_screen_on"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v11, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1223
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "hdcp_checking"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v11, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1224
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "enforce_read_external"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v11, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1225
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "enable_adb"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v11, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1226
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "bugreport_in_power"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v11, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1227
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "allow_mock_location"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v11, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1228
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "debug_app"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v11, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1229
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "wait_for_debugger"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v11, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1230
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "verify_apps_over_usb"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v11, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1231
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "show_touches"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v11, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1232
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "pointer_location"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v11, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1233
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "debug_layout"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v11, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1234
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "show_hw_screen_udpates"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v11, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1235
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "show_hw_layers_udpates"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v11, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1236
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "show_hw_overdraw"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v11, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1237
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "show_screen_updates"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v11, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1238
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "window_animation_scale"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v11, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1239
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "transition_animation_scale"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v11, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1240
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "animator_duration_scale"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v11, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1241
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "disable_overlays"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v11, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1242
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "force_hw_ui"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v11, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1243
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "force_msaa"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v11, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1244
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "overlay_display_devices"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v11, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1245
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "strict_mode"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v11, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1246
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "show_cpu_usage"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v11, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1247
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "track_frame_time"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v11, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1248
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "enable_opengl_traces"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v11, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1249
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "enable_traces"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v11, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1250
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "immediately_destroy_activities"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v11, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1251
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "app_process_limit"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v11, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1252
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "show_all_anrs"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v11, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1256
    :cond_53
    const-string v1, "ATT"

    const-string v3, "TMO"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 1257
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "system_update_settings_na_gsm"

    const v3, 0x7f07002d

    const v4, 0x7f0b05c8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1265
    :goto_9
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "status_info"

    const v3, 0x7f07002d

    const v4, 0x7f0b05c8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1266
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "container"

    const v3, 0x7f07002d

    const v4, 0x7f0b05c8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1267
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "device_name"

    const v3, 0x7f07002d

    const v4, 0x7f0b05c8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1268
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "device_model"

    const v3, 0x7f07002d

    const v4, 0x7f0b05c8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1269
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "firmware_version"

    const v3, 0x7f07002d

    const v4, 0x7f0b05c8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1270
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 1271
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "baseband_version"

    const v3, 0x7f07002d

    const v4, 0x7f0b05c8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1273
    :cond_54
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "kernel_version"

    const v3, 0x7f07002d

    const v4, 0x7f0b05c8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1274
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "build_number"

    const v3, 0x7f07002d

    const v4, 0x7f0b05c8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1275
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "selinux_status"

    const v3, 0x7f07002d

    const v4, 0x7f0b05c8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1278
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "unlock_set_none"

    const v2, 0x7f070092

    const-string v3, "unlock_set_or_change"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1279
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "unlock_set_biometric_weak"

    const v2, 0x7f070092

    const-string v3, "unlock_set_or_change"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1281
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "unlock_set_biometric_weak_with_voice"

    const v2, 0x7f070092

    const-string v3, "unlock_set_or_change"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1283
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "unlock_set_signature"

    const v2, 0x7f070092

    const-string v3, "unlock_set_or_change"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1284
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "unlock_set_pattern"

    const v2, 0x7f070092

    const-string v3, "unlock_set_or_change"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1285
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "unlock_set_pin"

    const v2, 0x7f070092

    const-string v3, "unlock_set_or_change"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1286
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "unlock_set_password"

    const v2, 0x7f070092

    const-string v3, "unlock_set_or_change"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1287
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "unlock_set_off"

    const v2, 0x7f070092

    const-string v3, "unlock_set_or_change"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1290
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "lock_screen_short_or_camera_widget"

    const v2, 0x7f070052

    const-string v3, "lock_screen_widget_options"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1291
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "lock_screen_clock_or_myprofile"

    const v2, 0x7f070052

    const-string v3, "lock_screen_widget_options"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1292
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "dualclock_settings"

    const v2, 0x7f070052

    const-string v3, "lock_screen_widget_options"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1293
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "clock_size"

    const v2, 0x7f070052

    const-string v3, "lock_screen_widget_options"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1294
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "lock_screen_date_and_year"

    const v2, 0x7f070052

    const-string v3, "lock_screen_widget_options"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1295
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "lock_screen_profile"

    const v2, 0x7f070052

    const-string v3, "lock_screen_widget_options"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1298
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "notification_panel_menu"

    const v2, 0x7f070064

    const-string v3, "notification_panel_edit"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1302
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "air_motion_indicator"

    const v2, 0x7f07000b

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1303
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "quick_glance"

    const v2, 0x7f07000b

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1304
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "air_scroll"

    const v2, 0x7f07000b

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1305
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "air_turn"

    const v2, 0x7f07000b

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1307
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "air_move"

    const v2, 0x7f07000b

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1312
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "air_call_accept"

    const v2, 0x7f07000b

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1315
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "pick_up_to_call_out"

    const v2, 0x7f07005b

    const-string v3, "motion"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1316
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "pick_up"

    const v2, 0x7f07005b

    const-string v3, "motion"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1317
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "tilt"

    const v2, 0x7f07005b

    const-string v3, "motion"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1319
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "pan_to_browse_image"

    const v2, 0x7f07005b

    const-string v3, "motion"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1321
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "turn_over"

    const v2, 0x7f07005b

    const-string v3, "motion"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1324
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "palm_swipe"

    const v2, 0x7f070048

    const-string v3, "surface"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1325
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "palm_touch"

    const v2, 0x7f070048

    const-string v3, "surface"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1328
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "radio_scroll_mode_0"

    const v2, 0x7f07009f

    const-string v3, "smartscreen_scroll"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1329
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "radio_scroll_mode_1"

    const v2, 0x7f07009f

    const-string v3, "smartscreen_scroll"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1330
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_sensitivity"

    const v2, 0x7f07009f

    const-string v3, "smartscreen_scroll"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1331
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_visual_feedback_icon"

    const v2, 0x7f07009f

    const-string v3, "smartscreen_scroll"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1334
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "key_pen_pointer"

    const v2, 0x7f070068

    const-string v3, "pen_air_view_option"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1335
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "key_pen_information_preview"

    const v2, 0x7f070068

    const-string v3, "pen_air_view_option"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1336
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "key_pen_progress_preview"

    const v2, 0x7f070068

    const-string v3, "pen_air_view_option"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1337
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "key_pen_speed_dial_preview"

    const v2, 0x7f070068

    const-string v3, "pen_air_view_option"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1338
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "key_pen_webpage_magnifier"

    const v2, 0x7f070068

    const-string v3, "pen_air_view_option"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1339
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "key_pen_icon_label"

    const v2, 0x7f070068

    const-string v3, "pen_air_view_option"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1340
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "key_pen_list_scroll"

    const v2, 0x7f070068

    const-string v3, "pen_air_view_option"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1341
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "key_pen_sound_and_haptic_feedback"

    const v2, 0x7f070068

    const-string v3, "pen_air_view_option"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1344
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "information_preview"

    const v2, 0x7f070044

    const-string v3, "finger_air_view_option"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1345
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "progress_bar_preview"

    const v2, 0x7f070044

    const-string v3, "finger_air_view_option"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1346
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "speed_dial_tip"

    const v2, 0x7f070044

    const-string v3, "finger_air_view_option"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1347
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "magnifier"

    const v2, 0x7f070044

    const-string v3, "finger_air_view_option"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1348
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "sound_and_haptic_feedback"

    const v2, 0x7f070044

    const-string v3, "finger_air_view_option"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1352
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "time_and_date"

    const v2, 0x7f070078

    const-string v3, "quick_glance"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1353
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "notification"

    const v2, 0x7f070078

    const-string v3, "quick_glance"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1354
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "missed_call"

    const v2, 0x7f070078

    const-string v3, "quick_glance"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1355
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "unread_message"

    const v2, 0x7f070078

    const-string v3, "quick_glance"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1356
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "battery"

    const v2, 0x7f070078

    const-string v3, "quick_glance"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1357
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "current_music"

    const v2, 0x7f070078

    const-string v3, "quick_glance"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1359
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "single_photo_view"

    const v2, 0x7f07000e

    const-string v3, "air_turn"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1361
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "internet_window"

    const v2, 0x7f07000e

    const-string v3, "air_turn"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1362
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "now_playing_on_music"

    const v2, 0x7f07000e

    const-string v3, "air_turn"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1363
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "bgm_on_lock_screen"

    const v2, 0x7f07000e

    const-string v3, "air_turn"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1364
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "note_page_view"

    const v2, 0x7f07000e

    const-string v3, "air_turn"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1366
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "advanced_air_call_accept_auto_start_speaker"

    const v2, 0x7f07007b

    const-string v3, "air_call_accept"

    invoke-direct {p0, v1, v2, v9, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 997
    :cond_55
    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v3, "vpn_settings"

    const v4, 0x7f0700cc

    const v5, 0x7f0b058a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 1169
    :catch_1
    move-exception v1

    .line 1170
    const-string v1, "SettingsSearchUtils"

    const-string v3, "Cloud package not found"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1258
    :cond_56
    if-eqz v0, :cond_57

    .line 1260
    :cond_57
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1261
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "system_update_settings_vzw"

    const v3, 0x7f07002d

    const v4, 0x7f0b05c8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 1263
    :cond_58
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "software_update_settings"

    const v3, 0x7f07002d

    const v4, 0x7f0b05c8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9
.end method

.method private loadMenufromCSCXml()V
    .locals 12

    .prologue
    .line 1483
    const/4 v1, 0x0

    .line 1485
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 1486
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1487
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/etc/setting_search_filter.xml"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1489
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1490
    new-instance v2, Ljava/io/FileReader;

    new-instance v0, Ljava/io/File;

    const-string v3, "/system/etc/setting_search_filter.xml"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    .line 1491
    :try_start_1
    invoke-interface {v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1492
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 1497
    :cond_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1500
    :cond_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1501
    const-string v1, "SearchMenuFilter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1502
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XML document must start with <preference-headers> tag; found"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " at "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1589
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1591
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1599
    if-eqz v1, :cond_2

    .line 1601
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 1607
    :cond_2
    :goto_1
    return-void

    .line 1507
    :cond_3
    :try_start_4
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 1509
    :cond_4
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v5, :cond_12

    .line 1510
    :cond_5
    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    .line 1514
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 1515
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1516
    const-string v1, "AddMenuList"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1517
    const-string v1, "SettingsSearchUtils"

    const-string v3, "node name : AddMenu"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1520
    :cond_6
    :goto_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_b

    const/4 v6, 0x3

    if-ne v3, v6, :cond_7

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v1, :cond_b

    .line 1521
    :cond_7
    const/4 v6, 0x3

    if-eq v3, v6, :cond_6

    const/4 v6, 0x4

    if-eq v3, v6, :cond_6

    .line 1525
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1526
    const-string v3, "menuInfo"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1528
    const/4 v3, 0x0

    invoke-interface {v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 1529
    const/4 v6, 0x1

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 1530
    iget-object v7, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "xml"

    iget-object v9, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1532
    const/4 v7, 0x2

    invoke-interface {v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1534
    const/4 v8, 0x3

    invoke-interface {v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    .line 1535
    if-nez v7, :cond_8

    .line 1536
    iget-object v9, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "id"

    iget-object v11, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v3, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1538
    sget-object v9, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v6, v7, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 1592
    :catch_1
    move-exception v0

    .line 1594
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1599
    if-eqz v2, :cond_2

    .line 1601
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1

    .line 1602
    :catch_2
    move-exception v0

    .line 1603
    const-string v1, "SettingsSearchUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cscFile IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1540
    :cond_8
    const/4 v9, 0x1

    if-ne v7, v9, :cond_9

    .line 1541
    :try_start_7
    iget-object v9, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "id"

    iget-object v11, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v8, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 1544
    sget-object v9, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v6, v7, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_2

    .line 1595
    :catch_3
    move-exception v0

    .line 1597
    :goto_4
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1599
    if-eqz v2, :cond_2

    .line 1601
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_1

    .line 1602
    :catch_4
    move-exception v0

    .line 1603
    const-string v1, "SettingsSearchUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cscFile IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1546
    :cond_9
    :try_start_a
    sget-object v9, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v6, v7, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_2

    .line 1599
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v2, :cond_a

    .line 1601
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 1604
    :cond_a
    :goto_6
    throw v0

    .line 1552
    :cond_b
    :try_start_c
    const-string v1, "RemoveMenuList"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1553
    const-string v0, "SettingsSearchUtils"

    const-string v1, "node name : RemoveMenu"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 1556
    :cond_c
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v6, :cond_4

    .line 1557
    :cond_d
    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_c

    .line 1561
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1562
    const-string v1, "menuInfo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1563
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 1564
    const/4 v0, 0x1

    invoke-interface {v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 1565
    iget-object v3, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v7, "xml"

    iget-object v8, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v0, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 1567
    const/4 v0, 0x2

    invoke-interface {v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1569
    const/4 v0, 0x3

    invoke-interface {v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 1570
    if-nez v8, :cond_10

    .line 1571
    iget-object v3, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v9, "id"

    iget-object v10, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v1, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1579
    :cond_e
    :goto_7
    const/4 v3, 0x0

    :goto_8
    sget-object v9, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_c

    .line 1580
    invoke-direct {p0, v1, v7, v8, v0}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v9

    invoke-direct {p0, v3, v9}, Lcom/android/settings/search/SettingsSearchUtils;->compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 1582
    sget-object v9, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1579
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1573
    :cond_10
    const/4 v3, 0x1

    if-ne v8, v3, :cond_e

    .line 1574
    iget-object v3, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v9, "id"

    iget-object v10, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v0, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    move-result-object v0

    goto :goto_7

    :cond_11
    move-object v2, v1

    .line 1599
    :cond_12
    if-eqz v2, :cond_2

    .line 1601
    :try_start_d
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_1

    .line 1602
    :catch_5
    move-exception v0

    .line 1603
    const-string v1, "SettingsSearchUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cscFile IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1602
    :catch_6
    move-exception v0

    .line 1603
    const-string v1, "SettingsSearchUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cscFile IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1602
    :catch_7
    move-exception v1

    .line 1603
    const-string v2, "SettingsSearchUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cscFile IOException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1599
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto/16 :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto/16 :goto_5

    .line 1595
    :catch_8
    move-exception v0

    move-object v2, v1

    goto/16 :goto_4

    .line 1592
    :catch_9
    move-exception v0

    move-object v2, v1

    goto/16 :goto_3

    .line 1589
    :catch_a
    move-exception v0

    goto/16 :goto_0
.end method

.method private menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;
    .locals 1
    .parameter "key"
    .parameter "fileId"
    .parameter "paretnType"
    .parameter "parentKey"

    .prologue
    .line 1372
    new-instance v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    invoke-direct {v0}, Lcom/android/settings/search/SearchItem$MenuInfoItem;-><init>()V

    .line 1374
    .local v0, infoItem:Lcom/android/settings/search/SearchItem$MenuInfoItem;
    iput-object p1, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->id_key:Ljava/lang/String;

    .line 1375
    iput p2, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->fileId:I

    .line 1376
    iput p3, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->parentType:I

    .line 1377
    iput-object p4, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->parentKey:Ljava/lang/String;

    .line 1379
    return-object v0
.end method


# virtual methods
.method public getAddSearchMenuInCode()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/32 v8, 0x7f090e2f

    const v7, 0x7f0b0596

    const/4 v6, 0x2

    const v5, 0x7f0b05c4

    const/4 v4, 0x0

    .line 1629
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1633
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecureForSetting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1634
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1635
    new-instance v0, Lcom/android/settings/search/SearchItem;

    invoke-direct {v0}, Lcom/android/settings/search/SearchItem;-><init>()V

    .line 1636
    const-string v2, "multiple_lock_screenswitch"

    iput-object v2, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    .line 1637
    const-wide/32 v2, 0x7f0911dc

    iput-wide v2, v0, Lcom/android/settings/search/SearchItem;->titleResId:J

    .line 1638
    const-wide/32 v2, 0x7f0911dd

    iput-wide v2, v0, Lcom/android/settings/search/SearchItem;->summaryResId:J

    .line 1639
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    .line 1640
    const/4 v2, 0x1

    iput v2, v0, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 1662
    :cond_0
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Setting_EnableSimChangeAlertOnly4FindMobile"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1664
    new-instance v0, Lcom/android/settings/search/SearchItem;

    invoke-direct {v0}, Lcom/android/settings/search/SearchItem;-><init>()V

    .line 1665
    const-string v2, "RemoteControls"

    iput-object v2, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    .line 1666
    const-wide/32 v2, 0x7f090b52

    iput-wide v2, v0, Lcom/android/settings/search/SearchItem;->titleResId:J

    .line 1667
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    .line 1668
    iput v4, v0, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 1669
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1671
    :cond_1
    const-string v0, "SettingsSearchUtils"

    const-string v2, "SecProductFeature_IMS.SEC_PRODUCT_FEATURE_IMS_TMUS_COMMONIMS_WFC: false"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1682
    new-instance v0, Lcom/android/settings/search/SearchItem;

    invoke-direct {v0}, Lcom/android/settings/search/SearchItem;-><init>()V

    .line 1683
    const-string v2, "SettingsSearchUtils"

    const-string v3, "change password."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    const-string v2, "mPhonePasswordPreference"

    iput-object v2, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    .line 1685
    const-wide/32 v2, 0x7f090061

    iput-wide v2, v0, Lcom/android/settings/search/SearchItem;->titleResId:J

    .line 1686
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    .line 1687
    iput v4, v0, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 1688
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1690
    :cond_2
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1691
    new-instance v0, Lcom/android/settings/search/SearchItem;

    invoke-direct {v0}, Lcom/android/settings/search/SearchItem;-><init>()V

    .line 1692
    const-string v2, "SIMAlert"

    iput-object v2, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    .line 1693
    const-wide/32 v2, 0x7f090b4c

    iput-wide v2, v0, Lcom/android/settings/search/SearchItem;->titleResId:J

    .line 1694
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    .line 1695
    iput v4, v0, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 1696
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1699
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Setting_EnableSimChangeAlertOnly4FindMobile"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1700
    new-instance v0, Lcom/android/settings/search/SearchItem;

    invoke-direct {v0}, Lcom/android/settings/search/SearchItem;-><init>()V

    .line 1701
    const-string v2, "GoToSamsungDive"

    iput-object v2, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    .line 1702
    const-wide/32 v2, 0x7f090b67

    iput-wide v2, v0, Lcom/android/settings/search/SearchItem;->titleResId:J

    .line 1703
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    .line 1704
    iput v4, v0, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 1705
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1710
    :cond_4
    new-instance v2, Lcom/android/settings/search/SearchItem;

    invoke-direct {v2}, Lcom/android/settings/search/SearchItem;-><init>()V

    .line 1711
    const-string v0, "note_page_view"

    iput-object v0, v2, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    .line 1712
    iput-wide v8, v2, Lcom/android/settings/search/SearchItem;->titleResId:J

    .line 1713
    const-wide/32 v3, 0x7f090e33

    iput-wide v3, v2, Lcom/android/settings/search/SearchItem;->summaryResId:J

    .line 1714
    const-string v0, "air_turn"

    iput-object v0, v2, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    .line 1715
    iput v6, v2, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 1716
    const-string v0, "com.samsung.android.snote"

    .line 1719
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1721
    if-eqz v0, :cond_6

    .line 1722
    const-string v0, "SettingsSearchUtils"

    const-string v3, "S note is Installed."

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    const-wide/32 v3, 0x7f090e31

    iput-wide v3, v2, Lcom/android/settings/search/SearchItem;->titleResId:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1731
    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1734
    return-object v1

    .line 1642
    :cond_5
    new-instance v0, Lcom/android/settings/search/SearchItem;

    invoke-direct {v0}, Lcom/android/settings/search/SearchItem;-><init>()V

    .line 1643
    const-string v2, "multiple_lock_screen"

    iput-object v2, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    .line 1644
    const-wide/32 v2, 0x7f0911dc

    iput-wide v2, v0, Lcom/android/settings/search/SearchItem;->titleResId:J

    .line 1645
    const-wide/32 v2, 0x7f0911dd

    iput-wide v2, v0, Lcom/android/settings/search/SearchItem;->summaryResId:J

    .line 1646
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    .line 1647
    iput v6, v0, Lcom/android/settings/search/SearchItem;->menuType:I

    .line 1648
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1725
    :cond_6
    const-wide/32 v3, 0x7f090e2f

    :try_start_1
    iput-wide v3, v2, Lcom/android/settings/search/SearchItem;->titleResId:J
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1727
    :catch_0
    move-exception v0

    .line 1728
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1729
    const-string v0, "SettingsSearchUtils"

    const-string v3, "S note is NOT Installed"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getSearchMenuInfo()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SearchItem$MenuInfoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1624
    const-string v0, "SettingsSearchUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMenuInfoItem count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    return-object v0
.end method
