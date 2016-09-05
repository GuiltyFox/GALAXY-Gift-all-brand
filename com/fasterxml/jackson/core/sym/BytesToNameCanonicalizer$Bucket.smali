.class final Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
.super Ljava/lang/Object;
.source "BytesToNameCanonicalizer.java"


# instance fields
.field private final hash:I

.field private final length:I

.field protected final name:Lcom/fasterxml/jackson/core/sym/Name;

.field protected final next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;


# direct methods
.method constructor <init>(Lcom/fasterxml/jackson/core/sym/Name;Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;)V
    .registers 4

    .prologue
    .line 1194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1195
    iput-object p1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->name:Lcom/fasterxml/jackson/core/sym/Name;

    .line 1196
    iput-object p2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 1197
    if-nez p2, :cond_13

    const/4 v0, 0x1

    :goto_a
    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->length:I

    .line 1198
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/sym/Name;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->hash:I

    .line 1199
    return-void

    .line 1197
    :cond_13
    iget v0, p2, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->length:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method static synthetic access$000(Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;)I
    .registers 2

    .prologue
    .line 1187
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->length:I

    return v0
.end method


# virtual methods
.method public find(III)Lcom/fasterxml/jackson/core/sym/Name;
    .registers 7

    .prologue
    .line 1202
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->hash:I

    if-ne v0, p1, :cond_f

    .line 1203
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->name:Lcom/fasterxml/jackson/core/sym/Name;

    invoke-virtual {v0, p2, p3}, Lcom/fasterxml/jackson/core/sym/Name;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1204
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->name:Lcom/fasterxml/jackson/core/sym/Name;

    .line 1215
    :cond_e
    :goto_e
    return-object v0

    .line 1207
    :cond_f
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    move-object v1, v0

    :goto_12
    if-eqz v1, :cond_24

    .line 1208
    iget v0, v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->hash:I

    if-ne v0, p1, :cond_20

    .line 1209
    iget-object v0, v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->name:Lcom/fasterxml/jackson/core/sym/Name;

    .line 1210
    invoke-virtual {v0, p2, p3}, Lcom/fasterxml/jackson/core/sym/Name;->equals(II)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1207
    :cond_20
    iget-object v0, v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    move-object v1, v0

    goto :goto_12

    .line 1215
    :cond_24
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public find(I[II)Lcom/fasterxml/jackson/core/sym/Name;
    .registers 7

    .prologue
    .line 1219
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->hash:I

    if-ne v0, p1, :cond_f

    .line 1220
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->name:Lcom/fasterxml/jackson/core/sym/Name;

    invoke-virtual {v0, p2, p3}, Lcom/fasterxml/jackson/core/sym/Name;->equals([II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1221
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->name:Lcom/fasterxml/jackson/core/sym/Name;

    .line 1232
    :cond_e
    :goto_e
    return-object v0

    .line 1224
    :cond_f
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    move-object v1, v0

    :goto_12
    if-eqz v1, :cond_24

    .line 1225
    iget v0, v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->hash:I

    if-ne v0, p1, :cond_20

    .line 1226
    iget-object v0, v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->name:Lcom/fasterxml/jackson/core/sym/Name;

    .line 1227
    invoke-virtual {v0, p2, p3}, Lcom/fasterxml/jackson/core/sym/Name;->equals([II)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1224
    :cond_20
    iget-object v0, v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    move-object v1, v0

    goto :goto_12

    .line 1232
    :cond_24
    const/4 v0, 0x0

    goto :goto_e
.end method
