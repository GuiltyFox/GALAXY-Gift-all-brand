.class public final enum Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;
.super Ljava/lang/Enum;
.source "FragmentStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FragmentState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

.field public static final enum ACTIVE:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

.field public static final enum ATTACHED:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

.field public static final enum CREATED:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

.field public static final enum DESTROYED:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

.field public static final enum DETACHED:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

.field public static final enum PAUSED:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

.field public static final enum PREATTACHED:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    const-string/jumbo v1, "PREATTACHED"

    invoke-direct {v0, v1, v3}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->PREATTACHED:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    .line 13
    new-instance v0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    const-string/jumbo v1, "ATTACHED"

    invoke-direct {v0, v1, v4}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->ATTACHED:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    .line 14
    new-instance v0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    const-string/jumbo v1, "CREATED"

    invoke-direct {v0, v1, v5}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->CREATED:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    .line 15
    new-instance v0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    const-string/jumbo v1, "ACTIVE"

    invoke-direct {v0, v1, v6}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->ACTIVE:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    .line 16
    new-instance v0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    const-string/jumbo v1, "PAUSED"

    invoke-direct {v0, v1, v7}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->PAUSED:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    .line 17
    new-instance v0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    const-string/jumbo v1, "DETACHED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->DETACHED:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    .line 18
    new-instance v0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    const-string/jumbo v1, "DESTROYED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->DESTROYED:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    .line 11
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    sget-object v1, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->PREATTACHED:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->ATTACHED:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->CREATED:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->ACTIVE:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->PAUSED:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->DETACHED:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->DESTROYED:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->$VALUES:[Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    return-object v0
.end method

.method public static values()[Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;
    .registers 1

    .prologue
    .line 11
    sget-object v0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->$VALUES:[Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    invoke-virtual {v0}, [Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    return-object v0
.end method
