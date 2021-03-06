.class public final Lcom/google/zxing/client/result/GeoResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "GeoResultParser.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34
    const-string/jumbo v0, "geo:([\\-0-9.]+),([\\-0-9.]+)(?:,([\\-0-9.]+))?(?:\\?(.*))?"

    const/4 v1, 0x2

    .line 35
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/GeoResultParser;->a:Ljava/util/regex/Pattern;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/GeoParsedResult;
    .registers 14

    .prologue
    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    .line 39
    invoke-static {p1}, Lcom/google/zxing/client/result/GeoResultParser;->c(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    .line 40
    sget-object v1, Lcom/google/zxing/client/result/GeoResultParser;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_15

    move-object v1, v9

    .line 70
    :goto_14
    return-object v1

    .line 45
    :cond_15
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 51
    const/4 v1, 0x1

    :try_start_1b
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 52
    const-wide v4, 0x4056800000000000L    # 90.0

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_35

    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_37

    :cond_35
    move-object v1, v9

    .line 53
    goto :goto_14

    .line 55
    :cond_37
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 56
    const-wide v10, 0x4066800000000000L    # 180.0

    cmpl-double v1, v4, v10

    if-gtz v1, :cond_52

    const-wide v10, -0x3f99800000000000L    # -180.0

    cmpg-double v1, v4, v10

    if-gez v1, :cond_54

    :cond_52
    move-object v1, v9

    .line 57
    goto :goto_14

    .line 59
    :cond_54
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_58
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_58} :catch_70

    move-result-object v1

    if-nez v1, :cond_61

    .line 70
    :goto_5b
    new-instance v1, Lcom/google/zxing/client/result/GeoParsedResult;

    invoke-direct/range {v1 .. v8}, Lcom/google/zxing/client/result/GeoParsedResult;-><init>(DDDLjava/lang/String;)V

    goto :goto_14

    .line 62
    :cond_61
    const/4 v1, 0x3

    :try_start_62
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_69
    .catch Ljava/lang/NumberFormatException; {:try_start_62 .. :try_end_69} :catch_70

    move-result-wide v0

    .line 63
    cmpg-double v6, v0, v6

    if-gez v6, :cond_73

    move-object v1, v9

    .line 64
    goto :goto_14

    .line 67
    :catch_70
    move-exception v0

    move-object v1, v9

    .line 68
    goto :goto_14

    :cond_73
    move-wide v6, v0

    goto :goto_5b
.end method

.method public synthetic b(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 3

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/GeoResultParser;->a(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/GeoParsedResult;

    move-result-object v0

    return-object v0
.end method
