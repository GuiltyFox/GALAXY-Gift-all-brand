.class public Lcom/samsung/privilege/bean/PostAsyncData;
.super Ljava/lang/Object;
.source "PostAsyncData.java"


# instance fields
.field private LOGCAT:Ljava/lang/String;

.field public file:Ljava/io/File;

.field public header:Ljava/lang/String;

.field public log:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public pagemode:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public source_lines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 10
    .param p1, "pFile"    # Ljava/io/File;

    .prologue
    const/4 v7, 0x2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v5, "buzzebees.postasync"

    iput-object v5, p0, Lcom/samsung/privilege/bean/PostAsyncData;->LOGCAT:Ljava/lang/String;

    .line 17
    const-string v5, ""

    iput-object v5, p0, Lcom/samsung/privilege/bean/PostAsyncData;->source:Ljava/lang/String;

    .line 18
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/samsung/privilege/bean/PostAsyncData;->source_lines:Ljava/util/ArrayList;

    .line 20
    const-string v5, ""

    iput-object v5, p0, Lcom/samsung/privilege/bean/PostAsyncData;->type:Ljava/lang/String;

    .line 21
    const-string v5, ""

    iput-object v5, p0, Lcom/samsung/privilege/bean/PostAsyncData;->url:Ljava/lang/String;

    .line 22
    const-string v5, ""

    iput-object v5, p0, Lcom/samsung/privilege/bean/PostAsyncData;->header:Ljava/lang/String;

    .line 23
    const-string v5, ""

    iput-object v5, p0, Lcom/samsung/privilege/bean/PostAsyncData;->message:Ljava/lang/String;

    .line 24
    const-string v5, ""

    iput-object v5, p0, Lcom/samsung/privilege/bean/PostAsyncData;->pagemode:Ljava/lang/String;

    .line 25
    const-string v5, ""

    iput-object v5, p0, Lcom/samsung/privilege/bean/PostAsyncData;->log:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/samsung/privilege/bean/PostAsyncData;->file:Ljava/io/File;

    .line 31
    :try_start_2d
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    iget-object v6, p0, Lcom/samsung/privilege/bean/PostAsyncData;->file:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 32
    .local v0, "br":Ljava/io/BufferedReader;
    const-string v4, ""

    .line 33
    .local v4, "strLine":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/samsung/privilege/bean/PostAsyncData;->source_lines:Ljava/util/ArrayList;

    .line 34
    :cond_42
    :goto_42
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_52

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_70

    .line 53
    :cond_52
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".log"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "log_path":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/samsung/privilege/bean/PostAsyncData;->ReadLogFirstLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/privilege/bean/PostAsyncData;->log:Ljava/lang/String;

    .line 58
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "log_path":Ljava/lang/String;
    .end local v4    # "strLine":Ljava/lang/String;
    :goto_6f
    return-void

    .line 35
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "strLine":Ljava/lang/String;
    :cond_70
    iget-object v5, p0, Lcom/samsung/privilege/bean/PostAsyncData;->source_lines:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    const-string v5, "="

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "columns":[Ljava/lang/String;
    array-length v5, v1

    if-ne v5, v7, :cond_42

    .line 39
    const/4 v5, 0x0

    aget-object v5, v1, v5

    const-string v6, "{type}"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 40
    const/4 v5, 0x1

    aget-object v5, v1, v5

    iput-object v5, p0, Lcom/samsung/privilege/bean/PostAsyncData;->type:Ljava/lang/String;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_8f} :catch_90

    goto :goto_42

    .line 55
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "columns":[Ljava/lang/String;
    .end local v4    # "strLine":Ljava/lang/String;
    :catch_90
    move-exception v2

    .line 56
    .local v2, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/samsung/privilege/bean/PostAsyncData;->LOGCAT:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(Exception|PostAsyncData):"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6f

    .line 41
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "columns":[Ljava/lang/String;
    .restart local v4    # "strLine":Ljava/lang/String;
    :cond_aa
    const/4 v5, 0x0

    :try_start_ab
    aget-object v5, v1, v5

    const-string v6, "{url}"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bb

    .line 42
    const/4 v5, 0x1

    aget-object v5, v1, v5

    iput-object v5, p0, Lcom/samsung/privilege/bean/PostAsyncData;->url:Ljava/lang/String;

    goto :goto_42

    .line 43
    :cond_bb
    const/4 v5, 0x0

    aget-object v5, v1, v5

    const-string v6, "{header}"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_cd

    .line 44
    const/4 v5, 0x1

    aget-object v5, v1, v5

    iput-object v5, p0, Lcom/samsung/privilege/bean/PostAsyncData;->header:Ljava/lang/String;

    goto/16 :goto_42

    .line 45
    :cond_cd
    const/4 v5, 0x0

    aget-object v5, v1, v5

    const-string v6, "{message}"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_df

    .line 46
    const/4 v5, 0x1

    aget-object v5, v1, v5

    iput-object v5, p0, Lcom/samsung/privilege/bean/PostAsyncData;->message:Ljava/lang/String;

    goto/16 :goto_42

    .line 47
    :cond_df
    const/4 v5, 0x0

    aget-object v5, v1, v5

    const-string v6, "{pagemode}"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 48
    const/4 v5, 0x1

    aget-object v5, v1, v5

    iput-object v5, p0, Lcom/samsung/privilege/bean/PostAsyncData;->pagemode:Ljava/lang/String;
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_ef} :catch_90

    goto/16 :goto_42
.end method

.method private ReadLogFirstLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 61
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v1, "file":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v3, "text":Ljava/lang/StringBuilder;
    :try_start_a
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 67
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_1d

    .line 68
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1d} :catch_22

    .line 75
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    :cond_1d
    :goto_1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 71
    :catch_22
    move-exception v4

    goto :goto_1d
.end method


# virtual methods
.method public getFileDateHuman()Ljava/lang/String;
    .registers 5

    .prologue
    .line 79
    iget-object v1, p0, Lcom/samsung/privilege/bean/PostAsyncData;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 80
    .local v2, "time":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 81
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 85
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/samsung/privilege/bean/PostAsyncData;->source_lines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_d

    .line 95
    const-string v2, ""

    :goto_c
    return-object v2

    .line 86
    :cond_d
    iget-object v2, p0, Lcom/samsung/privilege/bean/PostAsyncData;->source_lines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "="

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "columns":[Ljava/lang/String;
    array-length v2, v0

    if-ne v2, v4, :cond_33

    .line 89
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 90
    const/4 v2, 0x1

    aget-object v2, v0, v2

    goto :goto_c

    .line 85
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public readFileAsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 100
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 101
    .local v2, "reader":Ljava/io/BufferedReader;
    const-string v3, ""

    .line 102
    .local v3, "results":Ljava/lang/String;
    :goto_c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_16

    .line 106
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 109
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "results":Ljava/lang/String;
    :goto_15
    return-object v3

    .line 104
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "results":Ljava/lang/String;
    :cond_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_28

    move-result-object v3

    goto :goto_c

    .line 108
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "results":Ljava/lang/String;
    :catch_28
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, ""

    goto :goto_15
.end method
