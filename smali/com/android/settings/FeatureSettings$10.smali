.class Lcom/android/settings/FeatureSettings$10;
.super Ljava/lang/Object;
.source "FeatureSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FeatureSettings;

.field final synthetic val$setting_type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/FeatureSettings;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1171
    iput-object p1, p0, Lcom/android/settings/FeatureSettings$10;->this$0:Lcom/android/settings/FeatureSettings;

    iput-object p2, p0, Lcom/android/settings/FeatureSettings$10;->val$setting_type:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v10, 0x1

    .line 1173
    iget-object v8, p0, Lcom/android/settings/FeatureSettings$10;->this$0:Lcom/android/settings/FeatureSettings;

    invoke-virtual {v8}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 1174
    const-string v8, "air_motion"

    iget-object v9, p0, Lcom/android/settings/FeatureSettings$10;->val$setting_type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1175
    iget-object v8, p0, Lcom/android/settings/FeatureSettings$10;->this$0:Lcom/android/settings/FeatureSettings;

    iget-object v8, v8, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_engine"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1176
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1177
    .local v2, motion_changed:Landroid/content/Intent;
    const-string v8, "isEnable"

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1178
    iget-object v8, p0, Lcom/android/settings/FeatureSettings$10;->this$0:Lcom/android/settings/FeatureSettings;

    invoke-virtual {v8}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1180
    iget-object v8, p0, Lcom/android/settings/FeatureSettings$10;->this$0:Lcom/android/settings/FeatureSettings;

    iget-object v8, v8, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1181
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.sec.gesture.AIR_SCROLL_SETTINGS_CHANGED"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1182
    .local v4, motion_scroll_changed:Landroid/content/Intent;
    const-string v8, "isEnable"

    invoke-virtual {v4, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1183
    iget-object v8, p0, Lcom/android/settings/FeatureSettings$10;->this$0:Lcom/android/settings/FeatureSettings;

    invoke-virtual {v8}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1185
    iget-object v8, p0, Lcom/android/settings/FeatureSettings$10;->this$0:Lcom/android/settings/FeatureSettings;

    iget-object v8, v8, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_turn"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1186
    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.sec.gesture.AIR_BROWSE_SETTINGS_CHANGED"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1187
    .local v1, motion_browse_changed:Landroid/content/Intent;
    const-string v8, "isEnable"

    invoke-virtual {v1, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1188
    iget-object v8, p0, Lcom/android/settings/FeatureSettings$10;->this$0:Lcom/android/settings/FeatureSettings;

    invoke-virtual {v8}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1190
    iget-object v8, p0, Lcom/android/settings/FeatureSettings$10;->this$0:Lcom/android/settings/FeatureSettings;

    iget-object v8, v8, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_item_move"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1191
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.sec.gesture.AIR_MOVE_SETTINGS_CHANGED"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1192
    .local v3, motion_move_changed:Landroid/content/Intent;
    const-string v8, "isEnable"

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1193
    iget-object v8, p0, Lcom/android/settings/FeatureSettings$10;->this$0:Lcom/android/settings/FeatureSettings;

    invoke-virtual {v8}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1223
    .end local v1           #motion_browse_changed:Landroid/content/Intent;
    .end local v2           #motion_changed:Landroid/content/Intent;
    .end local v3           #motion_move_changed:Landroid/content/Intent;
    .end local v4           #motion_scroll_changed:Landroid/content/Intent;
    :cond_0
    :goto_0
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.settings.action.talkback_off"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1224
    .local v7, talk_back_off:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/settings/FeatureSettings$10;->this$0:Lcom/android/settings/FeatureSettings;

    invoke-virtual {v8}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1225
    return-void

    .line 1200
    .end local v7           #talk_back_off:Landroid/content/Intent;
    :cond_1
    const-string v8, "air_view"

    iget-object v9, p0, Lcom/android/settings/FeatureSettings$10;->val$setting_type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1201
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1202
    iget-object v8, p0, Lcom/android/settings/FeatureSettings$10;->this$0:Lcom/android/settings/FeatureSettings;

    iget-object v8, v8, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_view_master_onoff"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1207
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1208
    .local v0, finger_air_view_changed:Landroid/content/Intent;
    const-string v8, "isEnable"

    invoke-virtual {v0, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1209
    iget-object v8, p0, Lcom/android/settings/FeatureSettings$10;->this$0:Lcom/android/settings/FeatureSettings;

    invoke-virtual {v8}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1204
    .end local v0           #finger_air_view_changed:Landroid/content/Intent;
    :cond_2
    iget-object v8, p0, Lcom/android/settings/FeatureSettings$10;->this$0:Lcom/android/settings/FeatureSettings;

    iget-object v8, v8, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "finger_air_view"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 1210
    :cond_3
    const-string v8, "smart_stay"

    iget-object v9, p0, Lcom/android/settings/FeatureSettings$10;->val$setting_type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1211
    iget-object v8, p0, Lcom/android/settings/FeatureSettings$10;->this$0:Lcom/android/settings/FeatureSettings;

    iget-object v8, v8, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "intelligent_sleep_mode"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1212
    :cond_4
    const-string v8, "smart_pause"

    iget-object v9, p0, Lcom/android/settings/FeatureSettings$10;->val$setting_type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1213
    iget-object v8, p0, Lcom/android/settings/FeatureSettings$10;->this$0:Lcom/android/settings/FeatureSettings;

    iget-object v8, v8, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "smart_pause"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1214
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1215
    .local v5, smart_pause_changed:Landroid/content/Intent;
    const-string v8, "isEnable"

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1216
    iget-object v8, p0, Lcom/android/settings/FeatureSettings$10;->this$0:Lcom/android/settings/FeatureSettings;

    invoke-virtual {v8}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1217
    .end local v5           #smart_pause_changed:Landroid/content/Intent;
    :cond_5
    const-string v8, "smart_scroll"

    iget-object v9, p0, Lcom/android/settings/FeatureSettings$10;->val$setting_type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1218
    iget-object v8, p0, Lcom/android/settings/FeatureSettings$10;->this$0:Lcom/android/settings/FeatureSettings;

    iget-object v8, v8, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "smart_scroll"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1219
    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1220
    .local v6, smart_scroll_changed:Landroid/content/Intent;
    const-string v8, "isEnable"

    invoke-virtual {v6, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1221
    iget-object v8, p0, Lcom/android/settings/FeatureSettings$10;->this$0:Lcom/android/settings/FeatureSettings;

    invoke-virtual {v8}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
