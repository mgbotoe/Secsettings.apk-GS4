.class public Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;
.super Landroid/app/Dialog;
.source "DateTimeIntentReceiver.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DateTimeIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DateTimeDialog"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/settings/DateTimeIntentReceiver;


# direct methods
.method public constructor <init>(Lcom/android/settings/DateTimeIntentReceiver;Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .parameter
    .parameter "context"
    .parameter "str"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    .line 115
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 112
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    .line 319
    new-instance v9, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog$1;

    invoke-direct {v9, p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog$1;-><init>(Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;)V

    iput-object v9, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    iput-object p2, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    .line 117
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->requestWindowFeature(I)Z

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v9, v10}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x200

    const/16 v11, 0x200

    invoke-virtual {v9, v10, v11}, Landroid/view/Window;->setFlags(II)V

    .line 125
    const-string v9, "ro.build.characteristics"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, deviceType:Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string v9, "tablet"

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 127
    const/4 v3, 0x1

    .line 129
    .local v3, canStatusBarHide:Z
    :try_start_0
    const-string v9, "window"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v8

    .line 131
    .local v8, wm:Landroid/view/IWindowManager;
    invoke-interface {v8}, Landroid/view/IWindowManager;->hasSystemNavBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-nez v9, :cond_0

    const/4 v3, 0x1

    .line 137
    .end local v8           #wm:Landroid/view/IWindowManager;
    :goto_0
    if-eqz v3, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x30

    invoke-virtual {v9, v10}, Landroid/view/Window;->setGravity(I)V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 140
    .local v0, WMLP:Landroid/view/WindowManager$LayoutParams;
    const/16 v9, -0x23

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 158
    .end local v3           #canStatusBarHide:Z
    :goto_1
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->setCanceledOnTouchOutside(Z)V

    .line 159
    const v9, 0x7f040061

    invoke-virtual {p0, v9}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->setContentView(I)V

    .line 160
    invoke-virtual {p0, p3}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 162
    const v9, 0x7f0b0119

    invoke-virtual {p0, v9}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    #setter for: Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;
    invoke-static {p1, v9}, Lcom/android/settings/DateTimeIntentReceiver;->access$002(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/Button;)Landroid/widget/Button;

    .line 163
    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v9, 0x7f0b010b

    invoke-virtual {p0, v9}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    #setter for: Lcom/android/settings/DateTimeIntentReceiver;->close_button:Landroid/widget/Button;
    invoke-static {p1, v9}, Lcom/android/settings/DateTimeIntentReceiver;->access$102(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/Button;)Landroid/widget/Button;

    .line 165
    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->close_button:Landroid/widget/Button;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$100(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const v9, 0x7f0b0110

    invoke-virtual {p0, v9}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    #setter for: Lcom/android/settings/DateTimeIntentReceiver;->autoDateTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {p1, v9}, Lcom/android/settings/DateTimeIntentReceiver;->access$202(Lcom/android/settings/DateTimeIntentReceiver;Lcom/sec/android/touchwiz/widget/TwCheckBox;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 167
    const v9, 0x7f0b010e

    invoke-virtual {p0, v9}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    #setter for: Lcom/android/settings/DateTimeIntentReceiver;->autoDateTimeLayout:Landroid/widget/LinearLayout;
    invoke-static {p1, v9}, Lcom/android/settings/DateTimeIntentReceiver;->access$302(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 168
    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoDateTimeLayout:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$300(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    const v9, 0x7f0b0114

    invoke-virtual {p0, v9}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    #setter for: Lcom/android/settings/DateTimeIntentReceiver;->autoTimezone:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {p1, v9}, Lcom/android/settings/DateTimeIntentReceiver;->access$402(Lcom/android/settings/DateTimeIntentReceiver;Lcom/sec/android/touchwiz/widget/TwCheckBox;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 170
    const v9, 0x7f0b0111

    invoke-virtual {p0, v9}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    #setter for: Lcom/android/settings/DateTimeIntentReceiver;->autoTimezoneLayout:Landroid/widget/LinearLayout;
    invoke-static {p1, v9}, Lcom/android/settings/DateTimeIntentReceiver;->access$502(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 171
    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoTimezoneLayout:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$500(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    const v9, 0x7f0b0118

    invoke-virtual {p0, v9}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    #setter for: Lcom/android/settings/DateTimeIntentReceiver;->timeFormat:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {p1, v9}, Lcom/android/settings/DateTimeIntentReceiver;->access$602(Lcom/android/settings/DateTimeIntentReceiver;Lcom/sec/android/touchwiz/widget/TwCheckBox;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 173
    const v9, 0x7f0b0115

    invoke-virtual {p0, v9}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    #setter for: Lcom/android/settings/DateTimeIntentReceiver;->timeFormatLayout:Landroid/widget/LinearLayout;
    invoke-static {p1, v9}, Lcom/android/settings/DateTimeIntentReceiver;->access$702(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 174
    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->timeFormatLayout:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$700(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    #setter for: Lcom/android/settings/DateTimeIntentReceiver;->resources:Landroid/content/res/Resources;
    invoke-static {p1, v9}, Lcom/android/settings/DateTimeIntentReceiver;->access$802(Lcom/android/settings/DateTimeIntentReceiver;Landroid/content/res/Resources;)Landroid/content/res/Resources;

    .line 178
    const v9, 0x7f0b010c

    invoke-virtual {p0, v9}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    #setter for: Lcom/android/settings/DateTimeIntentReceiver;->datetime:Landroid/widget/TextView;
    invoke-static {p1, v9}, Lcom/android/settings/DateTimeIntentReceiver;->access$902(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 179
    const v9, 0x7f0b010d

    invoke-virtual {p0, v9}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    #setter for: Lcom/android/settings/DateTimeIntentReceiver;->timezone:Landroid/widget/TextView;
    invoke-static {p1, v9}, Lcom/android/settings/DateTimeIntentReceiver;->access$1002(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 180
    const v9, 0x7f0b0117

    invoke-virtual {p0, v9}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    #setter for: Lcom/android/settings/DateTimeIntentReceiver;->timeformat:Landroid/widget/TextView;
    invoke-static {p1, v9}, Lcom/android/settings/DateTimeIntentReceiver;->access$1102(Lcom/android/settings/DateTimeIntentReceiver;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 182
    const/4 v1, 0x0

    .line 183
    .local v1, autoTimeEnabled:Z
    const/4 v2, 0x0

    .line 185
    .local v2, autoTimeZoneEnabled:Z
    invoke-static {p2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 186
    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v9

    const v10, 0x7f090187

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(I)V

    .line 187
    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoDateTimeLayout:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$300(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 188
    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoTimezoneLayout:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$500(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 193
    :goto_2
    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoDateTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$200(Lcom/android/settings/DateTimeIntentReceiver;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 194
    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoTimezone:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$400(Lcom/android/settings/DateTimeIntentReceiver;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 195
    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->timeFormat:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {p1}, Lcom/android/settings/DateTimeIntentReceiver;->access$600(Lcom/android/settings/DateTimeIntentReceiver;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v9

    invoke-direct {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->is24Hour()Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 200
    :try_start_1
    iget-object v9, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "auto_time_zone"

    invoke-static {v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 207
    :goto_3
    invoke-virtual {p0, p2}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 208
    invoke-direct {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->registerTimeBroadcast()V

    .line 210
    return-void

    .line 131
    .end local v0           #WMLP:Landroid/view/WindowManager$LayoutParams;
    .end local v1           #autoTimeEnabled:Z
    .end local v2           #autoTimeZoneEnabled:Z
    .restart local v3       #canStatusBarHide:Z
    .restart local v8       #wm:Landroid/view/IWindowManager;
    :cond_0
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 132
    .end local v8           #wm:Landroid/view/IWindowManager;
    :catch_0
    move-exception v5

    .line 133
    .local v5, e:Landroid/os/RemoteException;
    const-string v9, "DateTimeIntentReceiver"

    const-string v10, "Failing checking whether status bar can hide"

    invoke-static {v9, v10, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 144
    .end local v5           #e:Landroid/os/RemoteException;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x55

    invoke-virtual {v9, v10}, Landroid/view/Window;->setGravity(I)V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 146
    .restart local v0       #WMLP:Landroid/view/WindowManager$LayoutParams;
    const/4 v9, 0x6

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 147
    const/16 v9, -0x23

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_1

    .line 152
    .end local v0           #WMLP:Landroid/view/WindowManager$LayoutParams;
    .end local v3           #canStatusBarHide:Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x30

    invoke-virtual {v9, v10}, Landroid/view/Window;->setGravity(I)V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 154
    .restart local v0       #WMLP:Landroid/view/WindowManager$LayoutParams;
    const/16 v9, -0x23

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_1

    .line 190
    .restart local v1       #autoTimeEnabled:Z
    .restart local v2       #autoTimeZoneEnabled:Z
    :cond_3
    const-string v9, "auto_time"

    invoke-direct {p0, v9}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    .line 191
    const-string v9, "auto_time_zone"

    invoke-direct {p0, v9}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getAutoState(Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_2

    .line 201
    :catch_1
    move-exception v7

    .line 202
    .local v7, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v9, "DateTimeIntentReceiver"

    const-string v10, "there is no AUTO_TIME_ZONE value on settinbs db so remove automatic timezone layout"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const v9, 0x7f0b0111

    invoke-virtual {p0, v9}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 204
    .local v6, layout:Landroid/widget/LinearLayout;
    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3
.end method

.method static synthetic access$1400(Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private formatOffset(I)[C
    .locals 6
    .parameter "off"

    .prologue
    const/4 v5, 0x3

    .line 412
    div-int/lit16 v3, p1, 0x3e8

    div-int/lit8 p1, v3, 0x3c

    .line 414
    const/16 v3, 0x9

    new-array v0, v3, [C

    .line 415
    .local v0, buf:[C
    const/4 v3, 0x0

    const/16 v4, 0x47

    aput-char v4, v0, v3

    .line 416
    const/4 v3, 0x1

    const/16 v4, 0x4d

    aput-char v4, v0, v3

    .line 417
    const/4 v3, 0x2

    const/16 v4, 0x54

    aput-char v4, v0, v3

    .line 419
    if-gez p1, :cond_0

    .line 420
    const/16 v3, 0x2d

    aput-char v3, v0, v5

    .line 421
    neg-int p1, p1

    .line 426
    :goto_0
    div-int/lit8 v1, p1, 0x3c

    .line 427
    .local v1, hours:I
    rem-int/lit8 v2, p1, 0x3c

    .line 429
    .local v2, minutes:I
    const/4 v3, 0x4

    div-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 430
    const/4 v3, 0x5

    rem-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 432
    const/4 v3, 0x6

    const/16 v4, 0x3a

    aput-char v4, v0, v3

    .line 434
    const/4 v3, 0x7

    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 435
    const/16 v3, 0x8

    rem-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 437
    return-object v0

    .line 423
    .end local v1           #hours:I
    .end local v2           #minutes:I
    :cond_0
    const/16 v3, 0x2b

    aput-char v3, v0, v5

    goto :goto_0
.end method

.method private getAutoState(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 289
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 291
    :cond_0
    :goto_0
    return v1

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private registerTimeBroadcast()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 312
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 313
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 317
    return-void
.end method

.method private set24Hour(Z)V
    .locals 3
    .parameter "is24Hour"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    if-eqz p1, :cond_0

    const-string v0, "24"

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 285
    return-void

    .line 282
    :cond_0
    const-string v0, "12"

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    .line 297
    const-string v1, "DateTimeIntentReceiver"

    const-string v2, "dismiss()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/DateTimeIntentReceiver;->access$1202(Z)Z

    .line 304
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/DateTimeIntentReceiver;->access$1302(Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;)Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;

    .line 305
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 306
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "DateTimeIntentReceiver"

    const-string v2, "dismiss : mIntentReceiver is not registered."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getTimeZoneName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "id"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 381
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->resources:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/android/settings/DateTimeIntentReceiver;->access$800(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 382
    .local v2, xrp:Landroid/content/res/XmlResourceParser;
    :cond_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 383
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    .line 384
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v6, :cond_2

    .line 385
    :goto_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v5, :cond_1

    .line 386
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 391
    :cond_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "timezone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 392
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 393
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object p1

    .line 402
    :cond_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 408
    .end local v2           #xrp:Landroid/content/res/XmlResourceParser;
    :goto_2
    return-object p1

    .line 389
    .restart local v2       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 403
    .end local v2           #xrp:Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v1

    .line 404
    .local v1, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "DateTimeSettings"

    const-string v4, "Ill-formatted timezones.xml file"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 397
    .end local v1           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_4
    :goto_3
    :try_start_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v6, :cond_5

    .line 398
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 405
    .end local v2           #xrp:Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v0

    .line 406
    .local v0, ioe:Ljava/io/IOException;
    const-string v3, "DateTimeSettings"

    const-string v4, "Unable to read timezones.xml file"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 400
    .end local v0           #ioe:Ljava/io/IOException;
    .restart local v2       #xrp:Landroid/content/res/XmlResourceParser;
    :cond_5
    :try_start_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 7
    .parameter "tz"

    .prologue
    .line 363
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v5}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    .line 364
    .local v2, daylight:Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 366
    .local v0, date:J
    invoke-virtual {p1, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->formatOffset(I)[C

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    const/4 v5, 0x1

    invoke-virtual {p1, v2, v5}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, mTimeZoneDisplayName:Ljava/lang/String;
    const-string v5, "GMT"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 370
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getTimeZoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 372
    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "view"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 216
    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->close_button:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/settings/DateTimeIntentReceiver;->access$100(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v8

    if-ne p1, v8, :cond_1

    .line 217
    const-string v6, "DateTimeIntentReceiver"

    const-string v8, "close button is clicked"

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static {v7}, Lcom/android/settings/DateTimeIntentReceiver;->access$1202(Z)Z

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->dismiss()V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v8

    if-ne p1, v8, :cond_2

    .line 222
    const-string v6, "DateTimeIntentReceiver"

    const-string v8, "manual setup button is clicked"

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 224
    .local v3, i:Landroid/content/Intent;
    const-string v6, "android.settings.DATE_SETTINGS"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const v6, 0x10008000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 226
    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 227
    invoke-static {v7}, Lcom/android/settings/DateTimeIntentReceiver;->access$1202(Z)Z

    .line 230
    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    const-string v7, "statusbar"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    .line 232
    .local v4, mStatusBar:Landroid/app/StatusBarManager;
    invoke-virtual {v4}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 239
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    .line 242
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->dismiss()V

    goto :goto_0

    .line 243
    :catch_0
    move-exception v2

    .line 244
    .local v2, e:Landroid/os/RemoteException;
    const-string v6, "DateTimeIntentReceiver"

    const-string v7, "exception on doing dismissKeyguardOnNextActivity()"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 249
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v3           #i:Landroid/content/Intent;
    .end local v4           #mStatusBar:Landroid/app/StatusBarManager;
    :cond_2
    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoDateTimeLayout:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/settings/DateTimeIntentReceiver;->access$300(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v8

    if-ne p1, v8, :cond_5

    .line 250
    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoDateTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v8}, Lcom/android/settings/DateTimeIntentReceiver;->access$200(Lcom/android/settings/DateTimeIntentReceiver;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v8

    if-nez v8, :cond_3

    move v1, v6

    .line 251
    .local v1, autoEnabled:Z
    :goto_2
    const-string v8, "DateTimeIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "autoDateTime is clicked : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "auto_time"

    if-eqz v1, :cond_4

    :goto_3
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 254
    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoDateTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$200(Lcom/android/settings/DateTimeIntentReceiver;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 255
    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    goto/16 :goto_0

    .end local v1           #autoEnabled:Z
    :cond_3
    move v1, v7

    .line 250
    goto :goto_2

    .restart local v1       #autoEnabled:Z
    :cond_4
    move v6, v7

    .line 253
    goto :goto_3

    .line 257
    .end local v1           #autoEnabled:Z
    :cond_5
    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoTimezoneLayout:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/settings/DateTimeIntentReceiver;->access$500(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v8

    if-ne p1, v8, :cond_8

    .line 258
    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoTimezone:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v8}, Lcom/android/settings/DateTimeIntentReceiver;->access$400(Lcom/android/settings/DateTimeIntentReceiver;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v8

    if-nez v8, :cond_6

    move v1, v6

    .line 259
    .restart local v1       #autoEnabled:Z
    :goto_4
    const-string v8, "DateTimeIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "autoTimezone is clicked : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "auto_time_zone"

    if-eqz v1, :cond_7

    :goto_5
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 262
    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoTimezone:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$400(Lcom/android/settings/DateTimeIntentReceiver;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 263
    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    goto/16 :goto_0

    .end local v1           #autoEnabled:Z
    :cond_6
    move v1, v7

    .line 258
    goto :goto_4

    .restart local v1       #autoEnabled:Z
    :cond_7
    move v6, v7

    .line 261
    goto :goto_5

    .line 265
    .end local v1           #autoEnabled:Z
    :cond_8
    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->timeFormatLayout:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/android/settings/DateTimeIntentReceiver;->access$700(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;

    move-result-object v8

    if-ne p1, v8, :cond_0

    .line 266
    iget-object v8, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->timeFormat:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v8}, Lcom/android/settings/DateTimeIntentReceiver;->access$600(Lcom/android/settings/DateTimeIntentReceiver;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v8

    if-nez v8, :cond_9

    move v0, v6

    .line 267
    .local v0, Enabled:Z
    :goto_6
    const-string v6, "DateTimeIntentReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "24 hour format is clicked : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-direct {p0, v0}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->set24Hour(Z)V

    .line 269
    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->timeFormat:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v6}, Lcom/android/settings/DateTimeIntentReceiver;->access$600(Lcom/android/settings/DateTimeIntentReceiver;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 270
    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 272
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.TIME_SET"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    .local v5, timeChanged:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v0           #Enabled:Z
    .end local v5           #timeChanged:Landroid/content/Intent;
    :cond_9
    move v0, v7

    .line 266
    goto :goto_6
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 442
    packed-switch p1, :pswitch_data_0

    .line 448
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 444
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/DateTimeIntentReceiver;->access$1202(Z)Z

    goto :goto_0

    .line 442
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 330
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    .line 331
    .local v3, shortDateFormat:Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 333
    .local v2, now:Ljava/util/Calendar;
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, time:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, date:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->datetime:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$900(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->timezone:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$1000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->timeFormat:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$600(Lcom/android/settings/DateTimeIntentReceiver;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 339
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->timeformat:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$1100(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f09019c

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 343
    :goto_0
    const-string v5, "DateTimeIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTimeAndDateDisplay(), date : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", time : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", timezone : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoDateTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$200(Lcom/android/settings/DateTimeIntentReceiver;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->autoTimezone:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$400(Lcom/android/settings/DateTimeIntentReceiver;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2

    .line 346
    :cond_0
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 347
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v5

    const/high16 v6, -0x100

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 360
    :goto_1
    return-void

    .line 341
    :cond_1
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->timeformat:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$1100(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f09019b

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 350
    :cond_2
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 351
    const-string v5, "ro.build.characteristics"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, deviceType:Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v5, "tablet"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 353
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v5

    const v6, -0xbfbfc0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    .line 356
    :cond_3
    iget-object v5, p0, Lcom/android/settings/DateTimeIntentReceiver$DateTimeDialog;->this$0:Lcom/android/settings/DateTimeIntentReceiver;

    #getter for: Lcom/android/settings/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/settings/DateTimeIntentReceiver;->access$000(Lcom/android/settings/DateTimeIntentReceiver;)Landroid/widget/Button;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1
.end method
