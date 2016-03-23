.class final enum Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;
.super Ljava/lang/Enum;
.source "PullToRefreshListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/lib/survey/control/PullToRefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

.field public static final enum PULL_TO_REFRESH:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

.field public static final enum REFRESHING:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

.field public static final enum RELEASE_TO_REFRESH:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    const-string/jumbo v1, "PULL_TO_REFRESH"

    invoke-direct {v0, v1, v2}, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    new-instance v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    const-string/jumbo v1, "RELEASE_TO_REFRESH"

    invoke-direct {v0, v1, v3}, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->RELEASE_TO_REFRESH:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    new-instance v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    const-string/jumbo v1, "REFRESHING"

    invoke-direct {v0, v1, v4}, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->REFRESHING:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    sget-object v1, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->RELEASE_TO_REFRESH:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->REFRESHING:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->$VALUES:[Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

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
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    const-class v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    return-object v0
.end method

.method public static values()[Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->$VALUES:[Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    invoke-virtual {v0}, [Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    return-object v0
.end method
