.class final Lcom/bzbs/zxing/MECARDContactEncoder;
.super Lcom/bzbs/zxing/ContactEncoder;
.source "MECARDContactEncoder.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Lcom/bzbs/zxing/Formatter;

.field private static final e:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-string/jumbo v0, "([\\\\:;])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bzbs/zxing/MECARDContactEncoder;->a:Ljava/util/regex/Pattern;

    .line 31
    const-string/jumbo v0, "\\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bzbs/zxing/MECARDContactEncoder;->b:Ljava/util/regex/Pattern;

    .line 32
    const-string/jumbo v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bzbs/zxing/MECARDContactEncoder;->c:Ljava/util/regex/Pattern;

    .line 33
    new-instance v0, Lcom/bzbs/zxing/MECARDContactEncoder$1;

    invoke-direct {v0}, Lcom/bzbs/zxing/MECARDContactEncoder$1;-><init>()V

    sput-object v0, Lcom/bzbs/zxing/MECARDContactEncoder;->d:Lcom/bzbs/zxing/Formatter;

    .line 40
    const-string/jumbo v0, "[^0-9]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bzbs/zxing/MECARDContactEncoder;->e:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/bzbs/zxing/ContactEncoder;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    invoke-static {p0}, Lcom/bzbs/zxing/MECARDContactEncoder;->b(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Ljava/util/regex/Pattern;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/bzbs/zxing/MECARDContactEncoder;->a:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Iterable;ILcom/bzbs/zxing/Formatter;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/bzbs/zxing/Formatter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 91
    sget-object v6, Lcom/bzbs/zxing/MECARDContactEncoder;->d:Lcom/bzbs/zxing/Formatter;

    const/16 v7, 0x3b

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Lcom/bzbs/zxing/MECARDContactEncoder;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Iterable;ILcom/bzbs/zxing/Formatter;Lcom/bzbs/zxing/Formatter;C)V

    .line 99
    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 82
    sget-object v4, Lcom/bzbs/zxing/MECARDContactEncoder;->d:Lcom/bzbs/zxing/Formatter;

    const/16 v5, 0x3b

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/bzbs/zxing/MECARDContactEncoder;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/zxing/Formatter;C)V

    .line 83
    return-void
.end method

.method private static b(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 75
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    sget-object v0, Lcom/bzbs/zxing/MECARDContactEncoder;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method static synthetic b()Ljava/util/regex/Pattern;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/bzbs/zxing/MECARDContactEncoder;->b:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic c()Ljava/util/regex/Pattern;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/bzbs/zxing/MECARDContactEncoder;->c:Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/String;)[Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 51
    const-string/jumbo v1, "MECARD:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 53
    const-string/jumbo v2, "N"

    const/4 v4, 0x1

    new-instance v5, Lcom/bzbs/zxing/MECARDContactEncoder$2;

    invoke-direct {v5, p0}, Lcom/bzbs/zxing/MECARDContactEncoder$2;-><init>(Lcom/bzbs/zxing/MECARDContactEncoder;)V

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/bzbs/zxing/MECARDContactEncoder;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Iterable;ILcom/bzbs/zxing/Formatter;)V

    .line 59
    const-string/jumbo v2, "ORG"

    invoke-static {v0, v1, v2, p2}, Lcom/bzbs/zxing/MECARDContactEncoder;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string/jumbo v2, "ADR"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/bzbs/zxing/MECARDContactEncoder;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Iterable;ILcom/bzbs/zxing/Formatter;)V

    .line 61
    const-string/jumbo v2, "TEL"

    const v4, 0x7fffffff

    new-instance v5, Lcom/bzbs/zxing/MECARDContactEncoder$3;

    invoke-direct {v5, p0}, Lcom/bzbs/zxing/MECARDContactEncoder$3;-><init>(Lcom/bzbs/zxing/MECARDContactEncoder;)V

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/bzbs/zxing/MECARDContactEncoder;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Iterable;ILcom/bzbs/zxing/Formatter;)V

    .line 67
    const-string/jumbo v2, "EMAIL"

    const v4, 0x7fffffff

    const/4 v5, 0x0

    move-object v3, p5

    invoke-static/range {v0 .. v5}, Lcom/bzbs/zxing/MECARDContactEncoder;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Iterable;ILcom/bzbs/zxing/Formatter;)V

    .line 68
    const-string/jumbo v2, "URL"

    const v4, 0x7fffffff

    const/4 v5, 0x0

    move-object v3, p6

    invoke-static/range {v0 .. v5}, Lcom/bzbs/zxing/MECARDContactEncoder;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Iterable;ILcom/bzbs/zxing/Formatter;)V

    .line 69
    const-string/jumbo v2, "NOTE"

    invoke-static {v0, v1, v2, p7}, Lcom/bzbs/zxing/MECARDContactEncoder;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/16 v2, 0x3b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    return-object v2
.end method
