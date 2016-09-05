.class public Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;
.super Ljava/lang/Object;
.source "BasicListHeaderIterator.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HeaderIterator;


# instance fields
.field protected final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/Header;",
            ">;"
        }
    .end annotation
.end field

.field protected b:I

.field protected c:I

.field protected d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/Header;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const-string/jumbo v0, "Header list"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->a:Ljava/util/List;

    .line 87
    iput-object p2, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->d:Ljava/lang/String;

    .line 88
    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->a(I)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->b:I

    .line 89
    iput v1, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->c:I

    .line 90
    return-void
.end method


# virtual methods
.method protected a(I)I
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 103
    .line 104
    if-ge p1, v1, :cond_4

    .line 114
    :goto_3
    return v1

    .line 108
    :cond_4
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .line 109
    const/4 v0, 0x0

    move v2, v0

    move v0, p1

    .line 110
    :goto_f
    if-nez v2, :cond_1c

    if-ge v0, v3, :cond_1c

    .line 111
    add-int/lit8 p1, v0, 0x1

    .line 112
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->b(I)Z

    move-result v0

    move v2, v0

    move v0, p1

    goto :goto_f

    .line 114
    :cond_1c
    if-eqz v2, :cond_20

    :goto_1e
    move v1, v0

    goto :goto_3

    :cond_20
    move v0, v1

    goto :goto_1e
.end method

.method public a()Lcz/msebera/android/httpclient/Header;
    .registers 3

    .prologue
    .line 154
    iget v0, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->b:I

    .line 155
    if-gez v0, :cond_d

    .line 156
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string/jumbo v1, "Iteration already finished."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_d
    iput v0, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->c:I

    .line 160
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->a(I)I

    move-result v1

    iput v1, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->b:I

    .line 162
    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/Header;

    return-object v0
.end method

.method protected b(I)Z
    .registers 4

    .prologue
    .line 127
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->d:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 128
    const/4 v0, 0x1

    .line 134
    :goto_5
    return v0

    .line 132
    :cond_6
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/Header;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->c()Ljava/lang/String;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_5
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 140
    iget v0, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->b:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->a()Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 185
    iget v0, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->c:I

    if-ltz v0, :cond_1c

    const/4 v0, 0x1

    :goto_5
    const-string/jumbo v1, "No header to remove"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->a(ZLjava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->a:Ljava/util/List;

    iget v1, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 187
    const/4 v0, -0x1

    iput v0, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->c:I

    .line 188
    iget v0, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;->b:I

    .line 189
    return-void

    .line 185
    :cond_1c
    const/4 v0, 0x0

    goto :goto_5
.end method
