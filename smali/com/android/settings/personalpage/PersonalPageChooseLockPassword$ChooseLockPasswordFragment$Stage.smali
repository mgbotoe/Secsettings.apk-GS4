.class public final enum Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;
.super Ljava/lang/Enum;
.source "PersonalPageChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum Introduction:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;


# instance fields
.field public final alphaHint:I

.field public final buttonText:I

.field public final cacNumeric:I

.field public final numericHint:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 177
    new-instance v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const-string v1, "Introduction"

    const/4 v2, 0x0

    const v3, 0x7f0906da

    const v4, 0x7f0906dc

    const v5, 0x7f0901fe

    const v6, 0x7f09021c

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 182
    new-instance v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const-string v1, "NeedToConfirm"

    const/4 v2, 0x1

    const v3, 0x7f0906dd

    const v4, 0x7f0906df

    const v5, 0x7f0901ff

    const v6, 0x7f090227

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 187
    new-instance v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const-string v1, "ConfirmWrong"

    const/4 v2, 0x2

    const v3, 0x7f0906e0

    const v4, 0x7f0906e1

    const v5, 0x7f090203

    const v6, 0x7f09021c

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 175
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;->$VALUES:[Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter "hintInAlpha"
    .parameter "hintInNumeric"
    .parameter "hintCacNumeric"
    .parameter "nextButtonText"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .prologue
    .line 195
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 196
    iput p3, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    .line 197
    iput p4, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    .line 198
    iput p5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;->cacNumeric:I

    .line 199
    iput p6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    .line 200
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 1
    .parameter

    .prologue
    .line 175
    const-class v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;->$VALUES:[Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v0}, [Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object v0
.end method
