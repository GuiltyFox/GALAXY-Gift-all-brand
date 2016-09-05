.class public final enum Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;
.super Ljava/lang/Enum;
.source "BaseRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

.field public static final enum b:Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

.field public static final enum c:Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

.field public static final enum d:Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

.field private static final synthetic e:[Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

    const-string/jumbo v1, "DEFAULT_DIALOG_LOADING"

    invoke-direct {v0, v1, v2}, Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;->a:Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

    new-instance v0, Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

    const-string/jumbo v1, "DARK_MODEL_DIALOG"

    invoke-direct {v0, v1, v3}, Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;->b:Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

    new-instance v0, Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

    const-string/jumbo v1, "CUSTOM_DIALOG"

    invoke-direct {v0, v1, v4}, Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;->c:Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

    new-instance v0, Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v5}, Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;->d:Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

    sget-object v1, Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;->a:Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;->b:Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;->c:Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;->d:Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;->e:[Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;
    .registers 2

    .prologue
    .line 9
    const-class v0, Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

    return-object v0
.end method

.method public static values()[Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;
    .registers 1

    .prologue
    .line 9
    sget-object v0, Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;->e:[Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

    invoke-virtual {v0}, [Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bzbs/lib/http/okhttp/BaseRequest$DialogType;

    return-object v0
.end method
