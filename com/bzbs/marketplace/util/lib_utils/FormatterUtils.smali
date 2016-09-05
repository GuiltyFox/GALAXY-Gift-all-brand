.class public Lcom/bzbs/marketplace/util/lib_utils/FormatterUtils;
.super Ljava/lang/Object;
.source "FormatterUtils.java"


# static fields
.field public static a:Ljava/text/DecimalFormat;

.field public static b:Ljava/text/DecimalFormat;

.field public static c:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 9
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "#,###,###.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bzbs/marketplace/util/lib_utils/FormatterUtils;->a:Ljava/text/DecimalFormat;

    .line 10
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "#,###,###.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bzbs/marketplace/util/lib_utils/FormatterUtils;->b:Ljava/text/DecimalFormat;

    .line 11
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "#,###,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bzbs/marketplace/util/lib_utils/FormatterUtils;->c:Ljava/text/DecimalFormat;

    return-void
.end method
