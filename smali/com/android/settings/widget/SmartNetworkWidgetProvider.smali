.class public Lcom/android/settings/widget/SmartNetworkWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SmartNetworkWidgetProvider.java"


# static fields
.field static final THIS_APPWIDGET:Landroid/content/ComponentName;


# instance fields
.field context:Landroid/content/Context;

.field private mGuideDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.widget.SmartNetworkWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/widget/SmartNetworkWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/widget/SmartNetworkWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private showGuideDialog(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 162
    iget-object v4, p0, Lcom/android/settings/widget/SmartNetworkWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 163
    iget-object v4, p0, Lcom/android/settings/widget/SmartNetworkWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 164
    iput-object v7, p0, Lcom/android/settings/widget/SmartNetworkWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    .line 167
    :cond_0
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 168
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040175

    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 169
    .local v3, layout:Landroid/view/View;
    const v4, 0x7f0b00ee

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 171
    .local v0, checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 172
    .local v1, guideDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f090044

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/widget/SmartNetworkWidgetProvider$1;

    invoke-direct {v6, p0, v0, p1}, Lcom/android/settings/widget/SmartNetworkWidgetProvider$1;-><init>(Lcom/android/settings/widget/SmartNetworkWidgetProvider;Lcom/sec/android/touchwiz/widget/TwCheckBox;Landroid/content/Context;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 185
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/widget/SmartNetworkWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    .line 186
    iget-object v4, p0, Lcom/android/settings/widget/SmartNetworkWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 187
    iget-object v4, p0, Lcom/android/settings/widget/SmartNetworkWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 188
    return-void
.end method


# virtual methods
.method public disableGuideDialog(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 75
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 76
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 77
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "smart_network_guide_sharedpref"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 78
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, -0x1

    .line 110
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 111
    const-string v1, "SmartNetworkWidgetProvider"

    const-string v2, "onReceive"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iput-object p1, p0, Lcom/android/settings/widget/SmartNetworkWidgetProvider;->context:Landroid/content/Context;

    .line 114
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, intentAction:Ljava/lang/String;
    const-string v1, "com.android.phone.smartnetwork.widget_smartnetwork_toggle_action"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SmartNetworkWidgetProvider;->shouldShowGuideDialog(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_network"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_1

    .line 120
    invoke-direct {p0, p1}, Lcom/android/settings/widget/SmartNetworkWidgetProvider;->showGuideDialog(Landroid/content/Context;)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/widget/SmartNetworkWidgetProvider;->toggleValue()V

    .line 124
    const-string v1, "SmartNetworkWidgetProvider"

    const-string v2, "onReceive(): WIDGET_SMART_NETWORK_TOGGLE_ACTION  - no guide"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0, p1, v4}, Lcom/android/settings/widget/SmartNetworkWidgetProvider;->updateView(Landroid/content/Context;I)V

    goto :goto_0

    .line 127
    :cond_2
    const-string v1, "com.android.phone.smartnetwork.widget_reload_action"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    const-string v1, "SmartNetworkWidgetProvider"

    const-string v2, "onReceive(): WIDGET_SMART_NETWORK_RELOAD_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0, p1, v4}, Lcom/android/settings/widget/SmartNetworkWidgetProvider;->updateView(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/widget/SmartNetworkWidgetProvider;->context:Landroid/content/Context;

    .line 59
    const-string v1, "SmartNetworkWidgetProvider"

    const-string v2, "onUpdate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    array-length v0, p3

    .line 62
    .local v0, N:I
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/widget/SmartNetworkWidgetProvider;->updateView(Landroid/content/Context;I)V

    .line 63
    return-void
.end method

.method public shouldShowGuideDialog(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 66
    const/4 v1, 0x1

    .line 68
    .local v1, result:Z
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 69
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v2, "smart_network_guide_sharedpref"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 71
    return v1
.end method

.method public toggleValue()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 82
    iget-object v5, p0, Lcom/android/settings/widget/SmartNetworkWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "smart_network"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_0

    move v0, v3

    .line 85
    .local v0, isOn:Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings/widget/SmartNetworkWidgetProvider;->context:Landroid/content/Context;

    const-string v6, "statusbar"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    .line 86
    .local v2, mStatusBar:Landroid/app/StatusBarManager;
    const-string v5, "smart_network"

    const v6, 0x7f020423

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v4, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 88
    if-eqz v0, :cond_1

    .line 89
    iget-object v3, p0, Lcom/android/settings/widget/SmartNetworkWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "smart_network"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 91
    iget-object v3, p0, Lcom/android/settings/widget/SmartNetworkWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "wifi_sleep_policy"

    const/4 v6, 0x2

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 93
    const-string v3, "smart_network"

    invoke-virtual {v2, v3, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 102
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SMARTNETWORK_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v1, mIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/widget/SmartNetworkWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 104
    return-void

    .end local v0           #isOn:Z
    .end local v1           #mIntent:Landroid/content/Intent;
    .end local v2           #mStatusBar:Landroid/app/StatusBarManager;
    :cond_0
    move v0, v4

    .line 82
    goto :goto_0

    .line 95
    .restart local v0       #isOn:Z
    .restart local v2       #mStatusBar:Landroid/app/StatusBarManager;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/widget/SmartNetworkWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_network"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 97
    iget-object v4, p0, Lcom/android/settings/widget/SmartNetworkWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_sleep_policy"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 99
    const-string v4, "smart_network"

    invoke-virtual {v2, v4, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method updateToggleButton(Landroid/widget/RemoteViews;)V
    .locals 7
    .parameter "views"

    .prologue
    const v6, 0x7f0b03f8

    const v5, 0x7f0b03f7

    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 149
    iget-object v2, p0, Lcom/android/settings/widget/SmartNetworkWidgetProvider;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_network"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 152
    .local v0, isOn:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {p1, v5, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 154
    invoke-virtual {p1, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 159
    :goto_1
    return-void

    .end local v0           #isOn:Z
    :cond_0
    move v0, v1

    .line 149
    goto :goto_0

    .line 156
    .restart local v0       #isOn:Z
    :cond_1
    invoke-virtual {p1, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 157
    invoke-virtual {p1, v6, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1
.end method

.method updateView(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 135
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f040174

    invoke-direct {v1, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 137
    .local v1, views:Landroid/widget/RemoteViews;
    const-string v3, "SmartNetworkWidgetProvider"

    const-string v4, "updateView"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v3, 0x0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.phone.smartnetwork.widget_smartnetwork_toggle_action"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x800

    invoke-static {p1, v3, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 141
    .local v0, toggleSmartNetwork:Landroid/app/PendingIntent;
    const v3, 0x7f0b03e5

    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 142
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SmartNetworkWidgetProvider;->updateToggleButton(Landroid/widget/RemoteViews;)V

    .line 144
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 145
    .local v2, wm:Landroid/appwidget/AppWidgetManager;
    sget-object v3, Lcom/android/settings/widget/SmartNetworkWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 146
    return-void
.end method
