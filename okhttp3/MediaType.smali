.class public final Lokhttp3/MediaType;
.super Ljava/lang/Object;
.source "MediaType.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-string/jumbo v0, "([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/MediaType;->a:Ljava/util/regex/Pattern;

    .line 31
    const-string/jumbo v0, ";\\s*(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)|\"([^\"]*)\"))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/MediaType;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lokhttp3/MediaType;->c:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lokhttp3/MediaType;->d:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lokhttp3/MediaType;->e:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lokhttp3/MediaType;->f:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static a(Ljava/lang/String;)Lokhttp3/MediaType;
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x2

    .line 51
    sget-object v0, Lokhttp3/MediaType;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-nez v1, :cond_10

    .line 73
    :cond_f
    :goto_f
    return-object v2

    .line 53
    :cond_10
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 57
    sget-object v1, Lokhttp3/MediaType;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 58
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    move v1, v0

    move-object v0, v2

    :goto_30
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_8b

    .line 59
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v1, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 60
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 62
    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    if-eqz v1, :cond_52

    const-string/jumbo v6, "charset"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_57

    .line 58
    :cond_52
    :goto_52
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    goto :goto_30

    .line 64
    :cond_57
    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_83

    .line 65
    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    :goto_61
    if-eqz v0, :cond_89

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Multiple different charsets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_83
    const/4 v1, 0x3

    .line 66
    invoke-virtual {v5, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_61

    :cond_89
    move-object v0, v1

    .line 70
    goto :goto_52

    .line 73
    :cond_8b
    new-instance v2, Lokhttp3/MediaType;

    invoke-direct {v2, p0, v3, v4, v0}, Lokhttp3/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lokhttp3/MediaType;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Lokhttp3/MediaType;->f:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lokhttp3/MediaType;->f:Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    :cond_a
    return-object p1
.end method

.method public b()Ljava/nio/charset/Charset;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lokhttp3/MediaType;->f:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lokhttp3/MediaType;->f:Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 115
    instance-of v0, p1, Lokhttp3/MediaType;

    if-eqz v0, :cond_12

    check-cast p1, Lokhttp3/MediaType;

    iget-object v0, p1, Lokhttp3/MediaType;->c:Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/MediaType;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lokhttp3/MediaType;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lokhttp3/MediaType;->c:Ljava/lang/String;

    return-object v0
.end method
