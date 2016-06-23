.class public final enum Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;
.super Ljava/lang/Enum;
.source "BaseAppCompatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/marketplace/base/BaseAppCompatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PendingAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;

.field public static final enum NONE:Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;

.field public static final enum POST_PHOTO:Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;

.field public static final enum POST_STATUS_UPDATE:Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 575
    new-instance v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;->NONE:Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;

    .line 576
    new-instance v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;

    const-string/jumbo v1, "POST_PHOTO"

    invoke-direct {v0, v1, v3}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;->POST_PHOTO:Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;

    .line 577
    new-instance v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;

    const-string/jumbo v1, "POST_STATUS_UPDATE"

    invoke-direct {v0, v1, v4}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;->POST_STATUS_UPDATE:Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;

    .line 574
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;

    sget-object v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;->NONE:Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;->POST_PHOTO:Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;->POST_STATUS_UPDATE:Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;->$VALUES:[Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;

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
    .line 574
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 574
    const-class v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;

    return-object v0
.end method

.method public static values()[Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;
    .registers 1

    .prologue
    .line 574
    sget-object v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;->$VALUES:[Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;

    invoke-virtual {v0}, [Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;

    return-object v0
.end method
