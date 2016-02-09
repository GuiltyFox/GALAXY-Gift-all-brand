.class Lcom/samsung/privilege/util/http/HttpCall$3;
.super Ljava/lang/Thread;
.source "HttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$listener:Lcom/samsung/privilege/util/http/RQListener;

.field private final synthetic val$params:Ljava/util/ArrayList;

.field private final synthetic val$state:Ljava/lang/Object;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/http/HttpCall$3;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/privilege/util/http/HttpCall$3;->val$params:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/samsung/privilege/util/http/HttpCall$3;->val$listener:Lcom/samsung/privilege/util/http/RQListener;

    iput-object p4, p0, Lcom/samsung/privilege/util/http/HttpCall$3;->val$state:Ljava/lang/Object;

    .line 189
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public requestPost(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/samsung/privilege/util/http/HttpRS;
    .registers 19
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/InputItem;",
            ">;)",
            "Lcom/samsung/privilege/util/http/HttpRS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    .local p2, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    :try_start_0
    new-instance v5, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 226
    .local v5, "obj_url":Ljava/net/URL;
    const-string v11, ""

    .line 231
    .local v11, "string_param":Ljava/lang/String;
    const-string v10, ""

    .line 232
    .local v10, "str_and":Ljava/lang/String;
    if-eqz p2, :cond_14

    .line 233
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v3, v12, :cond_8c

    .line 240
    .end local v3    # "i":I
    :cond_14
    const-string v12, "https"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c3

    .line 241
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 247
    .local v1, "conn":Ljava/net/HttpURLConnection;
    :goto_24
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 250
    const-string v12, "POST"

    invoke-virtual {v1, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    array-length v12, v12

    invoke-virtual {v1, v12}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 258
    const-string v12, "Content-Type"

    const-string v13, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    new-instance v6, Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 261
    .local v6, "out":Ljava/io/PrintWriter;
    invoke-virtual {v6, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    .line 265
    const-string v7, ""

    .line 268
    .local v7, "response":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 269
    .local v8, "response_code":I
    const-string v12, "MyLog"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "(getResponseCode="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    const/16 v13, 0xc8

    if-eq v12, v13, :cond_e1

    .line 272
    new-instance v9, Ljava/util/Scanner;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 275
    .local v9, "s":Ljava/util/Scanner;
    :goto_80
    invoke-virtual {v9}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v12

    if-nez v12, :cond_cb

    .line 287
    :cond_86
    new-instance v12, Lcom/samsung/privilege/util/http/HttpRS;

    invoke-direct {v12, v8, v7}, Lcom/samsung/privilege/util/http/HttpRS;-><init>(ILjava/lang/String;)V

    .line 296
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "obj_url":Ljava/net/URL;
    .end local v6    # "out":Ljava/io/PrintWriter;
    .end local v7    # "response":Ljava/lang/String;
    .end local v8    # "response_code":I
    .end local v9    # "s":Ljava/util/Scanner;
    .end local v10    # "str_and":Ljava/lang/String;
    .end local v11    # "string_param":Ljava/lang/String;
    :goto_8b
    return-object v12

    .line 234
    .restart local v3    # "i":I
    .restart local v5    # "obj_url":Ljava/net/URL;
    .restart local v10    # "str_and":Ljava/lang/String;
    .restart local v11    # "string_param":Ljava/lang/String;
    :cond_8c
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/privilege/bean/InputItem;

    .line 235
    .local v4, "item":Lcom/samsung/privilege/bean/InputItem;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v4, Lcom/samsung/privilege/bean/InputItem;->key:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v4, Lcom/samsung/privilege/bean/InputItem;->value:Ljava/lang/String;

    const-string v14, "UTF-8"

    invoke-static {v13, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 236
    const-string v10, "&"

    .line 233
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_e

    .line 243
    .end local v3    # "i":I
    .end local v4    # "item":Lcom/samsung/privilege/bean/InputItem;
    :cond_c3
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    goto/16 :goto_24

    .line 276
    .restart local v6    # "out":Ljava/io/PrintWriter;
    .restart local v7    # "response":Ljava/lang/String;
    .restart local v8    # "response_code":I
    .restart local v9    # "s":Ljava/util/Scanner;
    :cond_cb
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_80

    .line 279
    .end local v9    # "s":Ljava/util/Scanner;
    :cond_e1
    new-instance v9, Ljava/util/Scanner;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 282
    .restart local v9    # "s":Ljava/util/Scanner;
    :goto_ea
    invoke-virtual {v9}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v12

    if-eqz v12, :cond_86

    .line 283
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_104
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_104} :catch_106
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_104} :catch_13b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_104} :catch_18c

    move-result-object v7

    goto :goto_ea

    .line 288
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "obj_url":Ljava/net/URL;
    .end local v6    # "out":Ljava/io/PrintWriter;
    .end local v7    # "response":Ljava/lang/String;
    .end local v8    # "response_code":I
    .end local v9    # "s":Ljava/util/Scanner;
    .end local v10    # "str_and":Ljava/lang/String;
    .end local v11    # "string_param":Ljava/lang/String;
    :catch_106
    move-exception v2

    .line 289
    .local v2, "ex":Ljava/net/MalformedURLException;
    const-string v12, "MyLog"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "(MalformedURLException) HttpCall.RQ_POST:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    new-instance v12, Lcom/samsung/privilege/util/http/HttpRS;

    const/16 v13, -0x1e

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "(MalformedURLException):"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/samsung/privilege/util/http/HttpRS;-><init>(ILjava/lang/String;)V

    goto/16 :goto_8b

    .line 291
    .end local v2    # "ex":Ljava/net/MalformedURLException;
    :catch_13b
    move-exception v2

    .line 292
    .local v2, "ex":Ljava/io/IOException;
    const-string v12, "MyLog"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "(IOException) HttpCall.RQ_POST:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    new-instance v12, Lcom/samsung/privilege/util/http/HttpRS;

    const/16 v13, -0x14

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "(getLocalizedMessage):"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "(getMessage):"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "(toString):"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/samsung/privilege/util/http/HttpRS;-><init>(ILjava/lang/String;)V

    goto/16 :goto_8b

    .line 294
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_18c
    move-exception v2

    .line 295
    .local v2, "ex":Ljava/lang/Exception;
    const-string v12, "MyLog"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "(Exception) HttpCall.RQ_POST:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    new-instance v12, Lcom/samsung/privilege/util/http/HttpRS;

    const/16 v13, -0xa

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "(Exception):"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/samsung/privilege/util/http/HttpRS;-><init>(ILjava/lang/String;)V

    goto/16 :goto_8b
.end method

.method public run()V
    .registers 8

    .prologue
    .line 192
    :try_start_0
    iget-object v2, p0, Lcom/samsung/privilege/util/http/HttpCall$3;->val$url:Ljava/lang/String;

    .line 194
    .local v2, "url_encode":Ljava/lang/String;
    const-string v3, " "

    const-string v4, "%20"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 195
    const-string v3, "\""

    const-string v4, "%22"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 196
    const-string v3, "#"

    const-string v4, "%23"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 197
    const-string v3, "{"

    const-string v4, "%7B"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 198
    const-string v3, "}"

    const-string v4, "%7D"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 199
    const-string v3, "<"

    const-string v4, "%3C"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 200
    const-string v3, ">"

    const-string v4, "%3E"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 202
    const-string v3, "MyLog"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "url_encode="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v3, p0, Lcom/samsung/privilege/util/http/HttpCall$3;->val$params:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v3}, Lcom/samsung/privilege/util/http/HttpCall$3;->requestPost(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/samsung/privilege/util/http/HttpRS;

    move-result-object v1

    .line 205
    .local v1, "resp":Lcom/samsung/privilege/util/http/HttpRS;
    iget-object v3, p0, Lcom/samsung/privilege/util/http/HttpCall$3;->val$listener:Lcom/samsung/privilege/util/http/RQListener;

    iget v4, v1, Lcom/samsung/privilege/util/http/HttpRS;->response_code:I

    iget-object v5, v1, Lcom/samsung/privilege/util/http/HttpRS;->response_text:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/privilege/util/http/HttpCall$3;->val$state:Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/privilege/util/http/RQListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_5f
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_5f} :catch_60
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_5f} :catch_69
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5f} :catch_72

    .line 213
    .end local v1    # "resp":Lcom/samsung/privilege/util/http/HttpRS;
    .end local v2    # "url_encode":Ljava/lang/String;
    :goto_5f
    return-void

    .line 206
    :catch_60
    move-exception v0

    .line 207
    .local v0, "e":Ljava/io/FileNotFoundException;
    iget-object v3, p0, Lcom/samsung/privilege/util/http/HttpCall$3;->val$listener:Lcom/samsung/privilege/util/http/RQListener;

    iget-object v4, p0, Lcom/samsung/privilege/util/http/HttpCall$3;->val$state:Ljava/lang/Object;

    invoke-interface {v3, v0, v4}, Lcom/samsung/privilege/util/http/RQListener;->onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V

    goto :goto_5f

    .line 208
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_69
    move-exception v0

    .line 209
    .local v0, "e":Ljava/net/MalformedURLException;
    iget-object v3, p0, Lcom/samsung/privilege/util/http/HttpCall$3;->val$listener:Lcom/samsung/privilege/util/http/RQListener;

    iget-object v4, p0, Lcom/samsung/privilege/util/http/HttpCall$3;->val$state:Ljava/lang/Object;

    invoke-interface {v3, v0, v4}, Lcom/samsung/privilege/util/http/RQListener;->onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V

    goto :goto_5f

    .line 210
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_72
    move-exception v0

    .line 211
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/samsung/privilege/util/http/HttpCall$3;->val$listener:Lcom/samsung/privilege/util/http/RQListener;

    iget-object v4, p0, Lcom/samsung/privilege/util/http/HttpCall$3;->val$state:Ljava/lang/Object;

    invoke-interface {v3, v0, v4}, Lcom/samsung/privilege/util/http/RQListener;->onIOException(Ljava/io/IOException;Ljava/lang/Object;)V

    goto :goto_5f
.end method
