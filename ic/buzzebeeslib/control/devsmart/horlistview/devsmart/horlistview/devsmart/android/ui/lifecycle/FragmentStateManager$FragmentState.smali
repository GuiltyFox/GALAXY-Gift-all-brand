.class public final enum Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;
.super Ljava/lang/Enum;
.source "FragmentStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FragmentState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACTIVE:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

.field public static final enum ATTACHED:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

.field public static final enum CREATED:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

.field public static final enum DESTROYED:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

.field public static final enum DETACHED:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

.field private static final synthetic ENUM$VALUES:[Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

.field public static final enum PAUSED:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

.field public static final enum PREATTACHED:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;


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
    new-instance v0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    const-string v1, "PREATTACHED"

    invoke-direct {v0, v1, v3}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->PREATTACHED:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    .line 13
    new-instance v0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    const-string v1, "ATTACHED"

    invoke-direct {v0, v1, v4}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->ATTACHED:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    .line 14
    new-instance v0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    const-string v1, "CREATED"

    invoke-direct {v0, v1, v5}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->CREATED:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    .line 15
    new-instance v0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v6}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->ACTIVE:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    .line 16
    new-instance v0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v7}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->PAUSED:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    .line 17
    new-instance v0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    const-string v1, "DETACHED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->DETACHED:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    .line 18
    new-instance v0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    const-string v1, "DESTROYED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->DESTROYED:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    .line 11
    const/4 v0, 0x7

    new-array v0, v0, [Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    sget-object v1, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->PREATTACHED:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    aput-object v1, v0, v3

    sget-object v1, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->ATTACHED:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    aput-object v1, v0, v4

    sget-object v1, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->CREATED:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    aput-object v1, v0, v5

    sget-object v1, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->ACTIVE:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    aput-object v1, v0, v6

    sget-object v1, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->PAUSED:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->DETACHED:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->DESTROYED:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    aput-object v2, v0, v1

    sput-object v0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->ENUM$VALUES:[Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    return-object v0
.end method

.method public static values()[Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;->ENUM$VALUES:[Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    array-length v1, v0

    new-array v2, v1, [Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/lifecycle/FragmentStateManager$FragmentState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
