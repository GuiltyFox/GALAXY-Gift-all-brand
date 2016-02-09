.class final Lcom/google/zxing/client/android/result/supplement/TitleRetriever;
.super Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;
.source "TitleRetriever.java"


# static fields
.field private static final MAX_TITLE_LEN:I = 0x64

.field private static final TITLE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final httpUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-string v0, "<title>([^<]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/result/supplement/TitleRetriever;->TITLE_PATTERN:Ljava/util/regex/Pattern;

    .line 36
    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;Lcom/google/zxing/client/result/URIParsedResult;Lcom/google/zxing/client/android/history/HistoryManager;)V
    .registers 5
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "result"    # Lcom/google/zxing/client/result/URIParsedResult;
    .param p3, "historyManager"    # Lcom/google/zxing/client/android/history/HistoryManager;

    .prologue
    .line 41
    invoke-direct {p0, p1, p3}, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;-><init>(Landroid/widget/TextView;Lcom/google/zxing/client/android/history/HistoryManager;)V

    .line 42
    invoke-virtual {p2}, Lcom/google/zxing/client/result/URIParsedResult;->getURI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/client/android/result/supplement/TitleRetriever;->httpUrl:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method retrieveSupplementalInfo()V
    .registers 11

    .prologue
    const/16 v9, 0x64

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 49
    :try_start_4
    iget-object v4, p0, Lcom/google/zxing/client/android/result/supplement/TitleRetriever;->httpUrl:Ljava/lang/String;

    sget-object v5, Lcom/google/zxing/client/android/HttpHelper$ContentType;->HTML:Lcom/google/zxing/client/android/HttpHelper$ContentType;

    const/16 v6, 0x1000

    invoke-static {v4, v5, v6}, Lcom/google/zxing/client/android/HttpHelper;->downloadViaHttp(Ljava/lang/String;Lcom/google/zxing/client/android/HttpHelper$ContentType;I)Ljava/lang/CharSequence;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_58

    move-result-object v0

    .line 54
    .local v0, "contents":Ljava/lang/CharSequence;
    if-eqz v0, :cond_57

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_57

    .line 55
    sget-object v4, Lcom/google/zxing/client/android/result/supplement/TitleRetriever;->TITLE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 56
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 57
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "title":Ljava/lang/String;
    if-eqz v3, :cond_57

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_57

    .line 59
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v9, :cond_4b

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 62
    :cond_4b
    iget-object v4, p0, Lcom/google/zxing/client/android/result/supplement/TitleRetriever;->httpUrl:Ljava/lang/String;

    const/4 v5, 0x0

    new-array v6, v8, [Ljava/lang/String;

    aput-object v3, v6, v7

    iget-object v7, p0, Lcom/google/zxing/client/android/result/supplement/TitleRetriever;->httpUrl:Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/google/zxing/client/android/result/supplement/TitleRetriever;->append(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .end local v0    # "contents":Ljava/lang/CharSequence;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "title":Ljava/lang/String;
    :cond_57
    :goto_57
    return-void

    .line 50
    :catch_58
    move-exception v1

    .line 52
    .local v1, "ioe":Ljava/io/IOException;
    goto :goto_57
.end method
