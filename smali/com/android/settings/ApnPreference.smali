.class public Lcom/android/settings/ApnPreference;
.super Landroid/preference/Preference;
.source "ApnPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static mCurrentChecked:Landroid/widget/CompoundButton;

.field private static mSelectedKey:Ljava/lang/String;


# instance fields
.field private isSprHidden:Z

.field private isVzwEditable:Z

.field private mEditable:Z

.field private mProtectFromCheckedChange:Z

.field private mSelectable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 98
    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 99
    sput-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 100
    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 101
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 102
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    .line 103
    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->isSprHidden:Z

    .line 104
    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->isVzwEditable:Z

    .line 74
    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->isSprHidden:Z

    .line 75
    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->isVzwEditable:Z

    .line 76
    invoke-direct {p0}, Lcom/android/settings/ApnPreference;->init()V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "temp"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 100
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 101
    iput-boolean v2, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 102
    iput-boolean v2, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    .line 103
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->isSprHidden:Z

    .line 104
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->isVzwEditable:Z

    .line 84
    if-ne p2, v2, :cond_0

    .line 85
    iput-boolean v2, p0, Lcom/android/settings/ApnPreference;->isSprHidden:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->isVzwEditable:Z

    .line 95
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/ApnPreference;->init()V

    .line 96
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 88
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->isSprHidden:Z

    .line 89
    iput-boolean v2, p0, Lcom/android/settings/ApnPreference;->isVzwEditable:Z

    goto :goto_0

    .line 91
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->isSprHidden:Z

    .line 92
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->isVzwEditable:Z

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 101
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 102
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    .line 103
    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->isSprHidden:Z

    .line 104
    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->isVzwEditable:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->isSprHidden:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->isVzwEditable:Z

    .line 66
    invoke-direct {p0}, Lcom/android/settings/ApnPreference;->init()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 101
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 102
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    .line 103
    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->isSprHidden:Z

    .line 104
    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->isVzwEditable:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->isSprHidden:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->isVzwEditable:Z

    .line 55
    invoke-direct {p0}, Lcom/android/settings/ApnPreference;->init()V

    .line 56
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 139
    const v0, 0x7f040013

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnPreference;->setLayoutResource(I)V

    .line 140
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 108
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 110
    .local v3, view:Landroid/view/View;
    const v5, 0x1010001

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 111
    .local v4, widget:Landroid/view/View;
    if-eqz v4, :cond_1

    instance-of v5, v4, Landroid/widget/RadioButton;

    if-eqz v5, :cond_1

    move-object v1, v4

    .line 112
    check-cast v1, Landroid/widget/RadioButton;

    .line 113
    .local v1, rb:Landroid/widget/RadioButton;
    iget-boolean v5, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    if-eqz v5, :cond_3

    .line 114
    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 117
    .local v0, isChecked:Z
    if-eqz v0, :cond_0

    .line 118
    sput-object v1, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 122
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 123
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 124
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 130
    .end local v0           #isChecked:Z
    .end local v1           #rb:Landroid/widget/RadioButton;
    :cond_1
    :goto_0
    const/high16 v5, 0x101

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 131
    .local v2, textLayout:Landroid/view/View;
    iget-boolean v5, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    instance-of v5, v2, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_2

    .line 132
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    :cond_2
    return-object v3

    .line 126
    .end local v2           #textLayout:Landroid/view/View;
    .restart local v1       #rb:Landroid/widget/RadioButton;
    :cond_3
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 151
    const-string v0, "ApnPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 156
    :cond_0
    if-eqz p2, :cond_2

    .line 157
    sget-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 158
    sget-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 160
    :cond_1
    sput-object p1, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 162
    sget-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    :cond_2
    sput-object v3, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 165
    sput-object v3, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 170
    if-eqz p1, :cond_1

    const/high16 v4, 0x101

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 172
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 182
    .local v2, pos:I
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v5, v2

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 183
    .local v3, url:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.EDIT"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 184
    .local v1, intent:Landroid/content/Intent;
    iget-boolean v4, p0, Lcom/android/settings/ApnPreference;->isSprHidden:Z

    if-eqz v4, :cond_2

    .line 185
    const-string v4, "keyString"

    const-string v5, "hidden"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 191
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pos:I
    .end local v3           #url:Landroid/net/Uri;
    :cond_1
    return-void

    .line 186
    .restart local v0       #context:Landroid/content/Context;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #pos:I
    .restart local v3       #url:Landroid/net/Uri;
    :cond_2
    iget-boolean v4, p0, Lcom/android/settings/ApnPreference;->isVzwEditable:Z

    if-eqz v4, :cond_0

    .line 187
    const-string v4, "vzw"

    const-string v5, "editable"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public setChecked()V
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setEditable(Z)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    .line 203
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .parameter "selectable"

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 195
    return-void
.end method
