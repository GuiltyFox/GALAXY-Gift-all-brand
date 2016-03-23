.class public Lcom/bzbs/lib/survey/LibData;
.super Ljava/lang/Object;
.source "LibData.java"


# static fields
.field public static QUEUE_BADGEALERTS:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/bzbs/lib/survey/bean/BadgeAlert;",
            ">;"
        }
    .end annotation
.end field

.field public static QUEUE_POINTS:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static gIsAnimatingBadgeAlert:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/bzbs/lib/survey/LibData;->QUEUE_POINTS:Ljava/util/Queue;

    .line 11
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/bzbs/lib/survey/LibData;->QUEUE_BADGEALERTS:Ljava/util/Queue;

    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bzbs/lib/survey/LibData;->gIsAnimatingBadgeAlert:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
