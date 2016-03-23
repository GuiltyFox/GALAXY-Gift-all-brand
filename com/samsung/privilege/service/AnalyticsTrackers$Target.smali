.class public final enum Lcom/samsung/privilege/service/AnalyticsTrackers$Target;
.super Ljava/lang/Enum;
.source "AnalyticsTrackers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/service/AnalyticsTrackers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Target"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/privilege/service/AnalyticsTrackers$Target;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/privilege/service/AnalyticsTrackers$Target;

.field public static final enum APP:Lcom/samsung/privilege/service/AnalyticsTrackers$Target;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/samsung/privilege/service/AnalyticsTrackers$Target;

    const-string/jumbo v1, "APP"

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/service/AnalyticsTrackers$Target;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/privilege/service/AnalyticsTrackers$Target;->APP:Lcom/samsung/privilege/service/AnalyticsTrackers$Target;

    .line 13
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/samsung/privilege/service/AnalyticsTrackers$Target;

    sget-object v1, Lcom/samsung/privilege/service/AnalyticsTrackers$Target;->APP:Lcom/samsung/privilege/service/AnalyticsTrackers$Target;

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/privilege/service/AnalyticsTrackers$Target;->$VALUES:[Lcom/samsung/privilege/service/AnalyticsTrackers$Target;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/privilege/service/AnalyticsTrackers$Target;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/samsung/privilege/service/AnalyticsTrackers$Target;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/service/AnalyticsTrackers$Target;

    return-object v0
.end method

.method public static values()[Lcom/samsung/privilege/service/AnalyticsTrackers$Target;
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lcom/samsung/privilege/service/AnalyticsTrackers$Target;->$VALUES:[Lcom/samsung/privilege/service/AnalyticsTrackers$Target;

    invoke-virtual {v0}, [Lcom/samsung/privilege/service/AnalyticsTrackers$Target;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/privilege/service/AnalyticsTrackers$Target;

    return-object v0
.end method
