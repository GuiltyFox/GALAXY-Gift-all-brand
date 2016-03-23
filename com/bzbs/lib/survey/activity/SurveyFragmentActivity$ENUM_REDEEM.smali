.class public final enum Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;
.super Ljava/lang/Enum;
.source "SurveyFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ENUM_REDEEM"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;

.field public static final enum CONTINUE:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;

.field public static final enum NEXT_REDEEM_ALERT:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;

.field public static final enum SURVEY_DONE:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4400
    new-instance v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;

    const-string/jumbo v1, "SURVEY_DONE"

    invoke-direct {v0, v1, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;->SURVEY_DONE:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;

    new-instance v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;

    const-string/jumbo v1, "NEXT_REDEEM_ALERT"

    invoke-direct {v0, v1, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;->NEXT_REDEEM_ALERT:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;

    new-instance v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;

    const-string/jumbo v1, "CONTINUE"

    invoke-direct {v0, v1, v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;->CONTINUE:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;

    .line 4399
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;

    sget-object v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;->SURVEY_DONE:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;->NEXT_REDEEM_ALERT:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;->CONTINUE:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;

    aput-object v1, v0, v4

    sput-object v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;->$VALUES:[Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 4399
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4399
    const-class v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;

    return-object v0
.end method

.method public static values()[Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;
    .registers 1

    .prologue
    .line 4399
    sget-object v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;->$VALUES:[Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;

    invoke-virtual {v0}, [Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$ENUM_REDEEM;

    return-object v0
.end method
