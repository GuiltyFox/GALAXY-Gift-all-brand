.class public final Lrx/subjects/SubjectSubscriptionManager$State;
.super Ljava/lang/Object;
.source "SubjectSubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final c:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

.field static final d:Lrx/subjects/SubjectSubscriptionManager$State;

.field static final e:Lrx/subjects/SubjectSubscriptionManager$State;


# instance fields
.field final a:Z

.field final b:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 151
    new-array v0, v3, [Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    sput-object v0, Lrx/subjects/SubjectSubscriptionManager$State;->c:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .line 152
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager$State;

    const/4 v1, 0x1

    sget-object v2, Lrx/subjects/SubjectSubscriptionManager$State;->c:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    invoke-direct {v0, v1, v2}, Lrx/subjects/SubjectSubscriptionManager$State;-><init>(Z[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V

    sput-object v0, Lrx/subjects/SubjectSubscriptionManager$State;->d:Lrx/subjects/SubjectSubscriptionManager$State;

    .line 153
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager$State;

    sget-object v1, Lrx/subjects/SubjectSubscriptionManager$State;->c:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    invoke-direct {v0, v3, v1}, Lrx/subjects/SubjectSubscriptionManager$State;-><init>(Z[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V

    sput-object v0, Lrx/subjects/SubjectSubscriptionManager$State;->e:Lrx/subjects/SubjectSubscriptionManager$State;

    return-void
.end method

.method public constructor <init>(Z[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V
    .registers 3

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-boolean p1, p0, Lrx/subjects/SubjectSubscriptionManager$State;->a:Z

    .line 157
    iput-object p2, p0, Lrx/subjects/SubjectSubscriptionManager$State;->b:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .line 158
    return-void
.end method


# virtual methods
.method public a(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Lrx/subjects/SubjectSubscriptionManager$State;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 160
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$State;->b:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .line 161
    array-length v0, v0

    .line 162
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .line 163
    iget-object v2, p0, Lrx/subjects/SubjectSubscriptionManager$State;->b:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    aput-object p1, v1, v0

    .line 165
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager$State;

    iget-boolean v2, p0, Lrx/subjects/SubjectSubscriptionManager$State;->a:Z

    invoke-direct {v0, v2, v1}, Lrx/subjects/SubjectSubscriptionManager$State;-><init>(Z[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V

    return-object v0
.end method

.method public b(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Lrx/subjects/SubjectSubscriptionManager$State;
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 168
    iget-object v5, p0, Lrx/subjects/SubjectSubscriptionManager$State;->b:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .line 169
    array-length v6, v5

    .line 170
    const/4 v0, 0x1

    if-ne v6, v0, :cond_e

    aget-object v0, v5, v4

    if-ne v0, p1, :cond_e

    .line 171
    sget-object p0, Lrx/subjects/SubjectSubscriptionManager$State;->e:Lrx/subjects/SubjectSubscriptionManager$State;

    .line 195
    :cond_d
    :goto_d
    return-object p0

    .line 173
    :cond_e
    if-eqz v6, :cond_d

    .line 176
    add-int/lit8 v0, v6, -0x1

    new-array v2, v0, [Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move v3, v4

    move v1, v4

    .line 178
    :goto_16
    if-ge v3, v6, :cond_29

    .line 179
    aget-object v7, v5, v3

    .line 180
    if-eq v7, p1, :cond_42

    .line 181
    add-int/lit8 v0, v6, -0x1

    if-eq v1, v0, :cond_d

    .line 184
    add-int/lit8 v0, v1, 0x1

    aput-object v7, v2, v1

    .line 178
    :goto_24
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_16

    .line 187
    :cond_29
    if-nez v1, :cond_2e

    .line 188
    sget-object p0, Lrx/subjects/SubjectSubscriptionManager$State;->e:Lrx/subjects/SubjectSubscriptionManager$State;

    goto :goto_d

    .line 190
    :cond_2e
    add-int/lit8 v0, v6, -0x1

    if-ge v1, v0, :cond_40

    .line 191
    new-array v0, v1, [Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .line 192
    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    :goto_37
    new-instance v1, Lrx/subjects/SubjectSubscriptionManager$State;

    iget-boolean v2, p0, Lrx/subjects/SubjectSubscriptionManager$State;->a:Z

    invoke-direct {v1, v2, v0}, Lrx/subjects/SubjectSubscriptionManager$State;-><init>(Z[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V

    move-object p0, v1

    goto :goto_d

    :cond_40
    move-object v0, v2

    goto :goto_37

    :cond_42
    move v0, v1

    goto :goto_24
.end method
