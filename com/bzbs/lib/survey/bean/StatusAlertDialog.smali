.class public final enum Lcom/bzbs/lib/survey/bean/StatusAlertDialog;
.super Ljava/lang/Enum;
.source "StatusAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bzbs/lib/survey/bean/StatusAlertDialog;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bzbs/lib/survey/bean/StatusAlertDialog;

.field public static final enum b:Lcom/bzbs/lib/survey/bean/StatusAlertDialog;

.field private static final synthetic c:[Lcom/bzbs/lib/survey/bean/StatusAlertDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/bzbs/lib/survey/bean/StatusAlertDialog;

    const-string/jumbo v1, "MISSION"

    invoke-direct {v0, v1, v2}, Lcom/bzbs/lib/survey/bean/StatusAlertDialog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bzbs/lib/survey/bean/StatusAlertDialog;->a:Lcom/bzbs/lib/survey/bean/StatusAlertDialog;

    new-instance v0, Lcom/bzbs/lib/survey/bean/StatusAlertDialog;

    const-string/jumbo v1, "BADGE"

    invoke-direct {v0, v1, v3}, Lcom/bzbs/lib/survey/bean/StatusAlertDialog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bzbs/lib/survey/bean/StatusAlertDialog;->b:Lcom/bzbs/lib/survey/bean/StatusAlertDialog;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/bzbs/lib/survey/bean/StatusAlertDialog;

    sget-object v1, Lcom/bzbs/lib/survey/bean/StatusAlertDialog;->a:Lcom/bzbs/lib/survey/bean/StatusAlertDialog;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bzbs/lib/survey/bean/StatusAlertDialog;->b:Lcom/bzbs/lib/survey/bean/StatusAlertDialog;

    aput-object v1, v0, v3

    sput-object v0, Lcom/bzbs/lib/survey/bean/StatusAlertDialog;->c:[Lcom/bzbs/lib/survey/bean/StatusAlertDialog;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bzbs/lib/survey/bean/StatusAlertDialog;
    .registers 2

    .prologue
    .line 6
    const-class v0, Lcom/bzbs/lib/survey/bean/StatusAlertDialog;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/bean/StatusAlertDialog;

    return-object v0
.end method

.method public static values()[Lcom/bzbs/lib/survey/bean/StatusAlertDialog;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/bzbs/lib/survey/bean/StatusAlertDialog;->c:[Lcom/bzbs/lib/survey/bean/StatusAlertDialog;

    invoke-virtual {v0}, [Lcom/bzbs/lib/survey/bean/StatusAlertDialog;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bzbs/lib/survey/bean/StatusAlertDialog;

    return-object v0
.end method
