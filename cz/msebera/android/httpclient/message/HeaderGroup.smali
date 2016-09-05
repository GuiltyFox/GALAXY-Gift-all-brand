.class public Lcz/msebera/android/httpclient/message/HeaderGroup;
.super Ljava/lang/Object;
.source "HeaderGroup.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/Header;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->a:Ljava/util/List;

    .line 62
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    return-void
.end method

.method public a(Lcz/msebera/android/httpclient/Header;)V
    .registers 3

    .prologue
    .line 78
    if-nez p1, :cond_3

    .line 82
    :goto_2
    return-void

    .line 81
    :cond_3
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public a([Lcz/msebera/android/httpclient/Header;)V
    .registers 3

    .prologue
    .line 128
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/message/HeaderGroup;->a()V

    .line 129
    if-nez p1, :cond_6

    .line 133
    :goto_5
    return-void

    .line 132
    :cond_6
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->a:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method public a(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;
    .registers 6

    .prologue
    .line 176
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 180
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_28

    .line 181
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/Header;

    .line 182
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 183
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_24
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 187
    :cond_28
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcz/msebera/android/httpclient/Header;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcz/msebera/android/httpclient/Header;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;
    .registers 5

    .prologue
    .line 202
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    .line 203
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/Header;

    .line 204
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 208
    :goto_1c
    return-object v0

    .line 202
    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 208
    :cond_21
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public b(Lcz/msebera/android/httpclient/Header;)V
    .registers 3

    .prologue
    .line 90
    if-nez p1, :cond_3

    .line 94
    :goto_2
    return-void

    .line 93
    :cond_3
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public b()[Lcz/msebera/android/httpclient/Header;
    .registers 3

    .prologue
    .line 237
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->a:Ljava/util/List;

    iget-object v1, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcz/msebera/android/httpclient/Header;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcz/msebera/android/httpclient/Header;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;
    .registers 5

    .prologue
    .line 221
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_22

    .line 222
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/Header;

    .line 223
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 228
    :goto_1d
    return-object v0

    .line 221
    :cond_1e
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    .line 228
    :cond_22
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public c()Lcz/msebera/android/httpclient/HeaderIterator;
    .registers 4

    .prologue
    .line 271
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;

    iget-object v1, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public c(Lcz/msebera/android/httpclient/Header;)V
    .registers 5

    .prologue
    .line 104
    if-nez p1, :cond_3

    .line 118
    :goto_2
    return-void

    .line 110
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2d

    .line 111
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/Header;

    .line 112
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 113
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->a:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 110
    :cond_29
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 117
    :cond_2d
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 303
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 253
    move v1, v2

    :goto_2
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 254
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/Header;

    .line 255
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 256
    const/4 v2, 0x1

    .line 260
    :cond_1d
    return v2

    .line 253
    :cond_1e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public e(Ljava/lang/String;)Lcz/msebera/android/httpclient/HeaderIterator;
    .registers 4

    .prologue
    .line 285
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;

    iget-object v1, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->a:Ljava/util/List;

    invoke-direct {v0, v1, p1}, Lcz/msebera/android/httpclient/message/BasicListHeaderIterator;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/HeaderGroup;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
