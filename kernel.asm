
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	93813103          	ld	sp,-1736(sp) # 8000b938 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	150060ef          	jal	ra,8000616c <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:

    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    csrw sscratch, sp
    80001004:	14011073          	csrw	sscratch,sp
    sd x0, 0(sp)
    80001008:	00013023          	sd	zero,0(sp)
    sd x1, 8(sp)
    8000100c:	00113423          	sd	ra,8(sp)
    sd x2, 16(sp)
    80001010:	00213823          	sd	sp,16(sp)
    sd x3, 24(sp)
    80001014:	00313c23          	sd	gp,24(sp)
    sd x4, 32(sp)
    80001018:	02413023          	sd	tp,32(sp)
    sd x5, 40(sp)
    8000101c:	02513423          	sd	t0,40(sp)
    sd x6, 48(sp)
    80001020:	02613823          	sd	t1,48(sp)
    sd x7, 56(sp)
    80001024:	02713c23          	sd	t2,56(sp)
    sd x8, 64(sp)
    80001028:	04813023          	sd	s0,64(sp)
    sd x9, 72(sp)
    8000102c:	04913423          	sd	s1,72(sp)
    sd x10, 80(sp)
    80001030:	04a13823          	sd	a0,80(sp)
    sd x11, 88(sp)
    80001034:	04b13c23          	sd	a1,88(sp)
    sd x12, 96(sp)
    80001038:	06c13023          	sd	a2,96(sp)
    sd x13, 104(sp)
    8000103c:	06d13423          	sd	a3,104(sp)
    sd x14, 112(sp)
    80001040:	06e13823          	sd	a4,112(sp)
    sd x15, 120(sp)
    80001044:	06f13c23          	sd	a5,120(sp)
    sd x16, 128(sp)
    80001048:	09013023          	sd	a6,128(sp)
    sd x17, 136(sp)
    8000104c:	09113423          	sd	a7,136(sp)
    sd x18, 144(sp)
    80001050:	09213823          	sd	s2,144(sp)
    sd x19, 152(sp)
    80001054:	09313c23          	sd	s3,152(sp)
    sd x20, 160(sp)
    80001058:	0b413023          	sd	s4,160(sp)
    sd x21, 168(sp)
    8000105c:	0b513423          	sd	s5,168(sp)
    sd x22, 176(sp)
    80001060:	0b613823          	sd	s6,176(sp)
    sd x23, 184(sp)
    80001064:	0b713c23          	sd	s7,184(sp)
    sd x24, 192(sp)
    80001068:	0d813023          	sd	s8,192(sp)
    sd x25, 200(sp)
    8000106c:	0d913423          	sd	s9,200(sp)
    sd x26, 208(sp)
    80001070:	0da13823          	sd	s10,208(sp)
    sd x27, 216(sp)
    80001074:	0db13c23          	sd	s11,216(sp)
    sd x28, 224(sp)
    80001078:	0fc13023          	sd	t3,224(sp)
    sd x29, 232(sp)
    8000107c:	0fd13423          	sd	t4,232(sp)
    sd x30, 240(sp)
    80001080:	0fe13823          	sd	t5,240(sp)
    sd x31, 248(sp)
    80001084:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001088:	398030ef          	jal	ra,80004420 <_ZN5Riscv20handleSupervisorTrapEv>

    ld x0, 0(sp)
    8000108c:	00013003          	ld	zero,0(sp)
    ld x1, 8(sp)
    80001090:	00813083          	ld	ra,8(sp)
    ld x2, 16(sp)
    80001094:	01013103          	ld	sp,16(sp)
    ld x3, 24(sp)
    80001098:	01813183          	ld	gp,24(sp)
    ld x4, 32(sp)
    8000109c:	02013203          	ld	tp,32(sp)
    ld x5, 40(sp)
    800010a0:	02813283          	ld	t0,40(sp)
    ld x6, 48(sp)
    800010a4:	03013303          	ld	t1,48(sp)
    ld x7, 56(sp)
    800010a8:	03813383          	ld	t2,56(sp)
    ld x8, 64(sp)
    800010ac:	04013403          	ld	s0,64(sp)
    ld x9, 72(sp)
    800010b0:	04813483          	ld	s1,72(sp)
    ld x10, 80(sp)
    800010b4:	05013503          	ld	a0,80(sp)
    ld x11, 88(sp)
    800010b8:	05813583          	ld	a1,88(sp)
    ld x12, 96(sp)
    800010bc:	06013603          	ld	a2,96(sp)
    ld x13, 104(sp)
    800010c0:	06813683          	ld	a3,104(sp)
    ld x14, 112(sp)
    800010c4:	07013703          	ld	a4,112(sp)
    ld x15, 120(sp)
    800010c8:	07813783          	ld	a5,120(sp)
    ld x16, 128(sp)
    800010cc:	08013803          	ld	a6,128(sp)
    ld x17, 136(sp)
    800010d0:	08813883          	ld	a7,136(sp)
    ld x18, 144(sp)
    800010d4:	09013903          	ld	s2,144(sp)
    ld x19, 152(sp)
    800010d8:	09813983          	ld	s3,152(sp)
    ld x20, 160(sp)
    800010dc:	0a013a03          	ld	s4,160(sp)
    ld x21, 168(sp)
    800010e0:	0a813a83          	ld	s5,168(sp)
    ld x22, 176(sp)
    800010e4:	0b013b03          	ld	s6,176(sp)
    ld x23, 184(sp)
    800010e8:	0b813b83          	ld	s7,184(sp)
    ld x24, 192(sp)
    800010ec:	0c013c03          	ld	s8,192(sp)
    ld x25, 200(sp)
    800010f0:	0c813c83          	ld	s9,200(sp)
    ld x26, 208(sp)
    800010f4:	0d013d03          	ld	s10,208(sp)
    ld x27, 216(sp)
    800010f8:	0d813d83          	ld	s11,216(sp)
    ld x28, 224(sp)
    800010fc:	0e013e03          	ld	t3,224(sp)
    ld x29, 232(sp)
    80001100:	0e813e83          	ld	t4,232(sp)
    ld x30, 240(sp)
    80001104:	0f013f03          	ld	t5,240(sp)
    ld x31, 248(sp)
    80001108:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    8000110c:	10010113          	addi	sp,sp,256

    80001110:	10200073          	sret
	...

0000000080001120 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001120:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001124:	00313c23          	sd	gp,24(sp)
    80001128:	02413023          	sd	tp,32(sp)
    8000112c:	02513423          	sd	t0,40(sp)
    80001130:	02613823          	sd	t1,48(sp)
    80001134:	02713c23          	sd	t2,56(sp)
    80001138:	04813023          	sd	s0,64(sp)
    8000113c:	04913423          	sd	s1,72(sp)
    80001140:	04a13823          	sd	a0,80(sp)
    80001144:	04b13c23          	sd	a1,88(sp)
    80001148:	06c13023          	sd	a2,96(sp)
    8000114c:	06d13423          	sd	a3,104(sp)
    80001150:	06e13823          	sd	a4,112(sp)
    80001154:	06f13c23          	sd	a5,120(sp)
    80001158:	09013023          	sd	a6,128(sp)
    8000115c:	09113423          	sd	a7,136(sp)
    80001160:	09213823          	sd	s2,144(sp)
    80001164:	09313c23          	sd	s3,152(sp)
    80001168:	0b413023          	sd	s4,160(sp)
    8000116c:	0b513423          	sd	s5,168(sp)
    80001170:	0b613823          	sd	s6,176(sp)
    80001174:	0b713c23          	sd	s7,184(sp)
    80001178:	0d813023          	sd	s8,192(sp)
    8000117c:	0d913423          	sd	s9,200(sp)
    80001180:	0da13823          	sd	s10,208(sp)
    80001184:	0db13c23          	sd	s11,216(sp)
    80001188:	0fc13023          	sd	t3,224(sp)
    8000118c:	0fd13423          	sd	t4,232(sp)
    80001190:	0fe13823          	sd	t5,240(sp)
    80001194:	0ff13c23          	sd	t6,248(sp)
    ret
    80001198:	00008067          	ret

000000008000119c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000119c:	01813183          	ld	gp,24(sp)
    800011a0:	02013203          	ld	tp,32(sp)
    800011a4:	02813283          	ld	t0,40(sp)
    800011a8:	03013303          	ld	t1,48(sp)
    800011ac:	03813383          	ld	t2,56(sp)
    800011b0:	04013403          	ld	s0,64(sp)
    800011b4:	04813483          	ld	s1,72(sp)
    800011b8:	05013503          	ld	a0,80(sp)
    800011bc:	05813583          	ld	a1,88(sp)
    800011c0:	06013603          	ld	a2,96(sp)
    800011c4:	06813683          	ld	a3,104(sp)
    800011c8:	07013703          	ld	a4,112(sp)
    800011cc:	07813783          	ld	a5,120(sp)
    800011d0:	08013803          	ld	a6,128(sp)
    800011d4:	08813883          	ld	a7,136(sp)
    800011d8:	09013903          	ld	s2,144(sp)
    800011dc:	09813983          	ld	s3,152(sp)
    800011e0:	0a013a03          	ld	s4,160(sp)
    800011e4:	0a813a83          	ld	s5,168(sp)
    800011e8:	0b013b03          	ld	s6,176(sp)
    800011ec:	0b813b83          	ld	s7,184(sp)
    800011f0:	0c013c03          	ld	s8,192(sp)
    800011f4:	0c813c83          	ld	s9,200(sp)
    800011f8:	0d013d03          	ld	s10,208(sp)
    800011fc:	0d813d83          	ld	s11,216(sp)
    80001200:	0e013e03          	ld	t3,224(sp)
    80001204:	0e813e83          	ld	t4,232(sp)
    80001208:	0f013f03          	ld	t5,240(sp)
    8000120c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001210:	10010113          	addi	sp,sp,256
    ret
    80001214:	00008067          	ret

0000000080001218 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001218:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    8000121c:	00b29a63          	bne	t0,a1,80001230 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001220:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001224:	fe029ae3          	bnez	t0,80001218 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001228:	00000513          	li	a0,0
    jr ra                  # Return.
    8000122c:	00008067          	ret

0000000080001230 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001230:	00100513          	li	a0,1
    80001234:	00008067          	ret

0000000080001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:
    #a0 - &old->Context
    #a1 - &running->Context
    sd sp, 0 * 8(a0)
    80001238:	00253023          	sd	sp,0(a0) # 1000 <_entry-0x7ffff000>
    sd ra, 1 * 8(a0)
    8000123c:	00153423          	sd	ra,8(a0)

    ld sp, 0 * 8(a1)
    80001240:	0005b103          	ld	sp,0(a1)
    ld ra, 1 * 8(a1)
    80001244:	0085b083          	ld	ra,8(a1)

    ret
    80001248:	00008067          	ret

000000008000124c <_ZN3PCB20contextSwitchExitingEPNS_7ContextE>:

.global _ZN3PCB20contextSwitchExitingEPNS_7ContextE
.type _ZN3PCB20contextSwitchExitingEPNS_7ContextE, @function
_ZN3PCB20contextSwitchExitingEPNS_7ContextE:
    #a0 - &running->Context
    ld sp, 0 * 8(a0)
    8000124c:	00053103          	ld	sp,0(a0)
    ld ra, 1 * 8(a0)
    80001250:	00853083          	ld	ra,8(a0)

    80001254:	00008067          	ret

0000000080001258 <_Z6strcpyPKcPc>:
//singleton slab allocator
static slab_allocator_t* slabAllocator = nullptr;

//helping functions
void strcpy(const char* src, char* dst)
{
    80001258:	ff010113          	addi	sp,sp,-16
    8000125c:	00813423          	sd	s0,8(sp)
    80001260:	01010413          	addi	s0,sp,16
    while(*src != '\0')
    80001264:	00054783          	lbu	a5,0(a0)
    80001268:	00078a63          	beqz	a5,8000127c <_Z6strcpyPKcPc+0x24>
    {
        *dst = *src;
    8000126c:	00f58023          	sb	a5,0(a1)
        src++;
    80001270:	00150513          	addi	a0,a0,1
        dst++;
    80001274:	00158593          	addi	a1,a1,1
    while(*src != '\0')
    80001278:	fedff06f          	j	80001264 <_Z6strcpyPKcPc+0xc>
    }
    *dst = *src;
    8000127c:	00f58023          	sb	a5,0(a1)
}
    80001280:	00813403          	ld	s0,8(sp)
    80001284:	01010113          	addi	sp,sp,16
    80001288:	00008067          	ret

000000008000128c <_Z19slab_allocator_initP14buddyAllocator>:

slab_allocator_t* slab_allocator_init(buddyAllocator *buddy)
{
    8000128c:	fe010113          	addi	sp,sp,-32
    80001290:	00113c23          	sd	ra,24(sp)
    80001294:	00813823          	sd	s0,16(sp)
    80001298:	00913423          	sd	s1,8(sp)
    8000129c:	01213023          	sd	s2,0(sp)
    800012a0:	02010413          	addi	s0,sp,32
    800012a4:	00050493          	mv	s1,a0
    slab_allocator_t* slabAllocatorLocal = (slab_allocator_t*)(buddy + 1);
    800012a8:	0e050913          	addi	s2,a0,224

    slabAllocatorLocal->buddy = buddy;
    800012ac:	0ea53023          	sd	a0,224(a0)
    slabAllocatorLocal->cacheList = nullptr;
    800012b0:	0e053423          	sd	zero,232(a0)
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    800012b4:	00000713          	li	a4,0
    800012b8:	0180006f          	j	800012d0 <_Z19slab_allocator_initP14buddyAllocator+0x44>
        slabAllocatorLocal->cachesBuffers[i] = nullptr;
    800012bc:	00270793          	addi	a5,a4,2
    800012c0:	00379793          	slli	a5,a5,0x3
    800012c4:	00f487b3          	add	a5,s1,a5
    800012c8:	0e07b023          	sd	zero,224(a5)
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    800012cc:	00170713          	addi	a4,a4,1
    800012d0:	00c00793          	li	a5,12
    800012d4:	fee7f4e3          	bgeu	a5,a4,800012bc <_Z19slab_allocator_initP14buddyAllocator+0x30>

    strcpy("Cache of caches", slabAllocatorLocal->cacheOfCaches.cacheName);
    800012d8:	15848593          	addi	a1,s1,344
    800012dc:	00008517          	auipc	a0,0x8
    800012e0:	d4450513          	addi	a0,a0,-700 # 80009020 <CONSOLE_STATUS+0x10>
    800012e4:	00000097          	auipc	ra,0x0
    800012e8:	f74080e7          	jalr	-140(ra) # 80001258 <_Z6strcpyPKcPc>
    slabAllocatorLocal->cacheOfCaches.next = nullptr;
    800012ec:	1804bc23          	sd	zero,408(s1)
    slabAllocatorLocal->cacheOfCaches.prev = nullptr;
    800012f0:	1a04b023          	sd	zero,416(s1)
    slabAllocatorLocal->cacheOfCaches.ctor = nullptr;
    800012f4:	1c04b823          	sd	zero,464(s1)
    slabAllocatorLocal->cacheOfCaches.dtor = nullptr;
    800012f8:	1c04bc23          	sd	zero,472(s1)
    slabAllocatorLocal->cacheOfCaches.slabs_empty = nullptr;
    800012fc:	1a04b423          	sd	zero,424(s1)
    slabAllocatorLocal->cacheOfCaches.slabs_full = nullptr;
    80001300:	1a04b823          	sd	zero,432(s1)
    slabAllocatorLocal->cacheOfCaches.slabs_partial = nullptr;
    80001304:	1a04bc23          	sd	zero,440(s1)
    slabAllocatorLocal->cacheOfCaches.slab_size = CACHE_OF_CACHES_SLAB_SIZE;
    80001308:	00200793          	li	a5,2
    8000130c:	1cf4b023          	sd	a5,448(s1)
    slabAllocatorLocal->cacheOfCaches.obj_size = sizeof(kmem_cache_t);
    80001310:	08800793          	li	a5,136
    80001314:	1cf4b423          	sd	a5,456(s1)
    return slabAllocatorLocal;
}
    80001318:	00090513          	mv	a0,s2
    8000131c:	01813083          	ld	ra,24(sp)
    80001320:	01013403          	ld	s0,16(sp)
    80001324:	00813483          	ld	s1,8(sp)
    80001328:	00013903          	ld	s2,0(sp)
    8000132c:	02010113          	addi	sp,sp,32
    80001330:	00008067          	ret

0000000080001334 <_Z14allocateObjectP6slab_s>:

void* allocateObject(slab_t* slab)
{
    80001334:	ff010113          	addi	sp,sp,-16
    80001338:	00813423          	sd	s0,8(sp)
    8000133c:	01010413          	addi	s0,sp,16
    80001340:	00050593          	mv	a1,a0
    int index = -1;
    void* addr = nullptr;
    for(size_t i = 0;i < slab->numOfObjects;i++)
    80001344:	00000793          	li	a5,0
    80001348:	0185b703          	ld	a4,24(a1)
    8000134c:	04e7f663          	bgeu	a5,a4,80001398 <_Z14allocateObjectP6slab_s+0x64>
    {
        size_t mask = 1 << (i%8);
    80001350:	0077f713          	andi	a4,a5,7
    80001354:	00100613          	li	a2,1
    80001358:	00e616bb          	sllw	a3,a2,a4
        if((uint8)slab->allocated[i/8] & mask)
    8000135c:	0037d713          	srli	a4,a5,0x3
    80001360:	00e58733          	add	a4,a1,a4
    80001364:	03074703          	lbu	a4,48(a4)
    80001368:	00d77733          	and	a4,a4,a3
    8000136c:	00071663          	bnez	a4,80001378 <_Z14allocateObjectP6slab_s+0x44>
    for(size_t i = 0;i < slab->numOfObjects;i++)
    80001370:	00178793          	addi	a5,a5,1
    80001374:	fd5ff06f          	j	80001348 <_Z14allocateObjectP6slab_s+0x14>
        {
            addr = (void*)((size_t)slab->startAddress + sizeof(slab_t)+ i*slab->owner->obj_size);
    80001378:	0285b503          	ld	a0,40(a1)
    8000137c:	0105b703          	ld	a4,16(a1)
    80001380:	07073703          	ld	a4,112(a4)
    80001384:	02f70733          	mul	a4,a4,a5
    80001388:	00e50533          	add	a0,a0,a4
    8000138c:	05050513          	addi	a0,a0,80
            index = i;
    80001390:	0007879b          	sext.w	a5,a5
            break;
    80001394:	00c0006f          	j	800013a0 <_Z14allocateObjectP6slab_s+0x6c>
    void* addr = nullptr;
    80001398:	00000513          	li	a0,0
    int index = -1;
    8000139c:	fff00793          	li	a5,-1
        }
    }
    if(addr == nullptr)
    800013a0:	04050063          	beqz	a0,800013e0 <_Z14allocateObjectP6slab_s+0xac>
        return nullptr;

    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] | (1 << (index%8));
    800013a4:	41f7d69b          	sraiw	a3,a5,0x1f
    800013a8:	01d6d69b          	srliw	a3,a3,0x1d
    800013ac:	00f687bb          	addw	a5,a3,a5
    800013b0:	4037d71b          	sraiw	a4,a5,0x3
    800013b4:	00e58733          	add	a4,a1,a4
    800013b8:	03070603          	lb	a2,48(a4)
    800013bc:	0077f793          	andi	a5,a5,7
    800013c0:	40d787bb          	subw	a5,a5,a3
    800013c4:	00100693          	li	a3,1
    800013c8:	00f697bb          	sllw	a5,a3,a5
    800013cc:	00f667b3          	or	a5,a2,a5
    800013d0:	02f70823          	sb	a5,48(a4)
    slab->numOfAllocatedObjects++;
    800013d4:	0205b783          	ld	a5,32(a1)
    800013d8:	00178793          	addi	a5,a5,1
    800013dc:	02f5b023          	sd	a5,32(a1)

    return addr;
}
    800013e0:	00813403          	ld	s0,8(sp)
    800013e4:	01010113          	addi	sp,sp,16
    800013e8:	00008067          	ret

00000000800013ec <_Z4fullP6slab_s>:
bool full(slab_t* slab)
{
    800013ec:	ff010113          	addi	sp,sp,-16
    800013f0:	00813423          	sd	s0,8(sp)
    800013f4:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == slab->numOfObjects;
    800013f8:	02053783          	ld	a5,32(a0)
    800013fc:	01853503          	ld	a0,24(a0)
    80001400:	40f50533          	sub	a0,a0,a5
}
    80001404:	00153513          	seqz	a0,a0
    80001408:	00813403          	ld	s0,8(sp)
    8000140c:	01010113          	addi	sp,sp,16
    80001410:	00008067          	ret

0000000080001414 <_Z5emptyP6slab_s>:

bool empty(slab_t* slab)
{
    80001414:	ff010113          	addi	sp,sp,-16
    80001418:	00813423          	sd	s0,8(sp)
    8000141c:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == 0;
    80001420:	02053503          	ld	a0,32(a0)
}
    80001424:	00153513          	seqz	a0,a0
    80001428:	00813403          	ld	s0,8(sp)
    8000142c:	01010113          	addi	sp,sp,16
    80001430:	00008067          	ret

0000000080001434 <_Z16putPartialToFullP12kmem_cache_s>:

void putPartialToFull(kmem_cache_t* cachep)
{
    80001434:	ff010113          	addi	sp,sp,-16
    80001438:	00813423          	sd	s0,8(sp)
    8000143c:	01010413          	addi	s0,sp,16
    slab_t* slab = cachep->slabs_partial;
    80001440:	06053783          	ld	a5,96(a0)
    cachep->slabs_partial = cachep->slabs_partial->next;
    80001444:	0087b703          	ld	a4,8(a5)
    80001448:	06e53023          	sd	a4,96(a0)
    if(cachep->slabs_partial!=nullptr)
    8000144c:	00070463          	beqz	a4,80001454 <_Z16putPartialToFullP12kmem_cache_s+0x20>
        cachep->slabs_partial = nullptr;
    80001450:	06053023          	sd	zero,96(a0)
    slab->next = cachep->slabs_full;
    80001454:	05853703          	ld	a4,88(a0)
    80001458:	00e7b423          	sd	a4,8(a5)
    if(cachep->slabs_full != nullptr)
    8000145c:	05853703          	ld	a4,88(a0)
    80001460:	00070463          	beqz	a4,80001468 <_Z16putPartialToFullP12kmem_cache_s+0x34>
        cachep->slabs_full->prev = slab;
    80001464:	00f73023          	sd	a5,0(a4)
    cachep->slabs_full = slab;
    80001468:	04f53c23          	sd	a5,88(a0)
    slab->prev = nullptr;
    8000146c:	0007b023          	sd	zero,0(a5)
}
    80001470:	00813403          	ld	s0,8(sp)
    80001474:	01010113          	addi	sp,sp,16
    80001478:	00008067          	ret

000000008000147c <_Z17putEmptyToPartialP12kmem_cache_s>:

void putEmptyToPartial(kmem_cache_t* cachep)
{
    8000147c:	ff010113          	addi	sp,sp,-16
    80001480:	00813423          	sd	s0,8(sp)
    80001484:	01010413          	addi	s0,sp,16
    slab_t* slab = cachep->slabs_empty;
    80001488:	05053783          	ld	a5,80(a0)
    cachep->slabs_empty = cachep->slabs_empty->next;
    8000148c:	0087b703          	ld	a4,8(a5)
    80001490:	04e53823          	sd	a4,80(a0)
    if(cachep->slabs_empty != nullptr)
    80001494:	00070463          	beqz	a4,8000149c <_Z17putEmptyToPartialP12kmem_cache_s+0x20>
        cachep->slabs_empty = nullptr;
    80001498:	04053823          	sd	zero,80(a0)
    slab->next = cachep->slabs_partial;
    8000149c:	06053703          	ld	a4,96(a0)
    800014a0:	00e7b423          	sd	a4,8(a5)
    if(cachep->slabs_partial != nullptr)
    800014a4:	06053703          	ld	a4,96(a0)
    800014a8:	00070463          	beqz	a4,800014b0 <_Z17putEmptyToPartialP12kmem_cache_s+0x34>
        cachep->slabs_partial->prev = slab;
    800014ac:	00f73023          	sd	a5,0(a4)
    cachep->slabs_partial = slab;
    800014b0:	06f53023          	sd	a5,96(a0)
    slab->prev = nullptr;
    800014b4:	0007b023          	sd	zero,0(a5)
}
    800014b8:	00813403          	ld	s0,8(sp)
    800014bc:	01010113          	addi	sp,sp,16
    800014c0:	00008067          	ret

00000000800014c4 <_Z12allocateSlabP12kmem_cache_s>:

void allocateSlab(kmem_cache_t* cachep)
{
    800014c4:	fe010113          	addi	sp,sp,-32
    800014c8:	00113c23          	sd	ra,24(sp)
    800014cc:	00813823          	sd	s0,16(sp)
    800014d0:	00913423          	sd	s1,8(sp)
    800014d4:	02010413          	addi	s0,sp,32
    800014d8:	00050493          	mv	s1,a0
    slab_t* newSlab = (slab_t*)buddy_alloc(slabAllocator->buddy,cachep->slab_size);
    800014dc:	06853583          	ld	a1,104(a0)
    800014e0:	0000a797          	auipc	a5,0xa
    800014e4:	4e07b783          	ld	a5,1248(a5) # 8000b9c0 <_ZL13slabAllocator>
    800014e8:	0007b503          	ld	a0,0(a5)
    800014ec:	00001097          	auipc	ra,0x1
    800014f0:	68c080e7          	jalr	1676(ra) # 80002b78 <_Z11buddy_allocP14buddyAllocatorm>
    newSlab->next = cachep->slabs_empty;
    800014f4:	0504b783          	ld	a5,80(s1)
    800014f8:	00f53423          	sd	a5,8(a0)
    if(cachep->slabs_empty != nullptr)
    800014fc:	00078463          	beqz	a5,80001504 <_Z12allocateSlabP12kmem_cache_s+0x40>
        cachep->slabs_empty->prev = newSlab;
    80001500:	00a7b023          	sd	a0,0(a5)
    cachep->slabs_empty = newSlab;
    80001504:	04a4b823          	sd	a0,80(s1)
    newSlab->prev = nullptr;
    80001508:	00053023          	sd	zero,0(a0)
    newSlab->numOfAllocatedObjects = 0;
    8000150c:	02053023          	sd	zero,32(a0)
    newSlab->owner = cachep;
    80001510:	00953823          	sd	s1,16(a0)
    newSlab->startAddress = (void*)newSlab;
    80001514:	02a53423          	sd	a0,40(a0)
    size_t sizeInBytes = cachep->slab_size*BLOCK_SIZE;
    80001518:	0684b683          	ld	a3,104(s1)
    8000151c:	00c69693          	slli	a3,a3,0xc
    newSlab->numOfObjects = (sizeInBytes - sizeof(slab_t)) / cachep->obj_size; // TODO can this param be in cache ?
    80001520:	fb068693          	addi	a3,a3,-80
    80001524:	0704b783          	ld	a5,112(s1)
    80001528:	02f6d6b3          	divu	a3,a3,a5
    8000152c:	00d53c23          	sd	a3,24(a0)
    for(size_t i = 0; i < newSlab->numOfObjects / 8;i++)
    80001530:	00000793          	li	a5,0
    80001534:	0036d713          	srli	a4,a3,0x3
    80001538:	00e7fa63          	bgeu	a5,a4,8000154c <_Z12allocateSlabP12kmem_cache_s+0x88>
        newSlab->allocated[i] = 0;
    8000153c:	00f50733          	add	a4,a0,a5
    80001540:	02070823          	sb	zero,48(a4)
    for(size_t i = 0; i < newSlab->numOfObjects / 8;i++)
    80001544:	00178793          	addi	a5,a5,1
    80001548:	fedff06f          	j	80001534 <_Z12allocateSlabP12kmem_cache_s+0x70>
}
    8000154c:	01813083          	ld	ra,24(sp)
    80001550:	01013403          	ld	s0,16(sp)
    80001554:	00813483          	ld	s1,8(sp)
    80001558:	02010113          	addi	sp,sp,32
    8000155c:	00008067          	ret

0000000080001560 <_Z18getOptimalSlabSizem>:

size_t getOptimalSlabSize(size_t obj_size)
{
    80001560:	ff010113          	addi	sp,sp,-16
    80001564:	00813423          	sd	s0,8(sp)
    80001568:	01010413          	addi	s0,sp,16
    size_t bestSize = BLOCK_SIZE;
    8000156c:	000017b7          	lui	a5,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    80001570:	05050713          	addi	a4,a0,80
    80001574:	00e7f663          	bgeu	a5,a4,80001580 <_Z18getOptimalSlabSizem+0x20>
        bestSize<<=1;
    80001578:	00179793          	slli	a5,a5,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    8000157c:	ff5ff06f          	j	80001570 <_Z18getOptimalSlabSizem+0x10>
    size_t optimalWaste = (bestSize - sizeof(slab_t)) % obj_size;
    80001580:	fb078593          	addi	a1,a5,-80 # fb0 <_entry-0x7ffff050>
    80001584:	02a5f5b3          	remu	a1,a1,a0

    for(int i = 1;i<=4;i++) //change constants
    80001588:	00100713          	li	a4,1
    8000158c:	0080006f          	j	80001594 <_Z18getOptimalSlabSizem+0x34>
    80001590:	0017071b          	addiw	a4,a4,1
    80001594:	00400693          	li	a3,4
    80001598:	02e6c063          	blt	a3,a4,800015b8 <_Z18getOptimalSlabSizem+0x58>
    {
        size_t newSize = bestSize << i;
    8000159c:	00e79633          	sll	a2,a5,a4
        size_t newWaste = (newSize - sizeof(slab_t)) % obj_size;
    800015a0:	fb060693          	addi	a3,a2,-80
    800015a4:	02a6f6b3          	remu	a3,a3,a0
        if(newWaste < optimalWaste)
    800015a8:	feb6f4e3          	bgeu	a3,a1,80001590 <_Z18getOptimalSlabSizem+0x30>
        {
            optimalWaste = newWaste;
    800015ac:	00068593          	mv	a1,a3
            bestSize = newSize;
    800015b0:	00060793          	mv	a5,a2
    800015b4:	fddff06f          	j	80001590 <_Z18getOptimalSlabSizem+0x30>
        }
    }

    return bestSize / BLOCK_SIZE;
}
    800015b8:	00c7d513          	srli	a0,a5,0xc
    800015bc:	00813403          	ld	s0,8(sp)
    800015c0:	01010113          	addi	sp,sp,16
    800015c4:	00008067          	ret

00000000800015c8 <_Z8findSlabP12kmem_cache_sPKv>:

//finds the slab where objp is
slab_t* findSlab(kmem_cache_t* cachep, const void* objp)
{
    800015c8:	ff010113          	addi	sp,sp,-16
    800015cc:	00813423          	sd	s0,8(sp)
    800015d0:	01010413          	addi	s0,sp,16
    800015d4:	00050693          	mv	a3,a0
    slab_t* slab = cachep->slabs_full;
    800015d8:	05853503          	ld	a0,88(a0)
    800015dc:	0080006f          	j	800015e4 <_Z8findSlabP12kmem_cache_sPKv+0x1c>
    while(slab != nullptr)
    {
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
            return slab;
        slab = slab->next;
    800015e0:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    800015e4:	02050863          	beqz	a0,80001614 <_Z8findSlabP12kmem_cache_sPKv+0x4c>
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    800015e8:	01853783          	ld	a5,24(a0)
    800015ec:	01053703          	ld	a4,16(a0)
    800015f0:	07073703          	ld	a4,112(a4)
    800015f4:	02e787b3          	mul	a5,a5,a4
    800015f8:	00a787b3          	add	a5,a5,a0
    800015fc:	05078793          	addi	a5,a5,80
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
    80001600:	feb570e3          	bgeu	a0,a1,800015e0 <_Z8findSlabP12kmem_cache_sPKv+0x18>
    80001604:	fcf5fee3          	bgeu	a1,a5,800015e0 <_Z8findSlabP12kmem_cache_sPKv+0x18>
            return slab;
        slab = slab->next;
    }

    return nullptr;
}
    80001608:	00813403          	ld	s0,8(sp)
    8000160c:	01010113          	addi	sp,sp,16
    80001610:	00008067          	ret
    slab = cachep->slabs_partial;
    80001614:	0606b503          	ld	a0,96(a3)
    80001618:	0080006f          	j	80001620 <_Z8findSlabP12kmem_cache_sPKv+0x58>
        slab = slab->next;
    8000161c:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    80001620:	fe0504e3          	beqz	a0,80001608 <_Z8findSlabP12kmem_cache_sPKv+0x40>
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    80001624:	01853783          	ld	a5,24(a0)
    80001628:	01053703          	ld	a4,16(a0)
    8000162c:	07073703          	ld	a4,112(a4)
    80001630:	02e787b3          	mul	a5,a5,a4
    80001634:	00a787b3          	add	a5,a5,a0
    80001638:	05078793          	addi	a5,a5,80
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
    8000163c:	feb570e3          	bgeu	a0,a1,8000161c <_Z8findSlabP12kmem_cache_sPKv+0x54>
    80001640:	fcf5fee3          	bgeu	a1,a5,8000161c <_Z8findSlabP12kmem_cache_sPKv+0x54>
    80001644:	fc5ff06f          	j	80001608 <_Z8findSlabP12kmem_cache_sPKv+0x40>

0000000080001648 <_Z19resetAllocatedIndexP6slab_si>:

void resetAllocatedIndex(slab_t* slab, int index)
{
    80001648:	ff010113          	addi	sp,sp,-16
    8000164c:	00813423          	sd	s0,8(sp)
    80001650:	01010413          	addi	s0,sp,16
    //TODO test it
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] & ~(1 << (index%8));
    80001654:	41f5d79b          	sraiw	a5,a1,0x1f
    80001658:	01d7d79b          	srliw	a5,a5,0x1d
    8000165c:	00b785bb          	addw	a1,a5,a1
    80001660:	4035d71b          	sraiw	a4,a1,0x3
    80001664:	00e50533          	add	a0,a0,a4
    80001668:	03050703          	lb	a4,48(a0)
    8000166c:	0075f593          	andi	a1,a1,7
    80001670:	40f585bb          	subw	a1,a1,a5
    80001674:	00100793          	li	a5,1
    80001678:	00b795bb          	sllw	a1,a5,a1
    8000167c:	fff5c593          	not	a1,a1
    80001680:	00b775b3          	and	a1,a4,a1
    80001684:	02b50823          	sb	a1,48(a0)
}
    80001688:	00813403          	ld	s0,8(sp)
    8000168c:	01010113          	addi	sp,sp,16
    80001690:	00008067          	ret

0000000080001694 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>:

void removeFullSlab(kmem_cache_t * cachep, slab_t* slab)
{
    80001694:	ff010113          	addi	sp,sp,-16
    80001698:	00813423          	sd	s0,8(sp)
    8000169c:	01010413          	addi	s0,sp,16
    if(slab->prev)
    800016a0:	0005b783          	ld	a5,0(a1)
    800016a4:	04078063          	beqz	a5,800016e4 <_Z14removeFullSlabP12kmem_cache_sP6slab_s+0x50>
    {
        slab->prev->next = slab->next;
    800016a8:	0085b703          	ld	a4,8(a1)
    800016ac:	00e7b423          	sd	a4,8(a5)
        slab->next->prev = slab->prev;
    800016b0:	0085b783          	ld	a5,8(a1)
    800016b4:	0005b703          	ld	a4,0(a1)
    800016b8:	00e7b023          	sd	a4,0(a5)
    else
    {
        slab->next->prev = nullptr;
        cachep->slabs_full = slab->next;
    }
    slab->next = cachep->slabs_partial;
    800016bc:	06053783          	ld	a5,96(a0)
    800016c0:	00f5b423          	sd	a5,8(a1)
    slab->prev = nullptr;
    800016c4:	0005b023          	sd	zero,0(a1)
    if(cachep->slabs_partial)
    800016c8:	06053783          	ld	a5,96(a0)
    800016cc:	00078463          	beqz	a5,800016d4 <_Z14removeFullSlabP12kmem_cache_sP6slab_s+0x40>
        cachep->slabs_partial->prev = slab;
    800016d0:	00b7b023          	sd	a1,0(a5)
    cachep->slabs_partial = slab;
    800016d4:	06b53023          	sd	a1,96(a0)
}
    800016d8:	00813403          	ld	s0,8(sp)
    800016dc:	01010113          	addi	sp,sp,16
    800016e0:	00008067          	ret
        slab->next->prev = nullptr;
    800016e4:	0085b783          	ld	a5,8(a1)
    800016e8:	0007b023          	sd	zero,0(a5)
        cachep->slabs_full = slab->next;
    800016ec:	0085b783          	ld	a5,8(a1)
    800016f0:	04f53c23          	sd	a5,88(a0)
    800016f4:	fc9ff06f          	j	800016bc <_Z14removeFullSlabP12kmem_cache_sP6slab_s+0x28>

00000000800016f8 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>:

void removePartialSlab(kmem_cache_t * cachep, slab_t* slab)
{
    800016f8:	ff010113          	addi	sp,sp,-16
    800016fc:	00813423          	sd	s0,8(sp)
    80001700:	01010413          	addi	s0,sp,16
    if(slab->prev)
    80001704:	0005b783          	ld	a5,0(a1)
    80001708:	04078063          	beqz	a5,80001748 <_Z17removePartialSlabP12kmem_cache_sP6slab_s+0x50>
    {
        slab->prev->next = slab->next;
    8000170c:	0085b703          	ld	a4,8(a1)
    80001710:	00e7b423          	sd	a4,8(a5)
        slab->next->prev = slab->prev;
    80001714:	0085b783          	ld	a5,8(a1)
    80001718:	0005b703          	ld	a4,0(a1)
    8000171c:	00e7b023          	sd	a4,0(a5)
    else
    {
        slab->next->prev = nullptr;
        cachep->slabs_partial = slab->next;
    }
    slab->next = cachep->slabs_empty;
    80001720:	05053783          	ld	a5,80(a0)
    80001724:	00f5b423          	sd	a5,8(a1)
    slab->prev = nullptr;
    80001728:	0005b023          	sd	zero,0(a1)
    if(cachep->slabs_empty)
    8000172c:	05053783          	ld	a5,80(a0)
    80001730:	00078463          	beqz	a5,80001738 <_Z17removePartialSlabP12kmem_cache_sP6slab_s+0x40>
        cachep->slabs_empty->prev = slab;
    80001734:	00b7b023          	sd	a1,0(a5)
    cachep->slabs_empty = slab;
    80001738:	04b53823          	sd	a1,80(a0)
}
    8000173c:	00813403          	ld	s0,8(sp)
    80001740:	01010113          	addi	sp,sp,16
    80001744:	00008067          	ret
        slab->next->prev = nullptr;
    80001748:	0085b783          	ld	a5,8(a1)
    8000174c:	0007b023          	sd	zero,0(a5)
        cachep->slabs_partial = slab->next;
    80001750:	0085b783          	ld	a5,8(a1)
    80001754:	06f53023          	sd	a5,96(a0)
    80001758:	fc9ff06f          	j	80001720 <_Z17removePartialSlabP12kmem_cache_sP6slab_s+0x28>

000000008000175c <_Z13printSlabInfoP6slab_s>:

void printSlabInfo(slab_t* slab)
{
    8000175c:	fe010113          	addi	sp,sp,-32
    80001760:	00113c23          	sd	ra,24(sp)
    80001764:	00813823          	sd	s0,16(sp)
    80001768:	00913423          	sd	s1,8(sp)
    8000176c:	02010413          	addi	s0,sp,32
    80001770:	00050493          	mv	s1,a0
    KConsole::trapPrintString("One slab info---------\n");
    80001774:	00008517          	auipc	a0,0x8
    80001778:	8bc50513          	addi	a0,a0,-1860 # 80009030 <CONSOLE_STATUS+0x20>
    8000177c:	00002097          	auipc	ra,0x2
    80001780:	f18080e7          	jalr	-232(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Slab address ");
    80001784:	00008517          	auipc	a0,0x8
    80001788:	8c450513          	addi	a0,a0,-1852 # 80009048 <CONSOLE_STATUS+0x38>
    8000178c:	00002097          	auipc	ra,0x2
    80001790:	f08080e7          	jalr	-248(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt((size_t)slab, 16);KConsole::trapPrintString("\n");
    80001794:	00000613          	li	a2,0
    80001798:	01000593          	li	a1,16
    8000179c:	00048513          	mv	a0,s1
    800017a0:	00002097          	auipc	ra,0x2
    800017a4:	f38080e7          	jalr	-200(ra) # 800036d8 <_ZN8KConsole12trapPrintIntEmii>
    800017a8:	00008517          	auipc	a0,0x8
    800017ac:	fb850513          	addi	a0,a0,-72 # 80009760 <CONSOLE_STATUS+0x750>
    800017b0:	00002097          	auipc	ra,0x2
    800017b4:	ee4080e7          	jalr	-284(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Number of allocated objects ");
    800017b8:	00008517          	auipc	a0,0x8
    800017bc:	8a050513          	addi	a0,a0,-1888 # 80009058 <CONSOLE_STATUS+0x48>
    800017c0:	00002097          	auipc	ra,0x2
    800017c4:	ed4080e7          	jalr	-300(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(slab->numOfAllocatedObjects);KConsole::trapPrintString("\n");
    800017c8:	00000613          	li	a2,0
    800017cc:	00a00593          	li	a1,10
    800017d0:	0204b503          	ld	a0,32(s1)
    800017d4:	00002097          	auipc	ra,0x2
    800017d8:	f04080e7          	jalr	-252(ra) # 800036d8 <_ZN8KConsole12trapPrintIntEmii>
    800017dc:	00008517          	auipc	a0,0x8
    800017e0:	f8450513          	addi	a0,a0,-124 # 80009760 <CONSOLE_STATUS+0x750>
    800017e4:	00002097          	auipc	ra,0x2
    800017e8:	eb0080e7          	jalr	-336(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Number of objects ");
    800017ec:	00008517          	auipc	a0,0x8
    800017f0:	88c50513          	addi	a0,a0,-1908 # 80009078 <CONSOLE_STATUS+0x68>
    800017f4:	00002097          	auipc	ra,0x2
    800017f8:	ea0080e7          	jalr	-352(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(slab->numOfObjects);KConsole::trapPrintString("\n");
    800017fc:	00000613          	li	a2,0
    80001800:	00a00593          	li	a1,10
    80001804:	0184b503          	ld	a0,24(s1)
    80001808:	00002097          	auipc	ra,0x2
    8000180c:	ed0080e7          	jalr	-304(ra) # 800036d8 <_ZN8KConsole12trapPrintIntEmii>
    80001810:	00008517          	auipc	a0,0x8
    80001814:	f5050513          	addi	a0,a0,-176 # 80009760 <CONSOLE_STATUS+0x750>
    80001818:	00002097          	auipc	ra,0x2
    8000181c:	e7c080e7          	jalr	-388(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
}
    80001820:	01813083          	ld	ra,24(sp)
    80001824:	01013403          	ld	s0,16(sp)
    80001828:	00813483          	ld	s1,8(sp)
    8000182c:	02010113          	addi	sp,sp,32
    80001830:	00008067          	ret

0000000080001834 <_Z16free_slab_objectP6slab_sPKv>:

void free_slab_object(slab_t* slab, const void* objp)
{
    80001834:	fe010113          	addi	sp,sp,-32
    80001838:	00113c23          	sd	ra,24(sp)
    8000183c:	00813823          	sd	s0,16(sp)
    80001840:	00913423          	sd	s1,8(sp)
    80001844:	01213023          	sd	s2,0(sp)
    80001848:	02010413          	addi	s0,sp,32
    int indexOfObject = ((size_t)objp - sizeof(slab_t) - (size_t)slab) / slab->owner->obj_size;
    8000184c:	40a584b3          	sub	s1,a1,a0
    80001850:	fb048493          	addi	s1,s1,-80
    80001854:	01053783          	ld	a5,16(a0)
    80001858:	0707b783          	ld	a5,112(a5)
    8000185c:	02f4d4b3          	divu	s1,s1,a5
    80001860:	0004849b          	sext.w	s1,s1
    if((size_t)objp != (size_t)slab + sizeof(slab_t) + indexOfObject*slab->owner->obj_size) //address not allocated, random address
    80001864:	029787b3          	mul	a5,a5,s1
    80001868:	00f507b3          	add	a5,a0,a5
    8000186c:	05078793          	addi	a5,a5,80
    80001870:	00f58e63          	beq	a1,a5,8000188c <_Z16free_slab_objectP6slab_sPKv+0x58>
    if(slab->numOfObjects == slab->numOfAllocatedObjects)
        removeFullSlab(slab->owner, slab);
    else if(slab->numOfAllocatedObjects == 1)
        removePartialSlab(slab->owner, slab);
    slab->numOfAllocatedObjects--;
}
    80001874:	01813083          	ld	ra,24(sp)
    80001878:	01013403          	ld	s0,16(sp)
    8000187c:	00813483          	ld	s1,8(sp)
    80001880:	00013903          	ld	s2,0(sp)
    80001884:	02010113          	addi	sp,sp,32
    80001888:	00008067          	ret
    8000188c:	00050913          	mv	s2,a0
    KConsole::trapPrintString("ok je index\n"); KConsole::trapPrintInt(indexOfObject);
    80001890:	00008517          	auipc	a0,0x8
    80001894:	80050513          	addi	a0,a0,-2048 # 80009090 <CONSOLE_STATUS+0x80>
    80001898:	00002097          	auipc	ra,0x2
    8000189c:	dfc080e7          	jalr	-516(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    800018a0:	00000613          	li	a2,0
    800018a4:	00a00593          	li	a1,10
    800018a8:	00048513          	mv	a0,s1
    800018ac:	00002097          	auipc	ra,0x2
    800018b0:	e2c080e7          	jalr	-468(ra) # 800036d8 <_ZN8KConsole12trapPrintIntEmii>
    KConsole::trapPrintString("\n");
    800018b4:	00008517          	auipc	a0,0x8
    800018b8:	eac50513          	addi	a0,a0,-340 # 80009760 <CONSOLE_STATUS+0x750>
    800018bc:	00002097          	auipc	ra,0x2
    800018c0:	dd8080e7          	jalr	-552(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    resetAllocatedIndex(slab, indexOfObject);
    800018c4:	00048593          	mv	a1,s1
    800018c8:	00090513          	mv	a0,s2
    800018cc:	00000097          	auipc	ra,0x0
    800018d0:	d7c080e7          	jalr	-644(ra) # 80001648 <_Z19resetAllocatedIndexP6slab_si>
    if(slab->numOfObjects == slab->numOfAllocatedObjects)
    800018d4:	01893703          	ld	a4,24(s2)
    800018d8:	02093783          	ld	a5,32(s2)
    800018dc:	00f70e63          	beq	a4,a5,800018f8 <_Z16free_slab_objectP6slab_sPKv+0xc4>
    else if(slab->numOfAllocatedObjects == 1)
    800018e0:	00100713          	li	a4,1
    800018e4:	02e78463          	beq	a5,a4,8000190c <_Z16free_slab_objectP6slab_sPKv+0xd8>
    slab->numOfAllocatedObjects--;
    800018e8:	02093783          	ld	a5,32(s2)
    800018ec:	fff78793          	addi	a5,a5,-1
    800018f0:	02f93023          	sd	a5,32(s2)
    800018f4:	f81ff06f          	j	80001874 <_Z16free_slab_objectP6slab_sPKv+0x40>
        removeFullSlab(slab->owner, slab);
    800018f8:	00090593          	mv	a1,s2
    800018fc:	01093503          	ld	a0,16(s2)
    80001900:	00000097          	auipc	ra,0x0
    80001904:	d94080e7          	jalr	-620(ra) # 80001694 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>
    80001908:	fe1ff06f          	j	800018e8 <_Z16free_slab_objectP6slab_sPKv+0xb4>
        removePartialSlab(slab->owner, slab);
    8000190c:	00090593          	mv	a1,s2
    80001910:	01093503          	ld	a0,16(s2)
    80001914:	00000097          	auipc	ra,0x0
    80001918:	de4080e7          	jalr	-540(ra) # 800016f8 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
    8000191c:	fcdff06f          	j	800018e8 <_Z16free_slab_objectP6slab_sPKv+0xb4>

0000000080001920 <_Z9kmem_initPvi>:
    }
}

//slab allocator public interface-----------------------------------------------------------------------------
void kmem_init(void *space, int block_num)
{
    80001920:	ff010113          	addi	sp,sp,-16
    80001924:	00113423          	sd	ra,8(sp)
    80001928:	00813023          	sd	s0,0(sp)
    8000192c:	01010413          	addi	s0,sp,16
    buddyAllocator* buddy = buddy_init(space, block_num);
    80001930:	00001097          	auipc	ra,0x1
    80001934:	4f0080e7          	jalr	1264(ra) # 80002e20 <_Z10buddy_initPvm>
    slabAllocator = slab_allocator_init(buddy);
    80001938:	00000097          	auipc	ra,0x0
    8000193c:	954080e7          	jalr	-1708(ra) # 8000128c <_Z19slab_allocator_initP14buddyAllocator>
    80001940:	0000a797          	auipc	a5,0xa
    80001944:	08a7b023          	sd	a0,128(a5) # 8000b9c0 <_ZL13slabAllocator>
    //printSlabAllocatorInfo();
}
    80001948:	00813083          	ld	ra,8(sp)
    8000194c:	00013403          	ld	s0,0(sp)
    80001950:	01010113          	addi	sp,sp,16
    80001954:	00008067          	ret

0000000080001958 <_Z16kmem_cache_allocP12kmem_cache_s>:
    newCache->slab_size = getOptimalSlabSize(size);
    return newCache;
}

void *kmem_cache_alloc(kmem_cache_t *cachep)
{
    80001958:	fe010113          	addi	sp,sp,-32
    8000195c:	00113c23          	sd	ra,24(sp)
    80001960:	00813823          	sd	s0,16(sp)
    80001964:	00913423          	sd	s1,8(sp)
    80001968:	01213023          	sd	s2,0(sp)
    8000196c:	02010413          	addi	s0,sp,32
    80001970:	00050493          	mv	s1,a0
    if(cachep->slabs_partial != nullptr)
    80001974:	06053503          	ld	a0,96(a0)
    80001978:	02051c63          	bnez	a0,800019b0 <_Z16kmem_cache_allocP12kmem_cache_s+0x58>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
        if(full(cachep->slabs_partial))
            putPartialToFull(cachep);
        return allocatedAddr;
    }
    else if(cachep->slabs_empty != nullptr)
    8000197c:	0504b503          	ld	a0,80(s1)
    80001980:	06050c63          	beqz	a0,800019f8 <_Z16kmem_cache_allocP12kmem_cache_s+0xa0>
    {
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001984:	00000097          	auipc	ra,0x0
    80001988:	9b0080e7          	jalr	-1616(ra) # 80001334 <_Z14allocateObjectP6slab_s>
    8000198c:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001990:	0504b503          	ld	a0,80(s1)
    80001994:	00000097          	auipc	ra,0x0
    80001998:	a80080e7          	jalr	-1408(ra) # 80001414 <_Z5emptyP6slab_s>
    8000199c:	02051863          	bnez	a0,800019cc <_Z16kmem_cache_allocP12kmem_cache_s+0x74>
            putEmptyToPartial(cachep);
    800019a0:	00048513          	mv	a0,s1
    800019a4:	00000097          	auipc	ra,0x0
    800019a8:	ad8080e7          	jalr	-1320(ra) # 8000147c <_Z17putEmptyToPartialP12kmem_cache_s>
        return allocatedAddr;
    800019ac:	0200006f          	j	800019cc <_Z16kmem_cache_allocP12kmem_cache_s+0x74>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
    800019b0:	00000097          	auipc	ra,0x0
    800019b4:	984080e7          	jalr	-1660(ra) # 80001334 <_Z14allocateObjectP6slab_s>
    800019b8:	00050913          	mv	s2,a0
        if(full(cachep->slabs_partial))
    800019bc:	0604b503          	ld	a0,96(s1)
    800019c0:	00000097          	auipc	ra,0x0
    800019c4:	a2c080e7          	jalr	-1492(ra) # 800013ec <_Z4fullP6slab_s>
    800019c8:	02051063          	bnez	a0,800019e8 <_Z16kmem_cache_allocP12kmem_cache_s+0x90>
        if(!empty(cachep->slabs_empty))
            putEmptyToPartial(cachep);
        return allocatedAddr;
    }
    return nullptr;
}
    800019cc:	00090513          	mv	a0,s2
    800019d0:	01813083          	ld	ra,24(sp)
    800019d4:	01013403          	ld	s0,16(sp)
    800019d8:	00813483          	ld	s1,8(sp)
    800019dc:	00013903          	ld	s2,0(sp)
    800019e0:	02010113          	addi	sp,sp,32
    800019e4:	00008067          	ret
            putPartialToFull(cachep);
    800019e8:	00048513          	mv	a0,s1
    800019ec:	00000097          	auipc	ra,0x0
    800019f0:	a48080e7          	jalr	-1464(ra) # 80001434 <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    800019f4:	fd9ff06f          	j	800019cc <_Z16kmem_cache_allocP12kmem_cache_s+0x74>
        allocateSlab(cachep);
    800019f8:	00048513          	mv	a0,s1
    800019fc:	00000097          	auipc	ra,0x0
    80001a00:	ac8080e7          	jalr	-1336(ra) # 800014c4 <_Z12allocateSlabP12kmem_cache_s>
        if(cachep->slabs_empty == nullptr)
    80001a04:	0504b903          	ld	s2,80(s1)
    80001a08:	fc0902e3          	beqz	s2,800019cc <_Z16kmem_cache_allocP12kmem_cache_s+0x74>
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001a0c:	00090513          	mv	a0,s2
    80001a10:	00000097          	auipc	ra,0x0
    80001a14:	924080e7          	jalr	-1756(ra) # 80001334 <_Z14allocateObjectP6slab_s>
    80001a18:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001a1c:	0504b503          	ld	a0,80(s1)
    80001a20:	00000097          	auipc	ra,0x0
    80001a24:	9f4080e7          	jalr	-1548(ra) # 80001414 <_Z5emptyP6slab_s>
    80001a28:	fa0512e3          	bnez	a0,800019cc <_Z16kmem_cache_allocP12kmem_cache_s+0x74>
            putEmptyToPartial(cachep);
    80001a2c:	00048513          	mv	a0,s1
    80001a30:	00000097          	auipc	ra,0x0
    80001a34:	a4c080e7          	jalr	-1460(ra) # 8000147c <_Z17putEmptyToPartialP12kmem_cache_s>
        return allocatedAddr;
    80001a38:	f95ff06f          	j	800019cc <_Z16kmem_cache_allocP12kmem_cache_s+0x74>

0000000080001a3c <_Z17kmem_cache_createPKcmPFvPvES3_>:
{
    80001a3c:	fc010113          	addi	sp,sp,-64
    80001a40:	02113c23          	sd	ra,56(sp)
    80001a44:	02813823          	sd	s0,48(sp)
    80001a48:	02913423          	sd	s1,40(sp)
    80001a4c:	03213023          	sd	s2,32(sp)
    80001a50:	01313c23          	sd	s3,24(sp)
    80001a54:	01413823          	sd	s4,16(sp)
    80001a58:	01513423          	sd	s5,8(sp)
    80001a5c:	04010413          	addi	s0,sp,64
    80001a60:	00050993          	mv	s3,a0
    80001a64:	00058913          	mv	s2,a1
    80001a68:	00060a13          	mv	s4,a2
    80001a6c:	00068a93          	mv	s5,a3
    kmem_cache_t* newCache = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    80001a70:	0000a517          	auipc	a0,0xa
    80001a74:	f5053503          	ld	a0,-176(a0) # 8000b9c0 <_ZL13slabAllocator>
    80001a78:	07850513          	addi	a0,a0,120
    80001a7c:	00000097          	auipc	ra,0x0
    80001a80:	edc080e7          	jalr	-292(ra) # 80001958 <_Z16kmem_cache_allocP12kmem_cache_s>
    80001a84:	00050493          	mv	s1,a0
    newCache->slabs_empty = nullptr;
    80001a88:	04053823          	sd	zero,80(a0)
    newCache->slabs_partial = nullptr;
    80001a8c:	06053023          	sd	zero,96(a0)
    newCache->slabs_full = nullptr;
    80001a90:	04053c23          	sd	zero,88(a0)
    newCache->next = newCache->prev = nullptr;
    80001a94:	04053423          	sd	zero,72(a0)
    80001a98:	04053023          	sd	zero,64(a0)
    newCache->dtor = dtor;
    80001a9c:	09553023          	sd	s5,128(a0)
    newCache->ctor = ctor;
    80001aa0:	07453c23          	sd	s4,120(a0)
    strcpy(name, newCache->cacheName);
    80001aa4:	00050593          	mv	a1,a0
    80001aa8:	00098513          	mv	a0,s3
    80001aac:	fffff097          	auipc	ra,0xfffff
    80001ab0:	7ac080e7          	jalr	1964(ra) # 80001258 <_Z6strcpyPKcPc>
    newCache->obj_size = size;
    80001ab4:	0724b823          	sd	s2,112(s1)
    newCache->slab_size = getOptimalSlabSize(size);
    80001ab8:	00090513          	mv	a0,s2
    80001abc:	00000097          	auipc	ra,0x0
    80001ac0:	aa4080e7          	jalr	-1372(ra) # 80001560 <_Z18getOptimalSlabSizem>
    80001ac4:	06a4b423          	sd	a0,104(s1)
}
    80001ac8:	00048513          	mv	a0,s1
    80001acc:	03813083          	ld	ra,56(sp)
    80001ad0:	03013403          	ld	s0,48(sp)
    80001ad4:	02813483          	ld	s1,40(sp)
    80001ad8:	02013903          	ld	s2,32(sp)
    80001adc:	01813983          	ld	s3,24(sp)
    80001ae0:	01013a03          	ld	s4,16(sp)
    80001ae4:	00813a83          	ld	s5,8(sp)
    80001ae8:	04010113          	addi	sp,sp,64
    80001aec:	00008067          	ret

0000000080001af0 <_Z15kmem_cache_freeP12kmem_cache_sPv>:

void kmem_cache_free(kmem_cache_t *cachep, void *objp)
{
    80001af0:	fe010113          	addi	sp,sp,-32
    80001af4:	00113c23          	sd	ra,24(sp)
    80001af8:	00813823          	sd	s0,16(sp)
    80001afc:	00913423          	sd	s1,8(sp)
    80001b00:	01213023          	sd	s2,0(sp)
    80001b04:	02010413          	addi	s0,sp,32
    80001b08:	00058913          	mv	s2,a1
    slab_t* slab = findSlab(cachep, objp);
    80001b0c:	00000097          	auipc	ra,0x0
    80001b10:	abc080e7          	jalr	-1348(ra) # 800015c8 <_Z8findSlabP12kmem_cache_sPKv>
    80001b14:	00050493          	mv	s1,a0
    KConsole::trapPrintString("Finding slab........\n");
    80001b18:	00007517          	auipc	a0,0x7
    80001b1c:	58850513          	addi	a0,a0,1416 # 800090a0 <CONSOLE_STATUS+0x90>
    80001b20:	00002097          	auipc	ra,0x2
    80001b24:	b74080e7          	jalr	-1164(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    if(slab == nullptr) return;
    80001b28:	04048463          	beqz	s1,80001b70 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x80>
    KConsole::trapPrintString("Found slab ");
    80001b2c:	00007517          	auipc	a0,0x7
    80001b30:	58c50513          	addi	a0,a0,1420 # 800090b8 <CONSOLE_STATUS+0xa8>
    80001b34:	00002097          	auipc	ra,0x2
    80001b38:	b60080e7          	jalr	-1184(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt((size_t)slab, 16); KConsole::trapPrintString("\n");
    80001b3c:	00000613          	li	a2,0
    80001b40:	01000593          	li	a1,16
    80001b44:	00048513          	mv	a0,s1
    80001b48:	00002097          	auipc	ra,0x2
    80001b4c:	b90080e7          	jalr	-1136(ra) # 800036d8 <_ZN8KConsole12trapPrintIntEmii>
    80001b50:	00008517          	auipc	a0,0x8
    80001b54:	c1050513          	addi	a0,a0,-1008 # 80009760 <CONSOLE_STATUS+0x750>
    80001b58:	00002097          	auipc	ra,0x2
    80001b5c:	b3c080e7          	jalr	-1220(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    free_slab_object(slab, objp);
    80001b60:	00090593          	mv	a1,s2
    80001b64:	00048513          	mv	a0,s1
    80001b68:	00000097          	auipc	ra,0x0
    80001b6c:	ccc080e7          	jalr	-820(ra) # 80001834 <_Z16free_slab_objectP6slab_sPKv>
}
    80001b70:	01813083          	ld	ra,24(sp)
    80001b74:	01013403          	ld	s0,16(sp)
    80001b78:	00813483          	ld	s1,8(sp)
    80001b7c:	00013903          	ld	s2,0(sp)
    80001b80:	02010113          	addi	sp,sp,32
    80001b84:	00008067          	ret

0000000080001b88 <_Z15kmem_cache_infoP12kmem_cache_s>:

//TODO
//what needs to be printed
void kmem_cache_info(kmem_cache_t *cachep)
{
    80001b88:	fe010113          	addi	sp,sp,-32
    80001b8c:	00113c23          	sd	ra,24(sp)
    80001b90:	00813823          	sd	s0,16(sp)
    80001b94:	00913423          	sd	s1,8(sp)
    80001b98:	01213023          	sd	s2,0(sp)
    80001b9c:	02010413          	addi	s0,sp,32
    80001ba0:	00050913          	mv	s2,a0
    KConsole::trapPrintString("Kmem Cache Info-------------------------------------\n");
    80001ba4:	00007517          	auipc	a0,0x7
    80001ba8:	52450513          	addi	a0,a0,1316 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001bac:	00002097          	auipc	ra,0x2
    80001bb0:	ae8080e7          	jalr	-1304(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Cache Name ");
    80001bb4:	00007517          	auipc	a0,0x7
    80001bb8:	54c50513          	addi	a0,a0,1356 # 80009100 <CONSOLE_STATUS+0xf0>
    80001bbc:	00002097          	auipc	ra,0x2
    80001bc0:	ad8080e7          	jalr	-1320(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString(cachep->cacheName); KConsole::trapPrintString("\n");
    80001bc4:	00090513          	mv	a0,s2
    80001bc8:	00002097          	auipc	ra,0x2
    80001bcc:	acc080e7          	jalr	-1332(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    80001bd0:	00008517          	auipc	a0,0x8
    80001bd4:	b9050513          	addi	a0,a0,-1136 # 80009760 <CONSOLE_STATUS+0x750>
    80001bd8:	00002097          	auipc	ra,0x2
    80001bdc:	abc080e7          	jalr	-1348(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Cache slab size in blocks ");
    80001be0:	00007517          	auipc	a0,0x7
    80001be4:	53050513          	addi	a0,a0,1328 # 80009110 <CONSOLE_STATUS+0x100>
    80001be8:	00002097          	auipc	ra,0x2
    80001bec:	aac080e7          	jalr	-1364(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(cachep->slab_size); KConsole::trapPrintString("\n");
    80001bf0:	00000613          	li	a2,0
    80001bf4:	00a00593          	li	a1,10
    80001bf8:	06893503          	ld	a0,104(s2)
    80001bfc:	00002097          	auipc	ra,0x2
    80001c00:	adc080e7          	jalr	-1316(ra) # 800036d8 <_ZN8KConsole12trapPrintIntEmii>
    80001c04:	00008517          	auipc	a0,0x8
    80001c08:	b5c50513          	addi	a0,a0,-1188 # 80009760 <CONSOLE_STATUS+0x750>
    80001c0c:	00002097          	auipc	ra,0x2
    80001c10:	a88080e7          	jalr	-1400(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Cache obj size in bytes ");
    80001c14:	00007517          	auipc	a0,0x7
    80001c18:	51c50513          	addi	a0,a0,1308 # 80009130 <CONSOLE_STATUS+0x120>
    80001c1c:	00002097          	auipc	ra,0x2
    80001c20:	a78080e7          	jalr	-1416(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(cachep->obj_size); KConsole::trapPrintString("\n");
    80001c24:	00000613          	li	a2,0
    80001c28:	00a00593          	li	a1,10
    80001c2c:	07093503          	ld	a0,112(s2)
    80001c30:	00002097          	auipc	ra,0x2
    80001c34:	aa8080e7          	jalr	-1368(ra) # 800036d8 <_ZN8KConsole12trapPrintIntEmii>
    80001c38:	00008517          	auipc	a0,0x8
    80001c3c:	b2850513          	addi	a0,a0,-1240 # 80009760 <CONSOLE_STATUS+0x750>
    80001c40:	00002097          	auipc	ra,0x2
    80001c44:	a54080e7          	jalr	-1452(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Slabs info-------------------\n");
    80001c48:	00007517          	auipc	a0,0x7
    80001c4c:	50850513          	addi	a0,a0,1288 # 80009150 <CONSOLE_STATUS+0x140>
    80001c50:	00002097          	auipc	ra,0x2
    80001c54:	a44080e7          	jalr	-1468(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>

    KConsole::trapPrintString("Full slabs\n");
    80001c58:	00007517          	auipc	a0,0x7
    80001c5c:	51850513          	addi	a0,a0,1304 # 80009170 <CONSOLE_STATUS+0x160>
    80001c60:	00002097          	auipc	ra,0x2
    80001c64:	a34080e7          	jalr	-1484(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    slab_t* slab = cachep->slabs_full;
    80001c68:	05893483          	ld	s1,88(s2)
    while(slab != nullptr)
    80001c6c:	00048c63          	beqz	s1,80001c84 <_Z15kmem_cache_infoP12kmem_cache_s+0xfc>
    {
        printSlabInfo(slab);
    80001c70:	00048513          	mv	a0,s1
    80001c74:	00000097          	auipc	ra,0x0
    80001c78:	ae8080e7          	jalr	-1304(ra) # 8000175c <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001c7c:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001c80:	fedff06f          	j	80001c6c <_Z15kmem_cache_infoP12kmem_cache_s+0xe4>
    }

    KConsole::trapPrintString("Partial slabs\n");
    80001c84:	00007517          	auipc	a0,0x7
    80001c88:	4fc50513          	addi	a0,a0,1276 # 80009180 <CONSOLE_STATUS+0x170>
    80001c8c:	00002097          	auipc	ra,0x2
    80001c90:	a08080e7          	jalr	-1528(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_partial;
    80001c94:	06093483          	ld	s1,96(s2)
    while(slab != nullptr)
    80001c98:	00048c63          	beqz	s1,80001cb0 <_Z15kmem_cache_infoP12kmem_cache_s+0x128>
    {
        printSlabInfo(slab);
    80001c9c:	00048513          	mv	a0,s1
    80001ca0:	00000097          	auipc	ra,0x0
    80001ca4:	abc080e7          	jalr	-1348(ra) # 8000175c <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001ca8:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001cac:	fedff06f          	j	80001c98 <_Z15kmem_cache_infoP12kmem_cache_s+0x110>
    }

    KConsole::trapPrintString("Empty slabs\n");
    80001cb0:	00007517          	auipc	a0,0x7
    80001cb4:	4e050513          	addi	a0,a0,1248 # 80009190 <CONSOLE_STATUS+0x180>
    80001cb8:	00002097          	auipc	ra,0x2
    80001cbc:	9dc080e7          	jalr	-1572(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_empty;
    80001cc0:	05093483          	ld	s1,80(s2)
    while(slab != nullptr)
    80001cc4:	00048c63          	beqz	s1,80001cdc <_Z15kmem_cache_infoP12kmem_cache_s+0x154>
    {
        printSlabInfo(slab);
    80001cc8:	00048513          	mv	a0,s1
    80001ccc:	00000097          	auipc	ra,0x0
    80001cd0:	a90080e7          	jalr	-1392(ra) # 8000175c <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001cd4:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001cd8:	fedff06f          	j	80001cc4 <_Z15kmem_cache_infoP12kmem_cache_s+0x13c>
    }
}
    80001cdc:	01813083          	ld	ra,24(sp)
    80001ce0:	01013403          	ld	s0,16(sp)
    80001ce4:	00813483          	ld	s1,8(sp)
    80001ce8:	00013903          	ld	s2,0(sp)
    80001cec:	02010113          	addi	sp,sp,32
    80001cf0:	00008067          	ret

0000000080001cf4 <_Z22printSlabAllocatorInfov>:
{
    80001cf4:	fe010113          	addi	sp,sp,-32
    80001cf8:	00113c23          	sd	ra,24(sp)
    80001cfc:	00813823          	sd	s0,16(sp)
    80001d00:	00913423          	sd	s1,8(sp)
    80001d04:	02010413          	addi	s0,sp,32
    KConsole::trapPrintString("Slab allocator info----------------------------------------------------------\n");
    80001d08:	00007517          	auipc	a0,0x7
    80001d0c:	49850513          	addi	a0,a0,1176 # 800091a0 <CONSOLE_STATUS+0x190>
    80001d10:	00002097          	auipc	ra,0x2
    80001d14:	984080e7          	jalr	-1660(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Slab allocator buddy address ");
    80001d18:	00007517          	auipc	a0,0x7
    80001d1c:	4d850513          	addi	a0,a0,1240 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80001d20:	00002097          	auipc	ra,0x2
    80001d24:	974080e7          	jalr	-1676(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt((size_t)slabAllocator->buddy,16);KConsole::trapPrintString("\n");
    80001d28:	0000a497          	auipc	s1,0xa
    80001d2c:	c9848493          	addi	s1,s1,-872 # 8000b9c0 <_ZL13slabAllocator>
    80001d30:	0004b783          	ld	a5,0(s1)
    80001d34:	00000613          	li	a2,0
    80001d38:	01000593          	li	a1,16
    80001d3c:	0007b503          	ld	a0,0(a5)
    80001d40:	00002097          	auipc	ra,0x2
    80001d44:	998080e7          	jalr	-1640(ra) # 800036d8 <_ZN8KConsole12trapPrintIntEmii>
    80001d48:	00008517          	auipc	a0,0x8
    80001d4c:	a1850513          	addi	a0,a0,-1512 # 80009760 <CONSOLE_STATUS+0x750>
    80001d50:	00002097          	auipc	ra,0x2
    80001d54:	944080e7          	jalr	-1724(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Buddy allocator sizeof ");
    80001d58:	00007517          	auipc	a0,0x7
    80001d5c:	4b850513          	addi	a0,a0,1208 # 80009210 <CONSOLE_STATUS+0x200>
    80001d60:	00002097          	auipc	ra,0x2
    80001d64:	934080e7          	jalr	-1740(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(sizeof(buddyAllocator), 16); KConsole::trapPrintString("\n");
    80001d68:	00000613          	li	a2,0
    80001d6c:	01000593          	li	a1,16
    80001d70:	0e000513          	li	a0,224
    80001d74:	00002097          	auipc	ra,0x2
    80001d78:	964080e7          	jalr	-1692(ra) # 800036d8 <_ZN8KConsole12trapPrintIntEmii>
    80001d7c:	00008517          	auipc	a0,0x8
    80001d80:	9e450513          	addi	a0,a0,-1564 # 80009760 <CONSOLE_STATUS+0x750>
    80001d84:	00002097          	auipc	ra,0x2
    80001d88:	910080e7          	jalr	-1776(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Slab allocator address ");
    80001d8c:	00007517          	auipc	a0,0x7
    80001d90:	49c50513          	addi	a0,a0,1180 # 80009228 <CONSOLE_STATUS+0x218>
    80001d94:	00002097          	auipc	ra,0x2
    80001d98:	900080e7          	jalr	-1792(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt((size_t)slabAllocator,16); KConsole::trapPrintString("\n");
    80001d9c:	00000613          	li	a2,0
    80001da0:	01000593          	li	a1,16
    80001da4:	0004b503          	ld	a0,0(s1)
    80001da8:	00002097          	auipc	ra,0x2
    80001dac:	930080e7          	jalr	-1744(ra) # 800036d8 <_ZN8KConsole12trapPrintIntEmii>
    80001db0:	00008517          	auipc	a0,0x8
    80001db4:	9b050513          	addi	a0,a0,-1616 # 80009760 <CONSOLE_STATUS+0x750>
    80001db8:	00002097          	auipc	ra,0x2
    80001dbc:	8dc080e7          	jalr	-1828(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Cache of caches info\n");
    80001dc0:	00007517          	auipc	a0,0x7
    80001dc4:	48050513          	addi	a0,a0,1152 # 80009240 <CONSOLE_STATUS+0x230>
    80001dc8:	00002097          	auipc	ra,0x2
    80001dcc:	8cc080e7          	jalr	-1844(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    kmem_cache_info(&slabAllocator->cacheOfCaches);
    80001dd0:	0004b503          	ld	a0,0(s1)
    80001dd4:	07850513          	addi	a0,a0,120
    80001dd8:	00000097          	auipc	ra,0x0
    80001ddc:	db0080e7          	jalr	-592(ra) # 80001b88 <_Z15kmem_cache_infoP12kmem_cache_s>
    KConsole::trapPrintString("Caches for buffers\n");
    80001de0:	00007517          	auipc	a0,0x7
    80001de4:	47850513          	addi	a0,a0,1144 # 80009258 <CONSOLE_STATUS+0x248>
    80001de8:	00002097          	auipc	ra,0x2
    80001dec:	8ac080e7          	jalr	-1876(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80001df0:	00000493          	li	s1,0
    80001df4:	0100006f          	j	80001e04 <_Z22printSlabAllocatorInfov+0x110>
            kmem_cache_info(slabAllocator->cachesBuffers[i]);
    80001df8:	00000097          	auipc	ra,0x0
    80001dfc:	d90080e7          	jalr	-624(ra) # 80001b88 <_Z15kmem_cache_infoP12kmem_cache_s>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80001e00:	00148493          	addi	s1,s1,1
    80001e04:	00c00793          	li	a5,12
    80001e08:	0297e263          	bltu	a5,s1,80001e2c <_Z22printSlabAllocatorInfov+0x138>
        if(slabAllocator->cachesBuffers[i] != nullptr)
    80001e0c:	00248793          	addi	a5,s1,2
    80001e10:	00379713          	slli	a4,a5,0x3
    80001e14:	0000a797          	auipc	a5,0xa
    80001e18:	bac7b783          	ld	a5,-1108(a5) # 8000b9c0 <_ZL13slabAllocator>
    80001e1c:	00e787b3          	add	a5,a5,a4
    80001e20:	0007b503          	ld	a0,0(a5)
    80001e24:	fc051ae3          	bnez	a0,80001df8 <_Z22printSlabAllocatorInfov+0x104>
    80001e28:	fd9ff06f          	j	80001e00 <_Z22printSlabAllocatorInfov+0x10c>
}
    80001e2c:	01813083          	ld	ra,24(sp)
    80001e30:	01013403          	ld	s0,16(sp)
    80001e34:	00813483          	ld	s1,8(sp)
    80001e38:	02010113          	addi	sp,sp,32
    80001e3c:	00008067          	ret

0000000080001e40 <_Z7kmallocm>:

void *kmalloc(size_t size)
{
    80001e40:	fe010113          	addi	sp,sp,-32
    80001e44:	00113c23          	sd	ra,24(sp)
    80001e48:	00813823          	sd	s0,16(sp)
    80001e4c:	00913423          	sd	s1,8(sp)
    80001e50:	01213023          	sd	s2,0(sp)
    80001e54:	02010413          	addi	s0,sp,32
    size_t level = getDeg2Ceil(size);
    80001e58:	00001097          	auipc	ra,0x1
    80001e5c:	ba4080e7          	jalr	-1116(ra) # 800029fc <_Z11getDeg2Ceilm>
    size_t index = level - CACHE_BUFFER_SMALL;
    80001e60:	ffb50493          	addi	s1,a0,-5
    if(slabAllocator->cachesBuffers[index] == nullptr)
    80001e64:	0000a917          	auipc	s2,0xa
    80001e68:	b5c93903          	ld	s2,-1188(s2) # 8000b9c0 <_ZL13slabAllocator>
    80001e6c:	ffd50513          	addi	a0,a0,-3
    80001e70:	00351513          	slli	a0,a0,0x3
    80001e74:	00a90533          	add	a0,s2,a0
    80001e78:	00053783          	ld	a5,0(a0)
    80001e7c:	02078e63          	beqz	a5,80001eb8 <_Z7kmallocm+0x78>
        slabAllocator->cachesBuffers[index] = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);

    return kmem_cache_alloc(slabAllocator->cachesBuffers[index]);
    80001e80:	00248493          	addi	s1,s1,2
    80001e84:	00349493          	slli	s1,s1,0x3
    80001e88:	0000a797          	auipc	a5,0xa
    80001e8c:	b387b783          	ld	a5,-1224(a5) # 8000b9c0 <_ZL13slabAllocator>
    80001e90:	009784b3          	add	s1,a5,s1
    80001e94:	0004b503          	ld	a0,0(s1)
    80001e98:	00000097          	auipc	ra,0x0
    80001e9c:	ac0080e7          	jalr	-1344(ra) # 80001958 <_Z16kmem_cache_allocP12kmem_cache_s>
}
    80001ea0:	01813083          	ld	ra,24(sp)
    80001ea4:	01013403          	ld	s0,16(sp)
    80001ea8:	00813483          	ld	s1,8(sp)
    80001eac:	00013903          	ld	s2,0(sp)
    80001eb0:	02010113          	addi	sp,sp,32
    80001eb4:	00008067          	ret
        slabAllocator->cachesBuffers[index] = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    80001eb8:	07890513          	addi	a0,s2,120
    80001ebc:	00000097          	auipc	ra,0x0
    80001ec0:	a9c080e7          	jalr	-1380(ra) # 80001958 <_Z16kmem_cache_allocP12kmem_cache_s>
    80001ec4:	00248793          	addi	a5,s1,2
    80001ec8:	00379793          	slli	a5,a5,0x3
    80001ecc:	00f90933          	add	s2,s2,a5
    80001ed0:	00a93023          	sd	a0,0(s2)
    80001ed4:	fadff06f          	j	80001e80 <_Z7kmallocm+0x40>

0000000080001ed8 <_Z5kfreePKv>:

void kfree(const void *objp)
{
    80001ed8:	fe010113          	addi	sp,sp,-32
    80001edc:	00113c23          	sd	ra,24(sp)
    80001ee0:	00813823          	sd	s0,16(sp)
    80001ee4:	00913423          	sd	s1,8(sp)
    80001ee8:	01213023          	sd	s2,0(sp)
    80001eec:	02010413          	addi	s0,sp,32
    80001ef0:	00050913          	mv	s2,a0
    slab_t* slab = nullptr;
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80001ef4:	00000493          	li	s1,0
    slab_t* slab = nullptr;
    80001ef8:	00000513          	li	a0,0
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80001efc:	00c00793          	li	a5,12
    80001f00:	0297ea63          	bltu	a5,s1,80001f34 <_Z5kfreePKv+0x5c>
    {
        slab = findSlab(slabAllocator->cachesBuffers[i], objp);
    80001f04:	00248793          	addi	a5,s1,2
    80001f08:	00379713          	slli	a4,a5,0x3
    80001f0c:	0000a797          	auipc	a5,0xa
    80001f10:	ab47b783          	ld	a5,-1356(a5) # 8000b9c0 <_ZL13slabAllocator>
    80001f14:	00e787b3          	add	a5,a5,a4
    80001f18:	00090593          	mv	a1,s2
    80001f1c:	0007b503          	ld	a0,0(a5)
    80001f20:	fffff097          	auipc	ra,0xfffff
    80001f24:	6a8080e7          	jalr	1704(ra) # 800015c8 <_Z8findSlabP12kmem_cache_sPKv>
        if(slab != nullptr) break;
    80001f28:	00051663          	bnez	a0,80001f34 <_Z5kfreePKv+0x5c>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80001f2c:	00148493          	addi	s1,s1,1
    80001f30:	fcdff06f          	j	80001efc <_Z5kfreePKv+0x24>
    }
    if(slab != nullptr)
    80001f34:	00050863          	beqz	a0,80001f44 <_Z5kfreePKv+0x6c>
    {
        free_slab_object(slab, objp);
    80001f38:	00090593          	mv	a1,s2
    80001f3c:	00000097          	auipc	ra,0x0
    80001f40:	8f8080e7          	jalr	-1800(ra) # 80001834 <_Z16free_slab_objectP6slab_sPKv>
    }
}
    80001f44:	01813083          	ld	ra,24(sp)
    80001f48:	01013403          	ld	s0,16(sp)
    80001f4c:	00813483          	ld	s1,8(sp)
    80001f50:	00013903          	ld	s2,0(sp)
    80001f54:	02010113          	addi	sp,sp,32
    80001f58:	00008067          	ret

0000000080001f5c <_Z17destroy_slab_listP6slab_s>:

void destroy_slab_list(slab_t* slab)
{
    if(slab == nullptr) return;
    80001f5c:	06050a63          	beqz	a0,80001fd0 <_Z17destroy_slab_listP6slab_s+0x74>
{
    80001f60:	fe010113          	addi	sp,sp,-32
    80001f64:	00113c23          	sd	ra,24(sp)
    80001f68:	00813823          	sd	s0,16(sp)
    80001f6c:	00913423          	sd	s1,8(sp)
    80001f70:	01213023          	sd	s2,0(sp)
    80001f74:	02010413          	addi	s0,sp,32
    80001f78:	00050593          	mv	a1,a0
    size_t sz = sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    80001f7c:	01853903          	ld	s2,24(a0)
    80001f80:	01053783          	ld	a5,16(a0)
    80001f84:	0707b783          	ld	a5,112(a5)
    80001f88:	02f90933          	mul	s2,s2,a5
    80001f8c:	05090913          	addi	s2,s2,80
    while(slab != nullptr)
    80001f90:	02058463          	beqz	a1,80001fb8 <_Z17destroy_slab_listP6slab_s+0x5c>
    {
        slab_t* nextSlab = slab->next;
    80001f94:	0085b483          	ld	s1,8(a1)
        buddy_free(slabAllocator->buddy, slab, sz);
    80001f98:	00090613          	mv	a2,s2
    80001f9c:	0000a797          	auipc	a5,0xa
    80001fa0:	a247b783          	ld	a5,-1500(a5) # 8000b9c0 <_ZL13slabAllocator>
    80001fa4:	0007b503          	ld	a0,0(a5)
    80001fa8:	00001097          	auipc	ra,0x1
    80001fac:	ff8080e7          	jalr	-8(ra) # 80002fa0 <_Z10buddy_freeP14buddyAllocatorPvm>
        slab = nextSlab;
    80001fb0:	00048593          	mv	a1,s1
    while(slab != nullptr)
    80001fb4:	fddff06f          	j	80001f90 <_Z17destroy_slab_listP6slab_s+0x34>
    }
}
    80001fb8:	01813083          	ld	ra,24(sp)
    80001fbc:	01013403          	ld	s0,16(sp)
    80001fc0:	00813483          	ld	s1,8(sp)
    80001fc4:	00013903          	ld	s2,0(sp)
    80001fc8:	02010113          	addi	sp,sp,32
    80001fcc:	00008067          	ret
    80001fd0:	00008067          	ret

0000000080001fd4 <_Z18kmem_cache_destroyP12kmem_cache_s>:

void kmem_cache_destroy(kmem_cache_t *cachep)
{
    80001fd4:	fe010113          	addi	sp,sp,-32
    80001fd8:	00113c23          	sd	ra,24(sp)
    80001fdc:	00813823          	sd	s0,16(sp)
    80001fe0:	00913423          	sd	s1,8(sp)
    80001fe4:	02010413          	addi	s0,sp,32
    80001fe8:	00050493          	mv	s1,a0
    destroy_slab_list(cachep->slabs_empty);
    80001fec:	05053503          	ld	a0,80(a0)
    80001ff0:	00000097          	auipc	ra,0x0
    80001ff4:	f6c080e7          	jalr	-148(ra) # 80001f5c <_Z17destroy_slab_listP6slab_s>
    destroy_slab_list(cachep->slabs_partial);
    80001ff8:	0604b503          	ld	a0,96(s1)
    80001ffc:	00000097          	auipc	ra,0x0
    80002000:	f60080e7          	jalr	-160(ra) # 80001f5c <_Z17destroy_slab_listP6slab_s>
    destroy_slab_list(cachep->slabs_full);
    80002004:	0584b503          	ld	a0,88(s1)
    80002008:	00000097          	auipc	ra,0x0
    8000200c:	f54080e7          	jalr	-172(ra) # 80001f5c <_Z17destroy_slab_listP6slab_s>
    kmem_cache_free(&slabAllocator->cacheOfCaches,cachep);
    80002010:	00048593          	mv	a1,s1
    80002014:	0000a517          	auipc	a0,0xa
    80002018:	9ac53503          	ld	a0,-1620(a0) # 8000b9c0 <_ZL13slabAllocator>
    8000201c:	07850513          	addi	a0,a0,120
    80002020:	00000097          	auipc	ra,0x0
    80002024:	ad0080e7          	jalr	-1328(ra) # 80001af0 <_Z15kmem_cache_freeP12kmem_cache_sPv>
}
    80002028:	01813083          	ld	ra,24(sp)
    8000202c:	01013403          	ld	s0,16(sp)
    80002030:	00813483          	ld	s1,8(sp)
    80002034:	02010113          	addi	sp,sp,32
    80002038:	00008067          	ret

000000008000203c <_Z9mem_allocm>:
//

#include "../h/syscall_c.hpp"

void* mem_alloc(size_t size)
{
    8000203c:	ff010113          	addi	sp,sp,-16
    80002040:	00813423          	sd	s0,8(sp)
    80002044:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80002048:	03f50513          	addi	a0,a0,63
    8000204c:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a1, %0" :  : "r"(numBlocks));
    80002050:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 1");
    80002054:	00100513          	li	a0,1

    __asm__ volatile("ecall"); // system call
    80002058:	00000073          	ecall

    //get the address
    uint64 allocatedAddr = 0x01;
    __asm__ volatile("mv %0, a0" : "=r"(allocatedAddr));
    8000205c:	00050513          	mv	a0,a0

    return (void*)allocatedAddr;
}
    80002060:	00813403          	ld	s0,8(sp)
    80002064:	01010113          	addi	sp,sp,16
    80002068:	00008067          	ret

000000008000206c <_Z8mem_freePv>:

int mem_free(void* p)
{
    8000206c:	ff010113          	addi	sp,sp,-16
    80002070:	00813423          	sd	s0,8(sp)
    80002074:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 addrFree = (uint64)p;
    __asm__ volatile("mv a1, %0" :  : "r"(addrFree));
    80002078:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 2");
    8000207c:	00200513          	li	a0,2

    __asm__ volatile("ecall"); // system call
    80002080:	00000073          	ecall

    //get the result of system call
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002084:	00050513          	mv	a0,a0

    return result;
}
    80002088:	0005051b          	sext.w	a0,a0
    8000208c:	00813403          	ld	s0,8(sp)
    80002090:	01010113          	addi	sp,sp,16
    80002094:	00008067          	ret

0000000080002098 <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* args)
{
    80002098:	fd010113          	addi	sp,sp,-48
    8000209c:	02113423          	sd	ra,40(sp)
    800020a0:	02813023          	sd	s0,32(sp)
    800020a4:	00913c23          	sd	s1,24(sp)
    800020a8:	01213823          	sd	s2,16(sp)
    800020ac:	01313423          	sd	s3,8(sp)
    800020b0:	03010413          	addi	s0,sp,48
    800020b4:	00050493          	mv	s1,a0
    800020b8:	00058913          	mv	s2,a1
    800020bc:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)args;
    uint64 opLocal = 0x11;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    800020c0:	00001537          	lui	a0,0x1
    800020c4:	00000097          	auipc	ra,0x0
    800020c8:	f78080e7          	jalr	-136(ra) # 8000203c <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    //todo
    //handle this error
    if(stack_space == 0)
    800020cc:	04050263          	beqz	a0,80002110 <_Z13thread_createPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    800020d0:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    800020d4:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    800020d8:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    800020dc:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    800020e0:	01100793          	li	a5,17
    800020e4:	00078513          	mv	a0,a5


    __asm__ volatile("ecall");
    800020e8:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800020ec:	00050513          	mv	a0,a0

    return result;
    800020f0:	0005051b          	sext.w	a0,a0
}
    800020f4:	02813083          	ld	ra,40(sp)
    800020f8:	02013403          	ld	s0,32(sp)
    800020fc:	01813483          	ld	s1,24(sp)
    80002100:	01013903          	ld	s2,16(sp)
    80002104:	00813983          	ld	s3,8(sp)
    80002108:	03010113          	addi	sp,sp,48
    8000210c:	00008067          	ret
        return -1;
    80002110:	fff00513          	li	a0,-1
    80002114:	fe1ff06f          	j	800020f4 <_Z13thread_createPP7_threadPFvPvES2_+0x5c>

0000000080002118 <_Z15thread_dispatchv>:

void thread_dispatch()
{
    80002118:	ff010113          	addi	sp,sp,-16
    8000211c:	00813423          	sd	s0,8(sp)
    80002120:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80002124:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80002128:	00000073          	ecall
}
    8000212c:	00813403          	ld	s0,8(sp)
    80002130:	01010113          	addi	sp,sp,16
    80002134:	00008067          	ret

0000000080002138 <_Z11thread_exitv>:

int thread_exit()
{
    80002138:	ff010113          	addi	sp,sp,-16
    8000213c:	00813423          	sd	s0,8(sp)
    80002140:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    80002144:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    80002148:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000214c:	00050513          	mv	a0,a0
    return result;
}
    80002150:	0005051b          	sext.w	a0,a0
    80002154:	00813403          	ld	s0,8(sp)
    80002158:	01010113          	addi	sp,sp,16
    8000215c:	00008067          	ret

0000000080002160 <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned int x)
{
    80002160:	ff010113          	addi	sp,sp,-16
    80002164:	00813423          	sd	s0,8(sp)
    80002168:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)x));
    8000216c:	02059593          	slli	a1,a1,0x20
    80002170:	0205d593          	srli	a1,a1,0x20
    80002174:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80002178:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    8000217c:	02100513          	li	a0,33

    __asm__ volatile("ecall");
    80002180:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002184:	00050513          	mv	a0,a0
    return result;
}
    80002188:	0005051b          	sext.w	a0,a0
    8000218c:	00813403          	ld	s0,8(sp)
    80002190:	01010113          	addi	sp,sp,16
    80002194:	00008067          	ret

0000000080002198 <_Z9sem_closeP4_sem>:


int sem_close(sem_t handle)
{
    80002198:	ff010113          	addi	sp,sp,-16
    8000219c:	00813423          	sd	s0,8(sp)
    800021a0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    800021a4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    800021a8:	02200513          	li	a0,34

    __asm__ volatile("ecall");
    800021ac:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800021b0:	00050513          	mv	a0,a0
    return result;
}
    800021b4:	0005051b          	sext.w	a0,a0
    800021b8:	00813403          	ld	s0,8(sp)
    800021bc:	01010113          	addi	sp,sp,16
    800021c0:	00008067          	ret

00000000800021c4 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id)
{
    800021c4:	ff010113          	addi	sp,sp,-16
    800021c8:	00813423          	sd	s0,8(sp)
    800021cc:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    800021d0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    800021d4:	02300513          	li	a0,35

    __asm__ volatile("ecall");
    800021d8:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800021dc:	00050513          	mv	a0,a0
    return result;
}
    800021e0:	0005051b          	sext.w	a0,a0
    800021e4:	00813403          	ld	s0,8(sp)
    800021e8:	01010113          	addi	sp,sp,16
    800021ec:	00008067          	ret

00000000800021f0 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id)
{
    800021f0:	ff010113          	addi	sp,sp,-16
    800021f4:	00813423          	sd	s0,8(sp)
    800021f8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    800021fc:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    80002200:	02400513          	li	a0,36

    __asm__ volatile("ecall");
    80002204:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002208:	00050513          	mv	a0,a0
    return result;
}
    8000220c:	0005051b          	sext.w	a0,a0
    80002210:	00813403          	ld	s0,8(sp)
    80002214:	01010113          	addi	sp,sp,16
    80002218:	00008067          	ret

000000008000221c <_Z10time_sleepm>:

int time_sleep(uint64 time)
{
    8000221c:	ff010113          	addi	sp,sp,-16
    80002220:	00813423          	sd	s0,8(sp)
    80002224:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)time));
    80002228:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    8000222c:	03100513          	li	a0,49

    __asm__ volatile("ecall");
    80002230:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002234:	00050513          	mv	a0,a0
    return result;
}
    80002238:	0005051b          	sext.w	a0,a0
    8000223c:	00813403          	ld	s0,8(sp)
    80002240:	01010113          	addi	sp,sp,16
    80002244:	00008067          	ret

0000000080002248 <_Z12thread_startPv>:

int thread_start(void* p)
{
    80002248:	ff010113          	addi	sp,sp,-16
    8000224c:	00813423          	sd	s0,8(sp)
    80002250:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)p));
    80002254:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x15");
    80002258:	01500513          	li	a0,21

    __asm__ volatile("ecall");
    8000225c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002260:	00050513          	mv	a0,a0
    return result;
}
    80002264:	0005051b          	sext.w	a0,a0
    80002268:	00813403          	ld	s0,8(sp)
    8000226c:	01010113          	addi	sp,sp,16
    80002270:	00008067          	ret

0000000080002274 <_Z15thread_make_pcbPP7_threadPFvPvES2_>:

int thread_make_pcb(thread_t* handle, void(*start_routine)(void*), void *arg)
{
    80002274:	fd010113          	addi	sp,sp,-48
    80002278:	02113423          	sd	ra,40(sp)
    8000227c:	02813023          	sd	s0,32(sp)
    80002280:	00913c23          	sd	s1,24(sp)
    80002284:	01213823          	sd	s2,16(sp)
    80002288:	01313423          	sd	s3,8(sp)
    8000228c:	03010413          	addi	s0,sp,48
    80002290:	00050493          	mv	s1,a0
    80002294:	00058913          	mv	s2,a1
    80002298:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)arg;
    uint64 opLocal = 0x14;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    8000229c:	00001537          	lui	a0,0x1
    800022a0:	00000097          	auipc	ra,0x0
    800022a4:	d9c080e7          	jalr	-612(ra) # 8000203c <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == 0)
    800022a8:	04050263          	beqz	a0,800022ec <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    800022ac:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    800022b0:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    800022b4:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    800022b8:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    800022bc:	01400793          	li	a5,20
    800022c0:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800022c4:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800022c8:	00050513          	mv	a0,a0
    return result;
    800022cc:	0005051b          	sext.w	a0,a0
}
    800022d0:	02813083          	ld	ra,40(sp)
    800022d4:	02013403          	ld	s0,32(sp)
    800022d8:	01813483          	ld	s1,24(sp)
    800022dc:	01013903          	ld	s2,16(sp)
    800022e0:	00813983          	ld	s3,8(sp)
    800022e4:	03010113          	addi	sp,sp,48
    800022e8:	00008067          	ret
        return -1;
    800022ec:	fff00513          	li	a0,-1
    800022f0:	fe1ff06f          	j	800022d0 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x5c>

00000000800022f4 <_Z4getcv>:

char getc()
{
    800022f4:	ff010113          	addi	sp,sp,-16
    800022f8:	00813423          	sd	s0,8(sp)
    800022fc:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    80002300:	04100513          	li	a0,65

    __asm__ volatile("ecall");
    80002304:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002308:	00050513          	mv	a0,a0
    return (char)result;
}
    8000230c:	0ff57513          	andi	a0,a0,255
    80002310:	00813403          	ld	s0,8(sp)
    80002314:	01010113          	addi	sp,sp,16
    80002318:	00008067          	ret

000000008000231c <_Z4putcc>:

void putc(char c)
{
    8000231c:	ff010113          	addi	sp,sp,-16
    80002320:	00813423          	sd	s0,8(sp)
    80002324:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)c));
    80002328:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    8000232c:	04200513          	li	a0,66
    __asm__ volatile("ecall");
    80002330:	00000073          	ecall
}
    80002334:	00813403          	ld	s0,8(sp)
    80002338:	01010113          	addi	sp,sp,16
    8000233c:	00008067          	ret

0000000080002340 <_Z20sysCallGetCharOutputv>:

char sysCallGetCharOutput()
{
    80002340:	ff010113          	addi	sp,sp,-16
    80002344:	00813423          	sd	s0,8(sp)
    80002348:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x43");
    8000234c:	04300513          	li	a0,67

    __asm__ volatile("ecall");
    80002350:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002354:	00050513          	mv	a0,a0
    return (char)result;
}
    80002358:	0ff57513          	andi	a0,a0,255
    8000235c:	00813403          	ld	s0,8(sp)
    80002360:	01010113          	addi	sp,sp,16
    80002364:	00008067          	ret

0000000080002368 <_Z17thread_delete_pcbP7_thread>:

int thread_delete_pcb(thread_t handle)
{
    80002368:	ff010113          	addi	sp,sp,-16
    8000236c:	00813423          	sd	s0,8(sp)
    80002370:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80002374:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x16");
    80002378:	01600513          	li	a0,22
    __asm__ volatile("ecall");
    8000237c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002380:	00050513          	mv	a0,a0
    return (char)result;
}
    80002384:	0ff57513          	andi	a0,a0,255
    80002388:	00813403          	ld	s0,8(sp)
    8000238c:	01010113          	addi	sp,sp,16
    80002390:	00008067          	ret

0000000080002394 <_ZN7_threaddlEPv>:
//

#include "../h/_thread.hpp"
#include "../h/syscall_c.hpp"

void _thread::operator delete(void *p) {
    80002394:	ff010113          	addi	sp,sp,-16
    80002398:	00113423          	sd	ra,8(sp)
    8000239c:	00813023          	sd	s0,0(sp)
    800023a0:	01010413          	addi	s0,sp,16
    thread_delete_pcb((thread_t)p);
    800023a4:	00000097          	auipc	ra,0x0
    800023a8:	fc4080e7          	jalr	-60(ra) # 80002368 <_Z17thread_delete_pcbP7_thread>
    800023ac:	00813083          	ld	ra,8(sp)
    800023b0:	00013403          	ld	s0,0(sp)
    800023b4:	01010113          	addi	sp,sp,16
    800023b8:	00008067          	ret

00000000800023bc <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    800023bc:	ff010113          	addi	sp,sp,-16
    800023c0:	00113423          	sd	ra,8(sp)
    800023c4:	00813023          	sd	s0,0(sp)
    800023c8:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    800023cc:	00002097          	auipc	ra,0x2
    800023d0:	f20080e7          	jalr	-224(ra) # 800042ec <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    800023d4:	00009797          	auipc	a5,0x9
    800023d8:	5f47b783          	ld	a5,1524(a5) # 8000b9c8 <_ZN3PCB7runningE>
    800023dc:	0287b703          	ld	a4,40(a5)
    800023e0:	0307b503          	ld	a0,48(a5)
    800023e4:	000700e7          	jalr	a4

    thread_exit();
    800023e8:	00000097          	auipc	ra,0x0
    800023ec:	d50080e7          	jalr	-688(ra) # 80002138 <_Z11thread_exitv>
}
    800023f0:	00813083          	ld	ra,8(sp)
    800023f4:	00013403          	ld	s0,0(sp)
    800023f8:	01010113          	addi	sp,sp,16
    800023fc:	00008067          	ret

0000000080002400 <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    80002400:	ff010113          	addi	sp,sp,-16
    80002404:	00813423          	sd	s0,8(sp)
    80002408:	01010413          	addi	s0,sp,16
    })
    8000240c:	00050023          	sb	zero,0(a0) # 1000 <_entry-0x7ffff000>
    80002410:	00e53c23          	sd	a4,24(a0)
    80002414:	02053023          	sd	zero,32(a0)
    80002418:	02b53423          	sd	a1,40(a0)
    8000241c:	02c53823          	sd	a2,48(a0)
    80002420:	02d53c23          	sd	a3,56(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    80002424:	000017b7          	lui	a5,0x1
    80002428:	00f686b3          	add	a3,a3,a5
    })
    8000242c:	04d53423          	sd	a3,72(a0)
    80002430:	00000797          	auipc	a5,0x0
    80002434:	f8c78793          	addi	a5,a5,-116 # 800023bc <_ZN3PCB6runnerEv>
    80002438:	04f53823          	sd	a5,80(a0)
    8000243c:	04050c23          	sb	zero,88(a0)
    nextPCB = 0;
    80002440:	00053423          	sd	zero,8(a0)
}
    80002444:	00813403          	ld	s0,8(sp)
    80002448:	01010113          	addi	sp,sp,16
    8000244c:	00008067          	ret

0000000080002450 <_ZN3PCB5startEv>:
{
    80002450:	ff010113          	addi	sp,sp,-16
    80002454:	00113423          	sd	ra,8(sp)
    80002458:	00813023          	sd	s0,0(sp)
    8000245c:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80002460:	00001097          	auipc	ra,0x1
    80002464:	488080e7          	jalr	1160(ra) # 800038e8 <_ZN9Scheduler3putEP3PCB>
}
    80002468:	00813083          	ld	ra,8(sp)
    8000246c:	00013403          	ld	s0,0(sp)
    80002470:	01010113          	addi	sp,sp,16
    80002474:	00008067          	ret

0000000080002478 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    80002478:	fe010113          	addi	sp,sp,-32
    8000247c:	00113c23          	sd	ra,24(sp)
    80002480:	00813823          	sd	s0,16(sp)
    80002484:	00913423          	sd	s1,8(sp)
    80002488:	01213023          	sd	s2,0(sp)
    8000248c:	02010413          	addi	s0,sp,32
    PCB* old = running;
    80002490:	00009497          	auipc	s1,0x9
    80002494:	5384b483          	ld	s1,1336(s1) # 8000b9c8 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    80002498:	0404a703          	lw	a4,64(s1)
    if(old->getState() == PCB::RUNNING)
    8000249c:	00100793          	li	a5,1
    800024a0:	04f70a63          	beq	a4,a5,800024f4 <_ZN3PCB8dispatchEv+0x7c>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    800024a4:	00001097          	auipc	ra,0x1
    800024a8:	498080e7          	jalr	1176(ra) # 8000393c <_ZN9Scheduler3getEv>
    800024ac:	00009917          	auipc	s2,0x9
    800024b0:	51c90913          	addi	s2,s2,1308 # 8000b9c8 <_ZN3PCB7runningE>
    800024b4:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    800024b8:	00100793          	li	a5,1
    800024bc:	04f52023          	sw	a5,64(a0)
    PCB::running->setState(PCB::RUNNING);

    Riscv::changePrivMode();
    800024c0:	00002097          	auipc	ra,0x2
    800024c4:	f20080e7          	jalr	-224(ra) # 800043e0 <_ZN5Riscv14changePrivModeEv>

    PCB::contextSwitch(&old->context, &running->context);
    800024c8:	00093583          	ld	a1,0(s2)
    800024cc:	04858593          	addi	a1,a1,72
    800024d0:	04848513          	addi	a0,s1,72
    800024d4:	fffff097          	auipc	ra,0xfffff
    800024d8:	d64080e7          	jalr	-668(ra) # 80001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    800024dc:	01813083          	ld	ra,24(sp)
    800024e0:	01013403          	ld	s0,16(sp)
    800024e4:	00813483          	ld	s1,8(sp)
    800024e8:	00013903          	ld	s2,0(sp)
    800024ec:	02010113          	addi	sp,sp,32
    800024f0:	00008067          	ret
        Scheduler::put(old);
    800024f4:	00048513          	mv	a0,s1
    800024f8:	00001097          	auipc	ra,0x1
    800024fc:	3f0080e7          	jalr	1008(ra) # 800038e8 <_ZN9Scheduler3putEP3PCB>
    80002500:	fa5ff06f          	j	800024a4 <_ZN3PCB8dispatchEv+0x2c>

0000000080002504 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    80002504:	ff010113          	addi	sp,sp,-16
    80002508:	00113423          	sd	ra,8(sp)
    8000250c:	00813023          	sd	s0,0(sp)
    80002510:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    80002514:	00002097          	auipc	ra,0x2
    80002518:	604080e7          	jalr	1540(ra) # 80004b18 <_ZN15MemoryAllocator7kmallocEm>
}
    8000251c:	00813083          	ld	ra,8(sp)
    80002520:	00013403          	ld	s0,0(sp)
    80002524:	01010113          	addi	sp,sp,16
    80002528:	00008067          	ret

000000008000252c <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    8000252c:	ff010113          	addi	sp,sp,-16
    80002530:	00113423          	sd	ra,8(sp)
    80002534:	00813023          	sd	s0,0(sp)
    80002538:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    8000253c:	00002097          	auipc	ra,0x2
    80002540:	640080e7          	jalr	1600(ra) # 80004b7c <_ZN15MemoryAllocator5kfreeEPv>
}
    80002544:	00813083          	ld	ra,8(sp)
    80002548:	00013403          	ld	s0,0(sp)
    8000254c:	01010113          	addi	sp,sp,16
    80002550:	00008067          	ret

0000000080002554 <_ZN3PCBD1Ev>:

PCB::~PCB()
    80002554:	ff010113          	addi	sp,sp,-16
    80002558:	00113423          	sd	ra,8(sp)
    8000255c:	00813023          	sd	s0,0(sp)
    80002560:	01010413          	addi	s0,sp,16
{
    MemoryAllocator::kfree(beginSP);
    80002564:	03853503          	ld	a0,56(a0)
    80002568:	00002097          	auipc	ra,0x2
    8000256c:	614080e7          	jalr	1556(ra) # 80004b7c <_ZN15MemoryAllocator5kfreeEPv>
}
    80002570:	00813083          	ld	ra,8(sp)
    80002574:	00013403          	ld	s0,0(sp)
    80002578:	01010113          	addi	sp,sp,16
    8000257c:	00008067          	ret

0000000080002580 <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    80002580:	fd010113          	addi	sp,sp,-48
    80002584:	02113423          	sd	ra,40(sp)
    80002588:	02813023          	sd	s0,32(sp)
    8000258c:	00913c23          	sd	s1,24(sp)
    80002590:	01213823          	sd	s2,16(sp)
    80002594:	01313423          	sd	s3,8(sp)
    80002598:	01413023          	sd	s4,0(sp)
    8000259c:	03010413          	addi	s0,sp,48
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    800025a0:	06000513          	li	a0,96
    800025a4:	00000097          	auipc	ra,0x0
    800025a8:	f60080e7          	jalr	-160(ra) # 80002504 <_ZN3PCBnwEm>
    800025ac:	00050493          	mv	s1,a0
    800025b0:	00000713          	li	a4,0
    800025b4:	00000693          	li	a3,0
    800025b8:	00000613          	li	a2,0
    800025bc:	00000593          	li	a1,0
    800025c0:	00000097          	auipc	ra,0x0
    800025c4:	e40080e7          	jalr	-448(ra) # 80002400 <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->systemThread = true;
    800025c8:	00100793          	li	a5,1
    800025cc:	00f48023          	sb	a5,0(s1)
    PCB::running = mainSystem;
    800025d0:	00009917          	auipc	s2,0x9
    800025d4:	3f890913          	addi	s2,s2,1016 # 8000b9c8 <_ZN3PCB7runningE>
    800025d8:	00993023          	sd	s1,0(s2)
    800025dc:	00100a13          	li	s4,1
    800025e0:	0544a023          	sw	s4,64(s1)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    800025e4:	00001537          	lui	a0,0x1
    800025e8:	00002097          	auipc	ra,0x2
    800025ec:	530080e7          	jalr	1328(ra) # 80004b18 <_ZN15MemoryAllocator7kmallocEm>
    800025f0:	00050993          	mv	s3,a0
    800025f4:	06000513          	li	a0,96
    800025f8:	00000097          	auipc	ra,0x0
    800025fc:	f0c080e7          	jalr	-244(ra) # 80002504 <_ZN3PCBnwEm>
    80002600:	00050493          	mv	s1,a0
    80002604:	00200713          	li	a4,2
    80002608:	00098693          	mv	a3,s3
    8000260c:	00000613          	li	a2,0
    80002610:	00009597          	auipc	a1,0x9
    80002614:	3385b583          	ld	a1,824(a1) # 8000b948 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002618:	00000097          	auipc	ra,0x0
    8000261c:	de8080e7          	jalr	-536(ra) # 80002400 <_ZN3PCBC1EPFvPvES0_S0_m>
    80002620:	00993423          	sd	s1,8(s2)
    PCB::consolePCB->systemThread = true;
    80002624:	01448023          	sb	s4,0(s1)
    PCB::consolePCB->start();
    80002628:	00893503          	ld	a0,8(s2)
    8000262c:	00000097          	auipc	ra,0x0
    80002630:	e24080e7          	jalr	-476(ra) # 80002450 <_ZN3PCB5startEv>
    PCB::userPCB = new PCB(&Riscv::userMainWrapper, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80002634:	00001537          	lui	a0,0x1
    80002638:	00002097          	auipc	ra,0x2
    8000263c:	4e0080e7          	jalr	1248(ra) # 80004b18 <_ZN15MemoryAllocator7kmallocEm>
    80002640:	00050993          	mv	s3,a0
    80002644:	06000513          	li	a0,96
    80002648:	00000097          	auipc	ra,0x0
    8000264c:	ebc080e7          	jalr	-324(ra) # 80002504 <_ZN3PCBnwEm>
    80002650:	00050493          	mv	s1,a0
    80002654:	00200713          	li	a4,2
    80002658:	00098693          	mv	a3,s3
    8000265c:	00000613          	li	a2,0
    80002660:	00009597          	auipc	a1,0x9
    80002664:	3105b583          	ld	a1,784(a1) # 8000b970 <_GLOBAL_OFFSET_TABLE_+0x78>
    80002668:	00000097          	auipc	ra,0x0
    8000266c:	d98080e7          	jalr	-616(ra) # 80002400 <_ZN3PCBC1EPFvPvES0_S0_m>
    80002670:	00993823          	sd	s1,16(s2)
    PCB::userPCB->start();
    80002674:	00048513          	mv	a0,s1
    80002678:	00000097          	auipc	ra,0x0
    8000267c:	dd8080e7          	jalr	-552(ra) # 80002450 <_ZN3PCB5startEv>
}
    80002680:	02813083          	ld	ra,40(sp)
    80002684:	02013403          	ld	s0,32(sp)
    80002688:	01813483          	ld	s1,24(sp)
    8000268c:	01013903          	ld	s2,16(sp)
    80002690:	00813983          	ld	s3,8(sp)
    80002694:	00013a03          	ld	s4,0(sp)
    80002698:	03010113          	addi	sp,sp,48
    8000269c:	00008067          	ret

00000000800026a0 <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    800026a0:	ff010113          	addi	sp,sp,-16
    800026a4:	00813423          	sd	s0,8(sp)
    800026a8:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    800026ac:	04052503          	lw	a0,64(a0) # 1040 <_entry-0x7fffefc0>
    800026b0:	ffd50513          	addi	a0,a0,-3
}
    800026b4:	00153513          	seqz	a0,a0
    800026b8:	00813403          	ld	s0,8(sp)
    800026bc:	01010113          	addi	sp,sp,16
    800026c0:	00008067          	ret

00000000800026c4 <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    800026c4:	ff010113          	addi	sp,sp,-16
    800026c8:	00113423          	sd	ra,8(sp)
    800026cc:	00813023          	sd	s0,0(sp)
    800026d0:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    800026d4:	00009797          	auipc	a5,0x9
    800026d8:	2f478793          	addi	a5,a5,756 # 8000b9c8 <_ZN3PCB7runningE>
    800026dc:	0007bc23          	sd	zero,24(a5)
    PCB::running->setState(PCB::FINISHED);
    800026e0:	0007b783          	ld	a5,0(a5)
    800026e4:	00300713          	li	a4,3
    800026e8:	04e7a023          	sw	a4,64(a5)
    PCB::dispatch();
    800026ec:	00000097          	auipc	ra,0x0
    800026f0:	d8c080e7          	jalr	-628(ra) # 80002478 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    800026f4:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800026f8:	00002097          	auipc	ra,0x2
    800026fc:	cb0080e7          	jalr	-848(ra) # 800043a8 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002700:	00813083          	ld	ra,8(sp)
    80002704:	00013403          	ld	s0,0(sp)
    80002708:	01010113          	addi	sp,sp,16
    8000270c:	00008067          	ret

0000000080002710 <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    80002710:	ff010113          	addi	sp,sp,-16
    80002714:	00113423          	sd	ra,8(sp)
    80002718:	00813023          	sd	s0,0(sp)
    8000271c:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    80002720:	00009797          	auipc	a5,0x9
    80002724:	2c07b023          	sd	zero,704(a5) # 8000b9e0 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    80002728:	00000097          	auipc	ra,0x0
    8000272c:	d50080e7          	jalr	-688(ra) # 80002478 <_ZN3PCB8dispatchEv>
}
    80002730:	00813083          	ld	ra,8(sp)
    80002734:	00013403          	ld	s0,0(sp)
    80002738:	01010113          	addi	sp,sp,16
    8000273c:	00008067          	ret

0000000080002740 <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    80002740:	ff010113          	addi	sp,sp,-16
    80002744:	00113423          	sd	ra,8(sp)
    80002748:	00813023          	sd	s0,0(sp)
    8000274c:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80002750:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    80002754:	00009717          	auipc	a4,0x9
    80002758:	27470713          	addi	a4,a4,628 # 8000b9c8 <_ZN3PCB7runningE>
    8000275c:	00073c23          	sd	zero,24(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    80002760:	00073703          	ld	a4,0(a4)
    80002764:	00009697          	auipc	a3,0x9
    80002768:	1dc6b683          	ld	a3,476(a3) # 8000b940 <_GLOBAL_OFFSET_TABLE_+0x48>
    8000276c:	0006b683          	ld	a3,0(a3)
    80002770:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002774:	02f73023          	sd	a5,32(a4)
    SleepPCBList::insertSleepingPCB();
    80002778:	00001097          	auipc	ra,0x1
    8000277c:	ff4080e7          	jalr	-12(ra) # 8000376c <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    80002780:	00000097          	auipc	ra,0x0
    80002784:	cf8080e7          	jalr	-776(ra) # 80002478 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    80002788:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    8000278c:	00002097          	auipc	ra,0x2
    80002790:	c1c080e7          	jalr	-996(ra) # 800043a8 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002794:	00813083          	ld	ra,8(sp)
    80002798:	00013403          	ld	s0,0(sp)
    8000279c:	01010113          	addi	sp,sp,16
    800027a0:	00008067          	ret

00000000800027a4 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    800027a4:	fd010113          	addi	sp,sp,-48
    800027a8:	02113423          	sd	ra,40(sp)
    800027ac:	02813023          	sd	s0,32(sp)
    800027b0:	00913c23          	sd	s1,24(sp)
    800027b4:	01213823          	sd	s2,16(sp)
    800027b8:	01313423          	sd	s3,8(sp)
    800027bc:	01413023          	sd	s4,0(sp)
    800027c0:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    800027c4:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    800027c8:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    800027cc:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    800027d0:	06000513          	li	a0,96
    800027d4:	00000097          	auipc	ra,0x0
    800027d8:	d30080e7          	jalr	-720(ra) # 80002504 <_ZN3PCBnwEm>
    800027dc:	00050493          	mv	s1,a0
    800027e0:	00200713          	li	a4,2
    800027e4:	00009697          	auipc	a3,0x9
    800027e8:	2046b683          	ld	a3,516(a3) # 8000b9e8 <_ZN3PCB10savedRegA4E>
    800027ec:	000a0613          	mv	a2,s4
    800027f0:	00098593          	mv	a1,s3
    800027f4:	00000097          	auipc	ra,0x0
    800027f8:	c0c080e7          	jalr	-1012(ra) # 80002400 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    800027fc:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002800:	02048e63          	beqz	s1,8000283c <_ZN3PCB19threadCreateHandlerEv+0x98>
            __asm__ volatile("li a0, 0xffffffffffffffff");
    else
    {
        newPCB->start();
    80002804:	00048513          	mv	a0,s1
    80002808:	00000097          	auipc	ra,0x0
    8000280c:	c48080e7          	jalr	-952(ra) # 80002450 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002810:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80002814:	00002097          	auipc	ra,0x2
    80002818:	b94080e7          	jalr	-1132(ra) # 800043a8 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000281c:	02813083          	ld	ra,40(sp)
    80002820:	02013403          	ld	s0,32(sp)
    80002824:	01813483          	ld	s1,24(sp)
    80002828:	01013903          	ld	s2,16(sp)
    8000282c:	00813983          	ld	s3,8(sp)
    80002830:	00013a03          	ld	s4,0(sp)
    80002834:	03010113          	addi	sp,sp,48
    80002838:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    8000283c:	fff00513          	li	a0,-1
    80002840:	fd5ff06f          	j	80002814 <_ZN3PCB19threadCreateHandlerEv+0x70>

0000000080002844 <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    80002844:	ff010113          	addi	sp,sp,-16
    80002848:	00113423          	sd	ra,8(sp)
    8000284c:	00813023          	sd	s0,0(sp)
    80002850:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002854:	00058513          	mv	a0,a1
    if(pcb != 0)
    80002858:	02050463          	beqz	a0,80002880 <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    8000285c:	00000097          	auipc	ra,0x0
    80002860:	bf4080e7          	jalr	-1036(ra) # 80002450 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002864:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0xffffffffffffffff");
    }
    Riscv::w_a0_sscratch();
    80002868:	00002097          	auipc	ra,0x2
    8000286c:	b40080e7          	jalr	-1216(ra) # 800043a8 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002870:	00813083          	ld	ra,8(sp)
    80002874:	00013403          	ld	s0,0(sp)
    80002878:	01010113          	addi	sp,sp,16
    8000287c:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002880:	fff00513          	li	a0,-1
    80002884:	fe5ff06f          	j	80002868 <_ZN3PCB18threadStartHandlerEv+0x24>

0000000080002888 <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80002888:	fd010113          	addi	sp,sp,-48
    8000288c:	02113423          	sd	ra,40(sp)
    80002890:	02813023          	sd	s0,32(sp)
    80002894:	00913c23          	sd	s1,24(sp)
    80002898:	01213823          	sd	s2,16(sp)
    8000289c:	01313423          	sd	s3,8(sp)
    800028a0:	01413023          	sd	s4,0(sp)
    800028a4:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    800028a8:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    800028ac:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    800028b0:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    800028b4:	06000513          	li	a0,96
    800028b8:	00000097          	auipc	ra,0x0
    800028bc:	c4c080e7          	jalr	-948(ra) # 80002504 <_ZN3PCBnwEm>
    800028c0:	00050493          	mv	s1,a0
    800028c4:	00200713          	li	a4,2
    800028c8:	00009697          	auipc	a3,0x9
    800028cc:	1206b683          	ld	a3,288(a3) # 8000b9e8 <_ZN3PCB10savedRegA4E>
    800028d0:	000a0613          	mv	a2,s4
    800028d4:	00098593          	mv	a1,s3
    800028d8:	00000097          	auipc	ra,0x0
    800028dc:	b28080e7          	jalr	-1240(ra) # 80002400 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    800028e0:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    800028e4:	02048863          	beqz	s1,80002914 <_ZN3PCB20threadMakePCBHandlerEv+0x8c>
        __asm__ volatile("li a0, 0xffffffffffffffff");
    else
        __asm__ volatile("li a0, 0");
    800028e8:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800028ec:	00002097          	auipc	ra,0x2
    800028f0:	abc080e7          	jalr	-1348(ra) # 800043a8 <_ZN5Riscv13w_a0_sscratchEv>
}
    800028f4:	02813083          	ld	ra,40(sp)
    800028f8:	02013403          	ld	s0,32(sp)
    800028fc:	01813483          	ld	s1,24(sp)
    80002900:	01013903          	ld	s2,16(sp)
    80002904:	00813983          	ld	s3,8(sp)
    80002908:	00013a03          	ld	s4,0(sp)
    8000290c:	03010113          	addi	sp,sp,48
    80002910:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002914:	fff00513          	li	a0,-1
    80002918:	fd5ff06f          	j	800028ec <_ZN3PCB20threadMakePCBHandlerEv+0x64>

000000008000291c <_ZN3PCB19threadDelPCBHandlerEv>:

void PCB::threadDelPCBHandler()
{
    8000291c:	fe010113          	addi	sp,sp,-32
    80002920:	00113c23          	sd	ra,24(sp)
    80002924:	00813823          	sd	s0,16(sp)
    80002928:	00913423          	sd	s1,8(sp)
    8000292c:	02010413          	addi	s0,sp,32
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002930:	00058493          	mv	s1,a1
    if(pcb != 0)
    80002934:	02048e63          	beqz	s1,80002970 <_ZN3PCB19threadDelPCBHandlerEv+0x54>
    {
        delete pcb;
    80002938:	00048513          	mv	a0,s1
    8000293c:	00000097          	auipc	ra,0x0
    80002940:	c18080e7          	jalr	-1000(ra) # 80002554 <_ZN3PCBD1Ev>
    80002944:	00048513          	mv	a0,s1
    80002948:	00000097          	auipc	ra,0x0
    8000294c:	be4080e7          	jalr	-1052(ra) # 8000252c <_ZN3PCBdlEPv>
        __asm__ volatile("li a0, 0x0");
    80002950:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x1");
    }
    Riscv::w_a0_sscratch();
    80002954:	00002097          	auipc	ra,0x2
    80002958:	a54080e7          	jalr	-1452(ra) # 800043a8 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000295c:	01813083          	ld	ra,24(sp)
    80002960:	01013403          	ld	s0,16(sp)
    80002964:	00813483          	ld	s1,8(sp)
    80002968:	02010113          	addi	sp,sp,32
    8000296c:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80002970:	00100513          	li	a0,1
    80002974:	fe1ff06f          	j	80002954 <_ZN3PCB19threadDelPCBHandlerEv+0x38>

0000000080002978 <_Z12getBlockAddrm>:
    size_t level = getDeg2Ceil(numOfBlocks);
    addBlocks(buddy, addr, level); //adds free blocks
}

size_t getBlockAddr(size_t addr)
{
    80002978:	ff010113          	addi	sp,sp,-16
    8000297c:	00813423          	sd	s0,8(sp)
    80002980:	01010413          	addi	s0,sp,16
    size_t mask = ((size_t)-1) << BLOCK_SIZE_POWER_2;
    return addr & mask;
}
    80002984:	fffff7b7          	lui	a5,0xfffff
    80002988:	00f57533          	and	a0,a0,a5
    8000298c:	00813403          	ld	s0,8(sp)
    80002990:	01010113          	addi	sp,sp,16
    80002994:	00008067          	ret

0000000080002998 <_Z16getNextBlockAddrm>:
size_t getNextBlockAddr(size_t addr)
{
    80002998:	ff010113          	addi	sp,sp,-16
    8000299c:	00113423          	sd	ra,8(sp)
    800029a0:	00813023          	sd	s0,0(sp)
    800029a4:	01010413          	addi	s0,sp,16
    size_t currBlock = getBlockAddr(addr);
    800029a8:	00000097          	auipc	ra,0x0
    800029ac:	fd0080e7          	jalr	-48(ra) # 80002978 <_Z12getBlockAddrm>
    return currBlock + BLOCK_SIZE;
}
    800029b0:	000017b7          	lui	a5,0x1
    800029b4:	00f50533          	add	a0,a0,a5
    800029b8:	00813083          	ld	ra,8(sp)
    800029bc:	00013403          	ld	s0,0(sp)
    800029c0:	01010113          	addi	sp,sp,16
    800029c4:	00008067          	ret

00000000800029c8 <_Z12getDeg2Floorm>:

size_t getDeg2Floor(size_t num)
{
    800029c8:	ff010113          	addi	sp,sp,-16
    800029cc:	00813423          	sd	s0,8(sp)
    800029d0:	01010413          	addi	s0,sp,16
    size_t x = 1;
    size_t deg = 0;
    800029d4:	00000713          	li	a4,0
    size_t x = 1;
    800029d8:	00100793          	li	a5,1
    while(x <= num)
    800029dc:	00f56863          	bltu	a0,a5,800029ec <_Z12getDeg2Floorm+0x24>
    {
        deg++;
    800029e0:	00170713          	addi	a4,a4,1
        x<<=1;
    800029e4:	00179793          	slli	a5,a5,0x1
    while(x <= num)
    800029e8:	ff5ff06f          	j	800029dc <_Z12getDeg2Floorm+0x14>
    }
    return deg - 1;
}
    800029ec:	fff70513          	addi	a0,a4,-1
    800029f0:	00813403          	ld	s0,8(sp)
    800029f4:	01010113          	addi	sp,sp,16
    800029f8:	00008067          	ret

00000000800029fc <_Z11getDeg2Ceilm>:

size_t getDeg2Ceil(size_t num)
{
    800029fc:	ff010113          	addi	sp,sp,-16
    80002a00:	00813423          	sd	s0,8(sp)
    80002a04:	01010413          	addi	s0,sp,16
    80002a08:	00050713          	mv	a4,a0
    size_t x = 1;
    size_t deg = 0;
    80002a0c:	00000513          	li	a0,0
    size_t x = 1;
    80002a10:	00100793          	li	a5,1
    while(x < num)
    80002a14:	00e7f863          	bgeu	a5,a4,80002a24 <_Z11getDeg2Ceilm+0x28>
    {
        deg++;
    80002a18:	00150513          	addi	a0,a0,1
        x<<=1;
    80002a1c:	00179793          	slli	a5,a5,0x1
    while(x < num)
    80002a20:	ff5ff06f          	j	80002a14 <_Z11getDeg2Ceilm+0x18>
    }
    return deg;
}
    80002a24:	00813403          	ld	s0,8(sp)
    80002a28:	01010113          	addi	sp,sp,16
    80002a2c:	00008067          	ret

0000000080002a30 <_Z15addBlockToLevelP14buddyAllocatorPvm>:
    addBlockToLevel(buddy, addr, level);
}

//adds free block to level
void addBlockToLevel(buddyAllocator* buddy, void* addr, size_t level)
{
    80002a30:	ff010113          	addi	sp,sp,-16
    80002a34:	00813423          	sd	s0,8(sp)
    80002a38:	01010413          	addi	s0,sp,16
    buddyBlock* newBlock = (buddyBlock*)addr;
    newBlock->next = nullptr;
    80002a3c:	0005b023          	sd	zero,0(a1)
    if(buddy->bucket[level].first == nullptr)
    80002a40:	00260793          	addi	a5,a2,2
    80002a44:	00479793          	slli	a5,a5,0x4
    80002a48:	00f507b3          	add	a5,a0,a5
    80002a4c:	0007b783          	ld	a5,0(a5) # 1000 <_entry-0x7ffff000>
    80002a50:	02078463          	beqz	a5,80002a78 <_Z15addBlockToLevelP14buddyAllocatorPvm+0x48>
    {
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    }
    else
    {
        buddy->bucket[level].last->next = newBlock;
    80002a54:	00260613          	addi	a2,a2,2
    80002a58:	00461613          	slli	a2,a2,0x4
    80002a5c:	00c50633          	add	a2,a0,a2
    80002a60:	00863783          	ld	a5,8(a2)
    80002a64:	00b7b023          	sd	a1,0(a5)
        buddy->bucket[level].last = newBlock;
    80002a68:	00b63423          	sd	a1,8(a2)
    }
}
    80002a6c:	00813403          	ld	s0,8(sp)
    80002a70:	01010113          	addi	sp,sp,16
    80002a74:	00008067          	ret
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    80002a78:	00260613          	addi	a2,a2,2
    80002a7c:	00461613          	slli	a2,a2,0x4
    80002a80:	00c50633          	add	a2,a0,a2
    80002a84:	00b63423          	sd	a1,8(a2)
    80002a88:	00b63023          	sd	a1,0(a2)
    80002a8c:	fe1ff06f          	j	80002a6c <_Z15addBlockToLevelP14buddyAllocatorPvm+0x3c>

0000000080002a90 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>:

size_t getBuddyBlockAddr(buddyAllocator* buddy, void* addr, size_t level)
{
    80002a90:	ff010113          	addi	sp,sp,-16
    80002a94:	00813423          	sd	s0,8(sp)
    80002a98:	01010413          	addi	s0,sp,16
    size_t diff = BLOCK_SIZE << level;
    80002a9c:	000017b7          	lui	a5,0x1
    80002aa0:	00c7963b          	sllw	a2,a5,a2
    size_t off = (size_t)addr - (size_t)buddy->startAddr;
    80002aa4:	00853783          	ld	a5,8(a0)
    80002aa8:	40f587b3          	sub	a5,a1,a5
    if(diff & off)
    80002aac:	00f677b3          	and	a5,a2,a5
    80002ab0:	00078a63          	beqz	a5,80002ac4 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm+0x34>
        return (size_t)addr - diff;
    80002ab4:	40c58533          	sub	a0,a1,a2
    else
        return (size_t)addr + diff;
}
    80002ab8:	00813403          	ld	s0,8(sp)
    80002abc:	01010113          	addi	sp,sp,16
    80002ac0:	00008067          	ret
        return (size_t)addr + diff;
    80002ac4:	00c58533          	add	a0,a1,a2
    80002ac8:	ff1ff06f          	j	80002ab8 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm+0x28>

0000000080002acc <_Z5splitP14buddyAllocatorPvmmb>:
{
    80002acc:	fd010113          	addi	sp,sp,-48
    80002ad0:	02113423          	sd	ra,40(sp)
    80002ad4:	02813023          	sd	s0,32(sp)
    80002ad8:	00913c23          	sd	s1,24(sp)
    80002adc:	01213823          	sd	s2,16(sp)
    80002ae0:	01313423          	sd	s3,8(sp)
    80002ae4:	01413023          	sd	s4,0(sp)
    80002ae8:	03010413          	addi	s0,sp,48
    80002aec:	00050913          	mv	s2,a0
    80002af0:	00058a13          	mv	s4,a1
    if(!splitMore)
    80002af4:	06070a63          	beqz	a4,80002b68 <_Z5splitP14buddyAllocatorPvmmb+0x9c>
    80002af8:	00060993          	mv	s3,a2
        if(currLevel == finalLevel)
    80002afc:	04c68663          	beq	a3,a2,80002b48 <_Z5splitP14buddyAllocatorPvmmb+0x7c>
        size_t buddyBlock = getBuddyBlockAddr(buddy, addr, currLevel - 1); // currLevel - 1 for next step
    80002b00:	fff68493          	addi	s1,a3,-1
    80002b04:	00048613          	mv	a2,s1
    80002b08:	00000097          	auipc	ra,0x0
    80002b0c:	f88080e7          	jalr	-120(ra) # 80002a90 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>
    80002b10:	00050593          	mv	a1,a0
        split(buddy, (void*)buddyBlock, finalLevel, currLevel - 1, false); // continue splitting
    80002b14:	00000713          	li	a4,0
    80002b18:	00048693          	mv	a3,s1
    80002b1c:	00098613          	mv	a2,s3
    80002b20:	00090513          	mv	a0,s2
    80002b24:	00000097          	auipc	ra,0x0
    80002b28:	fa8080e7          	jalr	-88(ra) # 80002acc <_Z5splitP14buddyAllocatorPvmmb>
        split(buddy, addr, finalLevel, currLevel - 1, true); // continue splitting
    80002b2c:	00100713          	li	a4,1
    80002b30:	00048693          	mv	a3,s1
    80002b34:	00098613          	mv	a2,s3
    80002b38:	000a0593          	mv	a1,s4
    80002b3c:	00090513          	mv	a0,s2
    80002b40:	00000097          	auipc	ra,0x0
    80002b44:	f8c080e7          	jalr	-116(ra) # 80002acc <_Z5splitP14buddyAllocatorPvmmb>
}
    80002b48:	02813083          	ld	ra,40(sp)
    80002b4c:	02013403          	ld	s0,32(sp)
    80002b50:	01813483          	ld	s1,24(sp)
    80002b54:	01013903          	ld	s2,16(sp)
    80002b58:	00813983          	ld	s3,8(sp)
    80002b5c:	00013a03          	ld	s4,0(sp)
    80002b60:	03010113          	addi	sp,sp,48
    80002b64:	00008067          	ret
        addBlockToLevel(buddy, addr, currLevel);
    80002b68:	00068613          	mv	a2,a3
    80002b6c:	00000097          	auipc	ra,0x0
    80002b70:	ec4080e7          	jalr	-316(ra) # 80002a30 <_Z15addBlockToLevelP14buddyAllocatorPvm>
    80002b74:	fd5ff06f          	j	80002b48 <_Z5splitP14buddyAllocatorPvmmb+0x7c>

0000000080002b78 <_Z11buddy_allocP14buddyAllocatorm>:
{
    80002b78:	fd010113          	addi	sp,sp,-48
    80002b7c:	02113423          	sd	ra,40(sp)
    80002b80:	02813023          	sd	s0,32(sp)
    80002b84:	00913c23          	sd	s1,24(sp)
    80002b88:	01213823          	sd	s2,16(sp)
    80002b8c:	01313423          	sd	s3,8(sp)
    80002b90:	01413023          	sd	s4,0(sp)
    80002b94:	03010413          	addi	s0,sp,48
    80002b98:	00050913          	mv	s2,a0
    80002b9c:	00058493          	mv	s1,a1
    KConsole::trapPrintString("Buddy allocation: ");
    80002ba0:	00006517          	auipc	a0,0x6
    80002ba4:	6d050513          	addi	a0,a0,1744 # 80009270 <CONSOLE_STATUS+0x260>
    80002ba8:	00001097          	auipc	ra,0x1
    80002bac:	aec080e7          	jalr	-1300(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(numOfBlocks); KConsole::trapPrintString("\n");
    80002bb0:	00000613          	li	a2,0
    80002bb4:	00a00593          	li	a1,10
    80002bb8:	00048513          	mv	a0,s1
    80002bbc:	00001097          	auipc	ra,0x1
    80002bc0:	b1c080e7          	jalr	-1252(ra) # 800036d8 <_ZN8KConsole12trapPrintIntEmii>
    80002bc4:	00007517          	auipc	a0,0x7
    80002bc8:	b9c50513          	addi	a0,a0,-1124 # 80009760 <CONSOLE_STATUS+0x750>
    80002bcc:	00001097          	auipc	ra,0x1
    80002bd0:	ac8080e7          	jalr	-1336(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    size_t level = getDeg2Ceil(numOfBlocks);
    80002bd4:	00048513          	mv	a0,s1
    80002bd8:	00000097          	auipc	ra,0x0
    80002bdc:	e24080e7          	jalr	-476(ra) # 800029fc <_Z11getDeg2Ceilm>
    80002be0:	00050a13          	mv	s4,a0
    KConsole::trapPrintString("Level: ");
    80002be4:	00006517          	auipc	a0,0x6
    80002be8:	6a450513          	addi	a0,a0,1700 # 80009288 <CONSOLE_STATUS+0x278>
    80002bec:	00001097          	auipc	ra,0x1
    80002bf0:	aa8080e7          	jalr	-1368(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(level); KConsole::trapPrintString("\n");
    80002bf4:	00000613          	li	a2,0
    80002bf8:	00a00593          	li	a1,10
    80002bfc:	000a0513          	mv	a0,s4
    80002c00:	00001097          	auipc	ra,0x1
    80002c04:	ad8080e7          	jalr	-1320(ra) # 800036d8 <_ZN8KConsole12trapPrintIntEmii>
    80002c08:	00007517          	auipc	a0,0x7
    80002c0c:	b5850513          	addi	a0,a0,-1192 # 80009760 <CONSOLE_STATUS+0x750>
    80002c10:	00001097          	auipc	ra,0x1
    80002c14:	a84080e7          	jalr	-1404(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002c18:	000a0493          	mv	s1,s4
    80002c1c:	01893783          	ld	a5,24(s2)
    80002c20:	0a97e063          	bltu	a5,s1,80002cc0 <_Z11buddy_allocP14buddyAllocatorm+0x148>
        if(buddy->bucket[i].first != nullptr)
    80002c24:	00248793          	addi	a5,s1,2
    80002c28:	00479793          	slli	a5,a5,0x4
    80002c2c:	00f907b3          	add	a5,s2,a5
    80002c30:	0007b983          	ld	s3,0(a5) # 1000 <_entry-0x7ffff000>
    80002c34:	00099663          	bnez	s3,80002c40 <_Z11buddy_allocP14buddyAllocatorm+0xc8>
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002c38:	00148493          	addi	s1,s1,1
    80002c3c:	fe1ff06f          	j	80002c1c <_Z11buddy_allocP14buddyAllocatorm+0xa4>
            KConsole::trapPrintString("Found the block:");
    80002c40:	00006517          	auipc	a0,0x6
    80002c44:	65050513          	addi	a0,a0,1616 # 80009290 <CONSOLE_STATUS+0x280>
    80002c48:	00001097          	auipc	ra,0x1
    80002c4c:	a4c080e7          	jalr	-1460(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
            KConsole::trapPrintInt((size_t)ret, 16); KConsole::trapPrintString("\n");
    80002c50:	00000613          	li	a2,0
    80002c54:	01000593          	li	a1,16
    80002c58:	00098513          	mv	a0,s3
    80002c5c:	00001097          	auipc	ra,0x1
    80002c60:	a7c080e7          	jalr	-1412(ra) # 800036d8 <_ZN8KConsole12trapPrintIntEmii>
    80002c64:	00007517          	auipc	a0,0x7
    80002c68:	afc50513          	addi	a0,a0,-1284 # 80009760 <CONSOLE_STATUS+0x750>
    80002c6c:	00001097          	auipc	ra,0x1
    80002c70:	a28080e7          	jalr	-1496(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
            buddy->bucket[i].first = ret->next;
    80002c74:	0009b703          	ld	a4,0(s3)
    80002c78:	00248793          	addi	a5,s1,2
    80002c7c:	00479793          	slli	a5,a5,0x4
    80002c80:	00f907b3          	add	a5,s2,a5
    80002c84:	00e7b023          	sd	a4,0(a5)
            if(buddy->bucket[i].first == nullptr)
    80002c88:	02070263          	beqz	a4,80002cac <_Z11buddy_allocP14buddyAllocatorm+0x134>
            split(buddy, (void*)ret, level, i, true);
    80002c8c:	00100713          	li	a4,1
    80002c90:	00048693          	mv	a3,s1
    80002c94:	000a0613          	mv	a2,s4
    80002c98:	00098593          	mv	a1,s3
    80002c9c:	00090513          	mv	a0,s2
    80002ca0:	00000097          	auipc	ra,0x0
    80002ca4:	e2c080e7          	jalr	-468(ra) # 80002acc <_Z5splitP14buddyAllocatorPvmmb>
            return ret;
    80002ca8:	01c0006f          	j	80002cc4 <_Z11buddy_allocP14buddyAllocatorm+0x14c>
                buddy->bucket[i].last = nullptr;
    80002cac:	00248793          	addi	a5,s1,2
    80002cb0:	00479793          	slli	a5,a5,0x4
    80002cb4:	00f907b3          	add	a5,s2,a5
    80002cb8:	0007b423          	sd	zero,8(a5)
    80002cbc:	fd1ff06f          	j	80002c8c <_Z11buddy_allocP14buddyAllocatorm+0x114>
    return nullptr;
    80002cc0:	00000993          	li	s3,0
}
    80002cc4:	00098513          	mv	a0,s3
    80002cc8:	02813083          	ld	ra,40(sp)
    80002ccc:	02013403          	ld	s0,32(sp)
    80002cd0:	01813483          	ld	s1,24(sp)
    80002cd4:	01013903          	ld	s2,16(sp)
    80002cd8:	00813983          	ld	s3,8(sp)
    80002cdc:	00013a03          	ld	s4,0(sp)
    80002ce0:	03010113          	addi	sp,sp,48
    80002ce4:	00008067          	ret

0000000080002ce8 <_Z9addBlocksP14buddyAllocatorPvm>:
{
    80002ce8:	fd010113          	addi	sp,sp,-48
    80002cec:	02113423          	sd	ra,40(sp)
    80002cf0:	02813023          	sd	s0,32(sp)
    80002cf4:	00913c23          	sd	s1,24(sp)
    80002cf8:	01213823          	sd	s2,16(sp)
    80002cfc:	01313423          	sd	s3,8(sp)
    80002d00:	03010413          	addi	s0,sp,48
    80002d04:	00050493          	mv	s1,a0
    80002d08:	00058993          	mv	s3,a1
    80002d0c:	00060913          	mv	s2,a2
    if(level == buddy->maxLevel)
    80002d10:	01853783          	ld	a5,24(a0)
    80002d14:	02c78a63          	beq	a5,a2,80002d48 <_Z9addBlocksP14buddyAllocatorPvm+0x60>
    size_t buddyBlockAddr = getBuddyBlockAddr(buddy,addr,level);
    80002d18:	00000097          	auipc	ra,0x0
    80002d1c:	d78080e7          	jalr	-648(ra) # 80002a90 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>
    buddyBlock* curr = buddy->bucket[level].first;
    80002d20:	00290793          	addi	a5,s2,2
    80002d24:	00479793          	slli	a5,a5,0x4
    80002d28:	00f487b3          	add	a5,s1,a5
    80002d2c:	0007b783          	ld	a5,0(a5)
    buddyBlock* prev = nullptr;
    80002d30:	00000713          	li	a4,0
    while(curr != nullptr)
    80002d34:	0a078e63          	beqz	a5,80002df0 <_Z9addBlocksP14buddyAllocatorPvm+0x108>
        if((size_t)curr == buddyBlockAddr)
    80002d38:	00a78e63          	beq	a5,a0,80002d54 <_Z9addBlocksP14buddyAllocatorPvm+0x6c>
        prev = curr;
    80002d3c:	00078713          	mv	a4,a5
        curr = curr->next;
    80002d40:	0007b783          	ld	a5,0(a5)
    while(curr != nullptr)
    80002d44:	ff1ff06f          	j	80002d34 <_Z9addBlocksP14buddyAllocatorPvm+0x4c>
        addBlockToLevel(buddy, addr, level);
    80002d48:	00000097          	auipc	ra,0x0
    80002d4c:	ce8080e7          	jalr	-792(ra) # 80002a30 <_Z15addBlockToLevelP14buddyAllocatorPvm>
        return;
    80002d50:	0b40006f          	j	80002e04 <_Z9addBlocksP14buddyAllocatorPvm+0x11c>
            if(prev != nullptr)
    80002d54:	04070863          	beqz	a4,80002da4 <_Z9addBlocksP14buddyAllocatorPvm+0xbc>
                prev->next = curr->next;
    80002d58:	0007b683          	ld	a3,0(a5)
    80002d5c:	00d73023          	sd	a3,0(a4)
                if(curr == buddy->bucket[level].last)
    80002d60:	00290693          	addi	a3,s2,2
    80002d64:	00469693          	slli	a3,a3,0x4
    80002d68:	00d486b3          	add	a3,s1,a3
    80002d6c:	0086b683          	ld	a3,8(a3)
    80002d70:	02f68063          	beq	a3,a5,80002d90 <_Z9addBlocksP14buddyAllocatorPvm+0xa8>
            if((size_t)addr < buddyBlockAddr) addBlocks(buddy, addr, level + 1); //merge two chunks
    80002d74:	06a9f263          	bgeu	s3,a0,80002dd8 <_Z9addBlocksP14buddyAllocatorPvm+0xf0>
    80002d78:	00190613          	addi	a2,s2,1
    80002d7c:	00098593          	mv	a1,s3
    80002d80:	00048513          	mv	a0,s1
    80002d84:	00000097          	auipc	ra,0x0
    80002d88:	f64080e7          	jalr	-156(ra) # 80002ce8 <_Z9addBlocksP14buddyAllocatorPvm>
    80002d8c:	0780006f          	j	80002e04 <_Z9addBlocksP14buddyAllocatorPvm+0x11c>
                    buddy->bucket[level].last = prev;
    80002d90:	00290793          	addi	a5,s2,2
    80002d94:	00479793          	slli	a5,a5,0x4
    80002d98:	00f487b3          	add	a5,s1,a5
    80002d9c:	00e7b423          	sd	a4,8(a5)
    80002da0:	fd5ff06f          	j	80002d74 <_Z9addBlocksP14buddyAllocatorPvm+0x8c>
                if(curr->next == nullptr)
    80002da4:	0007b703          	ld	a4,0(a5)
    80002da8:	00070c63          	beqz	a4,80002dc0 <_Z9addBlocksP14buddyAllocatorPvm+0xd8>
                    buddy->bucket[level].first = curr->next;
    80002dac:	00290793          	addi	a5,s2,2
    80002db0:	00479793          	slli	a5,a5,0x4
    80002db4:	00f487b3          	add	a5,s1,a5
    80002db8:	00e7b023          	sd	a4,0(a5)
    80002dbc:	fb9ff06f          	j	80002d74 <_Z9addBlocksP14buddyAllocatorPvm+0x8c>
                    buddy->bucket[level].first = buddy->bucket[level].last = nullptr;
    80002dc0:	00290793          	addi	a5,s2,2
    80002dc4:	00479793          	slli	a5,a5,0x4
    80002dc8:	00f487b3          	add	a5,s1,a5
    80002dcc:	0007b423          	sd	zero,8(a5)
    80002dd0:	0007b023          	sd	zero,0(a5)
    80002dd4:	fa1ff06f          	j	80002d74 <_Z9addBlocksP14buddyAllocatorPvm+0x8c>
            else addBlocks(buddy, (void*)buddyBlockAddr, level + 1); //merge two chunks
    80002dd8:	00190613          	addi	a2,s2,1
    80002ddc:	00050593          	mv	a1,a0
    80002de0:	00048513          	mv	a0,s1
    80002de4:	00000097          	auipc	ra,0x0
    80002de8:	f04080e7          	jalr	-252(ra) # 80002ce8 <_Z9addBlocksP14buddyAllocatorPvm>
            return;
    80002dec:	0180006f          	j	80002e04 <_Z9addBlocksP14buddyAllocatorPvm+0x11c>
    addBlockToLevel(buddy, addr, level);
    80002df0:	00090613          	mv	a2,s2
    80002df4:	00098593          	mv	a1,s3
    80002df8:	00048513          	mv	a0,s1
    80002dfc:	00000097          	auipc	ra,0x0
    80002e00:	c34080e7          	jalr	-972(ra) # 80002a30 <_Z15addBlockToLevelP14buddyAllocatorPvm>
}
    80002e04:	02813083          	ld	ra,40(sp)
    80002e08:	02013403          	ld	s0,32(sp)
    80002e0c:	01813483          	ld	s1,24(sp)
    80002e10:	01013903          	ld	s2,16(sp)
    80002e14:	00813983          	ld	s3,8(sp)
    80002e18:	03010113          	addi	sp,sp,48
    80002e1c:	00008067          	ret

0000000080002e20 <_Z10buddy_initPvm>:
{
    80002e20:	fd010113          	addi	sp,sp,-48
    80002e24:	02113423          	sd	ra,40(sp)
    80002e28:	02813023          	sd	s0,32(sp)
    80002e2c:	00913c23          	sd	s1,24(sp)
    80002e30:	01213823          	sd	s2,16(sp)
    80002e34:	01313423          	sd	s3,8(sp)
    80002e38:	01413023          	sd	s4,0(sp)
    80002e3c:	03010413          	addi	s0,sp,48
    80002e40:	00050913          	mv	s2,a0
    80002e44:	00058993          	mv	s3,a1
    KConsole::trapPrintString("Buddy initialization\n");
    80002e48:	00006517          	auipc	a0,0x6
    80002e4c:	46050513          	addi	a0,a0,1120 # 800092a8 <CONSOLE_STATUS+0x298>
    80002e50:	00001097          	auipc	ra,0x1
    80002e54:	844080e7          	jalr	-1980(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    size_t blockAddr = getBlockAddr((size_t)addr); //alling the address
    80002e58:	00090493          	mv	s1,s2
    80002e5c:	00090513          	mv	a0,s2
    80002e60:	00000097          	auipc	ra,0x0
    80002e64:	b18080e7          	jalr	-1256(ra) # 80002978 <_Z12getBlockAddrm>
    80002e68:	00050a13          	mv	s4,a0
    KConsole::trapPrintInt(blockAddr,16); KConsole::trapPrintString("\n");
    80002e6c:	00000613          	li	a2,0
    80002e70:	01000593          	li	a1,16
    80002e74:	00001097          	auipc	ra,0x1
    80002e78:	864080e7          	jalr	-1948(ra) # 800036d8 <_ZN8KConsole12trapPrintIntEmii>
    80002e7c:	00007517          	auipc	a0,0x7
    80002e80:	8e450513          	addi	a0,a0,-1820 # 80009760 <CONSOLE_STATUS+0x750>
    80002e84:	00001097          	auipc	ra,0x1
    80002e88:	810080e7          	jalr	-2032(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(buddyAddr,16); KConsole::trapPrintString("\n");
    80002e8c:	00000613          	li	a2,0
    80002e90:	01000593          	li	a1,16
    80002e94:	00090513          	mv	a0,s2
    80002e98:	00001097          	auipc	ra,0x1
    80002e9c:	840080e7          	jalr	-1984(ra) # 800036d8 <_ZN8KConsole12trapPrintIntEmii>
    80002ea0:	00007517          	auipc	a0,0x7
    80002ea4:	8c050513          	addi	a0,a0,-1856 # 80009760 <CONSOLE_STATUS+0x750>
    80002ea8:	00000097          	auipc	ra,0x0
    80002eac:	7ec080e7          	jalr	2028(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    if((size_t)addr != blockAddr) // if start address not aligned
    80002eb0:	01490c63          	beq	s2,s4,80002ec8 <_Z10buddy_initPvm+0xa8>
        buddyAddr = getNextBlockAddr(blockAddr);
    80002eb4:	000a0513          	mv	a0,s4
    80002eb8:	00000097          	auipc	ra,0x0
    80002ebc:	ae0080e7          	jalr	-1312(ra) # 80002998 <_Z16getNextBlockAddrm>
    80002ec0:	00050493          	mv	s1,a0
        numOfBlocks--; //have to discard one block
    80002ec4:	fff98993          	addi	s3,s3,-1
    KConsole::trapPrintString("Buddy metadata address: ");
    80002ec8:	00006517          	auipc	a0,0x6
    80002ecc:	3f850513          	addi	a0,a0,1016 # 800092c0 <CONSOLE_STATUS+0x2b0>
    80002ed0:	00000097          	auipc	ra,0x0
    80002ed4:	7c4080e7          	jalr	1988(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(buddyAddr,16); KConsole::trapPrintString("\n");
    80002ed8:	00000613          	li	a2,0
    80002edc:	01000593          	li	a1,16
    80002ee0:	00048513          	mv	a0,s1
    80002ee4:	00000097          	auipc	ra,0x0
    80002ee8:	7f4080e7          	jalr	2036(ra) # 800036d8 <_ZN8KConsole12trapPrintIntEmii>
    80002eec:	00007517          	auipc	a0,0x7
    80002ef0:	87450513          	addi	a0,a0,-1932 # 80009760 <CONSOLE_STATUS+0x750>
    80002ef4:	00000097          	auipc	ra,0x0
    80002ef8:	7a0080e7          	jalr	1952(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    numOfBlocks--; // take one block for buddy metadata
    80002efc:	fff98993          	addi	s3,s3,-1
    buddyAllocator* buddy = (buddyAllocator*)buddyAddr;
    80002f00:	00048913          	mv	s2,s1
    buddy->startAddr = (void*)getNextBlockAddr(buddyAddr);
    80002f04:	00048513          	mv	a0,s1
    80002f08:	00000097          	auipc	ra,0x0
    80002f0c:	a90080e7          	jalr	-1392(ra) # 80002998 <_Z16getNextBlockAddrm>
    80002f10:	00a4b423          	sd	a0,8(s1)
    buddy->numOfBlocks = numOfBlocks;
    80002f14:	0134b023          	sd	s3,0(s1)
    buddy->numOfFreeBlocks = numOfBlocks;
    80002f18:	0134b823          	sd	s3,16(s1)
    buddy->maxLevel = getDeg2Floor(numOfBlocks);
    80002f1c:	00098513          	mv	a0,s3
    80002f20:	00000097          	auipc	ra,0x0
    80002f24:	aa8080e7          	jalr	-1368(ra) # 800029c8 <_Z12getDeg2Floorm>
    80002f28:	00a4bc23          	sd	a0,24(s1)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    80002f2c:	00000713          	li	a4,0
    80002f30:	02e56063          	bltu	a0,a4,80002f50 <_Z10buddy_initPvm+0x130>
        buddy->bucket[i].first = buddy->bucket[i].last = nullptr;
    80002f34:	00270793          	addi	a5,a4,2
    80002f38:	00479793          	slli	a5,a5,0x4
    80002f3c:	00f907b3          	add	a5,s2,a5
    80002f40:	0007b423          	sd	zero,8(a5)
    80002f44:	0007b023          	sd	zero,0(a5)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    80002f48:	00170713          	addi	a4,a4,1
    80002f4c:	fe5ff06f          	j	80002f30 <_Z10buddy_initPvm+0x110>
    for(size_t i = 0;i < numOfBlocks;i++)
    80002f50:	00000493          	li	s1,0
    80002f54:	0334f463          	bgeu	s1,s3,80002f7c <_Z10buddy_initPvm+0x15c>
        addBlocks(buddy, (block*)buddy->startAddr + i, 0);
    80002f58:	00893583          	ld	a1,8(s2)
    80002f5c:	00c49793          	slli	a5,s1,0xc
    80002f60:	00000613          	li	a2,0
    80002f64:	00f585b3          	add	a1,a1,a5
    80002f68:	00090513          	mv	a0,s2
    80002f6c:	00000097          	auipc	ra,0x0
    80002f70:	d7c080e7          	jalr	-644(ra) # 80002ce8 <_Z9addBlocksP14buddyAllocatorPvm>
    for(size_t i = 0;i < numOfBlocks;i++)
    80002f74:	00148493          	addi	s1,s1,1
    80002f78:	fddff06f          	j	80002f54 <_Z10buddy_initPvm+0x134>
}
    80002f7c:	00090513          	mv	a0,s2
    80002f80:	02813083          	ld	ra,40(sp)
    80002f84:	02013403          	ld	s0,32(sp)
    80002f88:	01813483          	ld	s1,24(sp)
    80002f8c:	01013903          	ld	s2,16(sp)
    80002f90:	00813983          	ld	s3,8(sp)
    80002f94:	00013a03          	ld	s4,0(sp)
    80002f98:	03010113          	addi	sp,sp,48
    80002f9c:	00008067          	ret

0000000080002fa0 <_Z10buddy_freeP14buddyAllocatorPvm>:
{
    80002fa0:	fd010113          	addi	sp,sp,-48
    80002fa4:	02113423          	sd	ra,40(sp)
    80002fa8:	02813023          	sd	s0,32(sp)
    80002fac:	00913c23          	sd	s1,24(sp)
    80002fb0:	01213823          	sd	s2,16(sp)
    80002fb4:	01313423          	sd	s3,8(sp)
    80002fb8:	03010413          	addi	s0,sp,48
    80002fbc:	00050993          	mv	s3,a0
    80002fc0:	00058493          	mv	s1,a1
    80002fc4:	00060913          	mv	s2,a2
    KConsole::trapPrintString("Buddy free: ");
    80002fc8:	00006517          	auipc	a0,0x6
    80002fcc:	31850513          	addi	a0,a0,792 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80002fd0:	00000097          	auipc	ra,0x0
    80002fd4:	6c4080e7          	jalr	1732(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt((size_t)addr,16); KConsole::trapPrintString(" ");
    80002fd8:	00000613          	li	a2,0
    80002fdc:	01000593          	li	a1,16
    80002fe0:	00048513          	mv	a0,s1
    80002fe4:	00000097          	auipc	ra,0x0
    80002fe8:	6f4080e7          	jalr	1780(ra) # 800036d8 <_ZN8KConsole12trapPrintIntEmii>
    80002fec:	00006517          	auipc	a0,0x6
    80002ff0:	30450513          	addi	a0,a0,772 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80002ff4:	00000097          	auipc	ra,0x0
    80002ff8:	6a0080e7          	jalr	1696(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(numOfBlocks); KConsole::trapPrintString("\n");
    80002ffc:	00000613          	li	a2,0
    80003000:	00a00593          	li	a1,10
    80003004:	00090513          	mv	a0,s2
    80003008:	00000097          	auipc	ra,0x0
    8000300c:	6d0080e7          	jalr	1744(ra) # 800036d8 <_ZN8KConsole12trapPrintIntEmii>
    80003010:	00006517          	auipc	a0,0x6
    80003014:	75050513          	addi	a0,a0,1872 # 80009760 <CONSOLE_STATUS+0x750>
    80003018:	00000097          	auipc	ra,0x0
    8000301c:	67c080e7          	jalr	1660(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    size_t level = getDeg2Ceil(numOfBlocks);
    80003020:	00090513          	mv	a0,s2
    80003024:	00000097          	auipc	ra,0x0
    80003028:	9d8080e7          	jalr	-1576(ra) # 800029fc <_Z11getDeg2Ceilm>
    8000302c:	00050613          	mv	a2,a0
    addBlocks(buddy, addr, level); //adds free blocks
    80003030:	00048593          	mv	a1,s1
    80003034:	00098513          	mv	a0,s3
    80003038:	00000097          	auipc	ra,0x0
    8000303c:	cb0080e7          	jalr	-848(ra) # 80002ce8 <_Z9addBlocksP14buddyAllocatorPvm>
}
    80003040:	02813083          	ld	ra,40(sp)
    80003044:	02013403          	ld	s0,32(sp)
    80003048:	01813483          	ld	s1,24(sp)
    8000304c:	01013903          	ld	s2,16(sp)
    80003050:	00813983          	ld	s3,8(sp)
    80003054:	03010113          	addi	sp,sp,48
    80003058:	00008067          	ret

000000008000305c <_Z14printBuddyInfoP14buddyAllocator>:

void printBuddyInfo(buddyAllocator* buddy)
{
    8000305c:	fd010113          	addi	sp,sp,-48
    80003060:	02113423          	sd	ra,40(sp)
    80003064:	02813023          	sd	s0,32(sp)
    80003068:	00913c23          	sd	s1,24(sp)
    8000306c:	01213823          	sd	s2,16(sp)
    80003070:	01313423          	sd	s3,8(sp)
    80003074:	03010413          	addi	s0,sp,48
    80003078:	00050993          	mv	s3,a0
    KConsole::trapPrintString("Buddy info-------------------------------------------\n");
    8000307c:	00006517          	auipc	a0,0x6
    80003080:	27c50513          	addi	a0,a0,636 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80003084:	00000097          	auipc	ra,0x0
    80003088:	610080e7          	jalr	1552(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Buddy starting address ");
    8000308c:	00006517          	auipc	a0,0x6
    80003090:	2a450513          	addi	a0,a0,676 # 80009330 <CONSOLE_STATUS+0x320>
    80003094:	00000097          	auipc	ra,0x0
    80003098:	600080e7          	jalr	1536(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt((size_t)buddy->startAddr, 16);KConsole::trapPrintString("\n");
    8000309c:	00000613          	li	a2,0
    800030a0:	01000593          	li	a1,16
    800030a4:	0089b503          	ld	a0,8(s3)
    800030a8:	00000097          	auipc	ra,0x0
    800030ac:	630080e7          	jalr	1584(ra) # 800036d8 <_ZN8KConsole12trapPrintIntEmii>
    800030b0:	00006517          	auipc	a0,0x6
    800030b4:	6b050513          	addi	a0,a0,1712 # 80009760 <CONSOLE_STATUS+0x750>
    800030b8:	00000097          	auipc	ra,0x0
    800030bc:	5dc080e7          	jalr	1500(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Buddy number of blocks ");
    800030c0:	00006517          	auipc	a0,0x6
    800030c4:	28850513          	addi	a0,a0,648 # 80009348 <CONSOLE_STATUS+0x338>
    800030c8:	00000097          	auipc	ra,0x0
    800030cc:	5cc080e7          	jalr	1484(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(buddy->numOfBlocks);KConsole::trapPrintString("\n");
    800030d0:	00000613          	li	a2,0
    800030d4:	00a00593          	li	a1,10
    800030d8:	0009b503          	ld	a0,0(s3)
    800030dc:	00000097          	auipc	ra,0x0
    800030e0:	5fc080e7          	jalr	1532(ra) # 800036d8 <_ZN8KConsole12trapPrintIntEmii>
    800030e4:	00006517          	auipc	a0,0x6
    800030e8:	67c50513          	addi	a0,a0,1660 # 80009760 <CONSOLE_STATUS+0x750>
    800030ec:	00000097          	auipc	ra,0x0
    800030f0:	5a8080e7          	jalr	1448(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Buddy number of free blocks ");
    800030f4:	00006517          	auipc	a0,0x6
    800030f8:	26c50513          	addi	a0,a0,620 # 80009360 <CONSOLE_STATUS+0x350>
    800030fc:	00000097          	auipc	ra,0x0
    80003100:	598080e7          	jalr	1432(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(buddy->numOfFreeBlocks); KConsole::trapPrintString("\n");
    80003104:	00000613          	li	a2,0
    80003108:	00a00593          	li	a1,10
    8000310c:	0109b503          	ld	a0,16(s3)
    80003110:	00000097          	auipc	ra,0x0
    80003114:	5c8080e7          	jalr	1480(ra) # 800036d8 <_ZN8KConsole12trapPrintIntEmii>
    80003118:	00006517          	auipc	a0,0x6
    8000311c:	64850513          	addi	a0,a0,1608 # 80009760 <CONSOLE_STATUS+0x750>
    80003120:	00000097          	auipc	ra,0x0
    80003124:	574080e7          	jalr	1396(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    for(int i = buddy->maxLevel;i>=0;i--)
    80003128:	0189a903          	lw	s2,24(s3)
    8000312c:	0080006f          	j	80003134 <_Z14printBuddyInfoP14buddyAllocator+0xd8>
    80003130:	fff9091b          	addiw	s2,s2,-1
    80003134:	08094463          	bltz	s2,800031bc <_Z14printBuddyInfoP14buddyAllocator+0x160>
    {
        KConsole::trapPrintString("Level ");
    80003138:	00006517          	auipc	a0,0x6
    8000313c:	24850513          	addi	a0,a0,584 # 80009380 <CONSOLE_STATUS+0x370>
    80003140:	00000097          	auipc	ra,0x0
    80003144:	554080e7          	jalr	1364(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
        KConsole::trapPrintInt(i);KConsole::trapPrintString("\n");
    80003148:	00000613          	li	a2,0
    8000314c:	00a00593          	li	a1,10
    80003150:	00090513          	mv	a0,s2
    80003154:	00000097          	auipc	ra,0x0
    80003158:	584080e7          	jalr	1412(ra) # 800036d8 <_ZN8KConsole12trapPrintIntEmii>
    8000315c:	00006517          	auipc	a0,0x6
    80003160:	60450513          	addi	a0,a0,1540 # 80009760 <CONSOLE_STATUS+0x750>
    80003164:	00000097          	auipc	ra,0x0
    80003168:	530080e7          	jalr	1328(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
        KConsole::trapPrintString("Free blocks on this level\n");
    8000316c:	00006517          	auipc	a0,0x6
    80003170:	21c50513          	addi	a0,a0,540 # 80009388 <CONSOLE_STATUS+0x378>
    80003174:	00000097          	auipc	ra,0x0
    80003178:	520080e7          	jalr	1312(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
        buddyBlock* curr = buddy->bucket[i].first;
    8000317c:	00290793          	addi	a5,s2,2
    80003180:	00479793          	slli	a5,a5,0x4
    80003184:	00f987b3          	add	a5,s3,a5
    80003188:	0007b483          	ld	s1,0(a5)
        while(curr != 0)
    8000318c:	fa0482e3          	beqz	s1,80003130 <_Z14printBuddyInfoP14buddyAllocator+0xd4>
        {
            KConsole::trapPrintInt((size_t)curr, 16);
    80003190:	00000613          	li	a2,0
    80003194:	01000593          	li	a1,16
    80003198:	00048513          	mv	a0,s1
    8000319c:	00000097          	auipc	ra,0x0
    800031a0:	53c080e7          	jalr	1340(ra) # 800036d8 <_ZN8KConsole12trapPrintIntEmii>
            KConsole::trapPrintString("\n");
    800031a4:	00006517          	auipc	a0,0x6
    800031a8:	5bc50513          	addi	a0,a0,1468 # 80009760 <CONSOLE_STATUS+0x750>
    800031ac:	00000097          	auipc	ra,0x0
    800031b0:	4e8080e7          	jalr	1256(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
            curr = curr->next;
    800031b4:	0004b483          	ld	s1,0(s1)
        while(curr != 0)
    800031b8:	fd5ff06f          	j	8000318c <_Z14printBuddyInfoP14buddyAllocator+0x130>
        }
    }
    KConsole::trapPrintString("End of buddy info-------------------------------------------\n");
    800031bc:	00006517          	auipc	a0,0x6
    800031c0:	1ec50513          	addi	a0,a0,492 # 800093a8 <CONSOLE_STATUS+0x398>
    800031c4:	00000097          	auipc	ra,0x0
    800031c8:	4d0080e7          	jalr	1232(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
    800031cc:	02813083          	ld	ra,40(sp)
    800031d0:	02013403          	ld	s0,32(sp)
    800031d4:	01813483          	ld	s1,24(sp)
    800031d8:	01013903          	ld	s2,16(sp)
    800031dc:	00813983          	ld	s3,8(sp)
    800031e0:	03010113          	addi	sp,sp,48
    800031e4:	00008067          	ret

00000000800031e8 <_ZN8KConsole10initializeEv>:
char KConsole::inputBuffer[bufferSize];
char KConsole::outputBuffer[bufferSize];
uint64 KConsole::pendingPutc = 0;

void KConsole::initialize()
{
    800031e8:	fe010113          	addi	sp,sp,-32
    800031ec:	00113c23          	sd	ra,24(sp)
    800031f0:	00813823          	sd	s0,16(sp)
    800031f4:	00913423          	sd	s1,8(sp)
    800031f8:	01213023          	sd	s2,0(sp)
    800031fc:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80003200:	01800513          	li	a0,24
    80003204:	00002097          	auipc	ra,0x2
    80003208:	dc0080e7          	jalr	-576(ra) # 80004fc4 <_ZN10KSemaphorenwEm>
    8000320c:	00050493          	mv	s1,a0
    80003210:	00000593          	li	a1,0
    80003214:	00002097          	auipc	ra,0x2
    80003218:	b4c080e7          	jalr	-1204(ra) # 80004d60 <_ZN10KSemaphoreC1Ei>
    8000321c:	00008797          	auipc	a5,0x8
    80003220:	7c97ba23          	sd	s1,2004(a5) # 8000b9f0 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80003224:	01800513          	li	a0,24
    80003228:	00002097          	auipc	ra,0x2
    8000322c:	d9c080e7          	jalr	-612(ra) # 80004fc4 <_ZN10KSemaphorenwEm>
    80003230:	00050493          	mv	s1,a0
    80003234:	00000593          	li	a1,0
    80003238:	00002097          	auipc	ra,0x2
    8000323c:	b28080e7          	jalr	-1240(ra) # 80004d60 <_ZN10KSemaphoreC1Ei>
    80003240:	00008797          	auipc	a5,0x8
    80003244:	7a97bc23          	sd	s1,1976(a5) # 8000b9f8 <_ZN8KConsole19hasCharactersOutputE>
}
    80003248:	01813083          	ld	ra,24(sp)
    8000324c:	01013403          	ld	s0,16(sp)
    80003250:	00813483          	ld	s1,8(sp)
    80003254:	00013903          	ld	s2,0(sp)
    80003258:	02010113          	addi	sp,sp,32
    8000325c:	00008067          	ret
    80003260:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80003264:	00048513          	mv	a0,s1
    80003268:	00002097          	auipc	ra,0x2
    8000326c:	dfc080e7          	jalr	-516(ra) # 80005064 <_ZN10KSemaphoredlEPv>
    80003270:	00090513          	mv	a0,s2
    80003274:	0000e097          	auipc	ra,0xe
    80003278:	8d4080e7          	jalr	-1836(ra) # 80010b48 <_Unwind_Resume>
    8000327c:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80003280:	00048513          	mv	a0,s1
    80003284:	00002097          	auipc	ra,0x2
    80003288:	de0080e7          	jalr	-544(ra) # 80005064 <_ZN10KSemaphoredlEPv>
    8000328c:	00090513          	mv	a0,s2
    80003290:	0000e097          	auipc	ra,0xe
    80003294:	8b8080e7          	jalr	-1864(ra) # 80010b48 <_Unwind_Resume>

0000000080003298 <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    80003298:	00008697          	auipc	a3,0x8
    8000329c:	75868693          	addi	a3,a3,1880 # 8000b9f0 <_ZN8KConsole18hasCharactersInputE>
    800032a0:	0106b603          	ld	a2,16(a3)
    800032a4:	00160793          	addi	a5,a2,1
    800032a8:	00002737          	lui	a4,0x2
    800032ac:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    800032b0:	00e7f7b3          	and	a5,a5,a4
    800032b4:	0186b703          	ld	a4,24(a3)
    800032b8:	04e78263          	beq	a5,a4,800032fc <_ZN8KConsole17putCharacterInputEc+0x64>
{
    800032bc:	ff010113          	addi	sp,sp,-16
    800032c0:	00113423          	sd	ra,8(sp)
    800032c4:	00813023          	sd	s0,0(sp)
    800032c8:	01010413          	addi	s0,sp,16
        return;
    inputBuffer[inputTail] = c;
    800032cc:	0000a717          	auipc	a4,0xa
    800032d0:	76470713          	addi	a4,a4,1892 # 8000da30 <_ZN8KConsole11inputBufferE>
    800032d4:	00c70633          	add	a2,a4,a2
    800032d8:	00a60023          	sb	a0,0(a2)
    inputTail = (inputTail+1)%bufferSize;
    800032dc:	00f6b823          	sd	a5,16(a3)
    hasCharactersInput->signal();
    800032e0:	0006b503          	ld	a0,0(a3)
    800032e4:	00002097          	auipc	ra,0x2
    800032e8:	c98080e7          	jalr	-872(ra) # 80004f7c <_ZN10KSemaphore6signalEv>
}
    800032ec:	00813083          	ld	ra,8(sp)
    800032f0:	00013403          	ld	s0,0(sp)
    800032f4:	01010113          	addi	sp,sp,16
    800032f8:	00008067          	ret
    800032fc:	00008067          	ret

0000000080003300 <_ZN8KConsole24getCharactersFromConsoleEv>:
    uint64 operation = *(uint8*)CONSOLE_STATUS;
    80003300:	00008797          	auipc	a5,0x8
    80003304:	6087b783          	ld	a5,1544(a5) # 8000b908 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003308:	0007b783          	ld	a5,0(a5)
    8000330c:	0007c783          	lbu	a5,0(a5)
    if(operation & KConsole::STATUS_READ_MASK)
    80003310:	0017f793          	andi	a5,a5,1
    80003314:	02078063          	beqz	a5,80003334 <_ZN8KConsole24getCharactersFromConsoleEv+0x34>
        char c = *(uint8*)CONSOLE_TX_DATA;
    80003318:	00008797          	auipc	a5,0x8
    8000331c:	6107b783          	ld	a5,1552(a5) # 8000b928 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003320:	0007b783          	ld	a5,0(a5)
    80003324:	0007c503          	lbu	a0,0(a5)
        if(KConsole::pendingGetc > 0)
    80003328:	00008797          	auipc	a5,0x8
    8000332c:	6e87b783          	ld	a5,1768(a5) # 8000ba10 <_ZN8KConsole11pendingGetcE>
    80003330:	00079463          	bnez	a5,80003338 <_ZN8KConsole24getCharactersFromConsoleEv+0x38>
    80003334:	00008067          	ret
{
    80003338:	ff010113          	addi	sp,sp,-16
    8000333c:	00113423          	sd	ra,8(sp)
    80003340:	00813023          	sd	s0,0(sp)
    80003344:	01010413          	addi	s0,sp,16
            KConsole::pendingGetc--;
    80003348:	fff78793          	addi	a5,a5,-1
    8000334c:	00008717          	auipc	a4,0x8
    80003350:	6cf73223          	sd	a5,1732(a4) # 8000ba10 <_ZN8KConsole11pendingGetcE>
            KConsole::putCharacterInput(c);
    80003354:	00000097          	auipc	ra,0x0
    80003358:	f44080e7          	jalr	-188(ra) # 80003298 <_ZN8KConsole17putCharacterInputEc>
}
    8000335c:	00813083          	ld	ra,8(sp)
    80003360:	00013403          	ld	s0,0(sp)
    80003364:	01010113          	addi	sp,sp,16
    80003368:	00008067          	ret

000000008000336c <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    8000336c:	fe010113          	addi	sp,sp,-32
    80003370:	00113c23          	sd	ra,24(sp)
    80003374:	00813823          	sd	s0,16(sp)
    80003378:	00913423          	sd	s1,8(sp)
    8000337c:	02010413          	addi	s0,sp,32
    hasCharactersInput->wait();
    80003380:	00008497          	auipc	s1,0x8
    80003384:	67048493          	addi	s1,s1,1648 # 8000b9f0 <_ZN8KConsole18hasCharactersInputE>
    80003388:	0004b503          	ld	a0,0(s1)
    8000338c:	00002097          	auipc	ra,0x2
    80003390:	a78080e7          	jalr	-1416(ra) # 80004e04 <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    80003394:	0184b783          	ld	a5,24(s1)
    80003398:	0104b703          	ld	a4,16(s1)
    8000339c:	04e78063          	beq	a5,a4,800033dc <_ZN8KConsole17getCharacterInputEv+0x70>
        return -1;
    char c = inputBuffer[inputHead];
    800033a0:	0000a717          	auipc	a4,0xa
    800033a4:	69070713          	addi	a4,a4,1680 # 8000da30 <_ZN8KConsole11inputBufferE>
    800033a8:	00f70733          	add	a4,a4,a5
    800033ac:	00074503          	lbu	a0,0(a4)
    inputHead = (inputHead+1)%bufferSize;
    800033b0:	00178793          	addi	a5,a5,1
    800033b4:	00002737          	lui	a4,0x2
    800033b8:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    800033bc:	00e7f7b3          	and	a5,a5,a4
    800033c0:	00008717          	auipc	a4,0x8
    800033c4:	64f73423          	sd	a5,1608(a4) # 8000ba08 <_ZN8KConsole9inputHeadE>
    return c;
}
    800033c8:	01813083          	ld	ra,24(sp)
    800033cc:	01013403          	ld	s0,16(sp)
    800033d0:	00813483          	ld	s1,8(sp)
    800033d4:	02010113          	addi	sp,sp,32
    800033d8:	00008067          	ret
        return -1;
    800033dc:	0ff00513          	li	a0,255
    800033e0:	fe9ff06f          	j	800033c8 <_ZN8KConsole17getCharacterInputEv+0x5c>

00000000800033e4 <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    if((outputTail+1)%bufferSize == outputHead)
    800033e4:	00008697          	auipc	a3,0x8
    800033e8:	60c68693          	addi	a3,a3,1548 # 8000b9f0 <_ZN8KConsole18hasCharactersInputE>
    800033ec:	0286b603          	ld	a2,40(a3)
    800033f0:	00160793          	addi	a5,a2,1
    800033f4:	00002737          	lui	a4,0x2
    800033f8:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    800033fc:	00e7f7b3          	and	a5,a5,a4
    80003400:	0306b703          	ld	a4,48(a3)
    80003404:	04e78a63          	beq	a5,a4,80003458 <_ZN8KConsole18putCharacterOutputEc+0x74>
{
    80003408:	ff010113          	addi	sp,sp,-16
    8000340c:	00113423          	sd	ra,8(sp)
    80003410:	00813023          	sd	s0,0(sp)
    80003414:	01010413          	addi	s0,sp,16
        return;
    pendingPutc++;
    80003418:	00068713          	mv	a4,a3
    8000341c:	0386b683          	ld	a3,56(a3)
    80003420:	00168693          	addi	a3,a3,1
    80003424:	02d73c23          	sd	a3,56(a4)
    outputBuffer[outputTail] = c;
    80003428:	00008697          	auipc	a3,0x8
    8000342c:	60868693          	addi	a3,a3,1544 # 8000ba30 <_ZN8KConsole12outputBufferE>
    80003430:	00c68633          	add	a2,a3,a2
    80003434:	00a60023          	sb	a0,0(a2)
    outputTail = (outputTail+1)%bufferSize;
    80003438:	02f73423          	sd	a5,40(a4)
    hasCharactersOutput->signal();
    8000343c:	00873503          	ld	a0,8(a4)
    80003440:	00002097          	auipc	ra,0x2
    80003444:	b3c080e7          	jalr	-1220(ra) # 80004f7c <_ZN10KSemaphore6signalEv>
}
    80003448:	00813083          	ld	ra,8(sp)
    8000344c:	00013403          	ld	s0,0(sp)
    80003450:	01010113          	addi	sp,sp,16
    80003454:	00008067          	ret
    80003458:	00008067          	ret

000000008000345c <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    8000345c:	fe010113          	addi	sp,sp,-32
    80003460:	00113c23          	sd	ra,24(sp)
    80003464:	00813823          	sd	s0,16(sp)
    80003468:	00913423          	sd	s1,8(sp)
    8000346c:	02010413          	addi	s0,sp,32
    hasCharactersOutput->wait();
    80003470:	00008497          	auipc	s1,0x8
    80003474:	58048493          	addi	s1,s1,1408 # 8000b9f0 <_ZN8KConsole18hasCharactersInputE>
    80003478:	0084b503          	ld	a0,8(s1)
    8000347c:	00002097          	auipc	ra,0x2
    80003480:	988080e7          	jalr	-1656(ra) # 80004e04 <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    80003484:	0304b783          	ld	a5,48(s1)
    80003488:	0284b703          	ld	a4,40(s1)
    8000348c:	04e78063          	beq	a5,a4,800034cc <_ZN8KConsole18getCharacterOutputEv+0x70>
        return -1;
    char c = outputBuffer[outputHead];
    80003490:	00008717          	auipc	a4,0x8
    80003494:	5a070713          	addi	a4,a4,1440 # 8000ba30 <_ZN8KConsole12outputBufferE>
    80003498:	00f70733          	add	a4,a4,a5
    8000349c:	00074503          	lbu	a0,0(a4)
    outputHead = (outputHead+1)%bufferSize;
    800034a0:	00178793          	addi	a5,a5,1
    800034a4:	00002737          	lui	a4,0x2
    800034a8:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    800034ac:	00e7f7b3          	and	a5,a5,a4
    800034b0:	00008717          	auipc	a4,0x8
    800034b4:	56f73823          	sd	a5,1392(a4) # 8000ba20 <_ZN8KConsole10outputHeadE>
    return c;
}
    800034b8:	01813083          	ld	ra,24(sp)
    800034bc:	01013403          	ld	s0,16(sp)
    800034c0:	00813483          	ld	s1,8(sp)
    800034c4:	02010113          	addi	sp,sp,32
    800034c8:	00008067          	ret
        return -1;
    800034cc:	0ff00513          	li	a0,255
    800034d0:	fe9ff06f          	j	800034b8 <_ZN8KConsole18getCharacterOutputEv+0x5c>

00000000800034d4 <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    800034d4:	ff010113          	addi	sp,sp,-16
    800034d8:	00113423          	sd	ra,8(sp)
    800034dc:	00813023          	sd	s0,0(sp)
    800034e0:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    800034e4:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    800034e8:	0ff57513          	andi	a0,a0,255
    800034ec:	00000097          	auipc	ra,0x0
    800034f0:	ef8080e7          	jalr	-264(ra) # 800033e4 <_ZN8KConsole18putCharacterOutputEc>
}
    800034f4:	00813083          	ld	ra,8(sp)
    800034f8:	00013403          	ld	s0,0(sp)
    800034fc:	01010113          	addi	sp,sp,16
    80003500:	00008067          	ret

0000000080003504 <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    80003504:	fe010113          	addi	sp,sp,-32
    80003508:	00113c23          	sd	ra,24(sp)
    8000350c:	00813823          	sd	s0,16(sp)
    80003510:	00913423          	sd	s1,8(sp)
    80003514:	02010413          	addi	s0,sp,32
    pendingGetc++;
    80003518:	00008717          	auipc	a4,0x8
    8000351c:	4d870713          	addi	a4,a4,1240 # 8000b9f0 <_ZN8KConsole18hasCharactersInputE>
    80003520:	02073783          	ld	a5,32(a4)
    80003524:	00178793          	addi	a5,a5,1
    80003528:	02f73023          	sd	a5,32(a4)
    char ch;
    ch = getCharacterInput();
    8000352c:	00000097          	auipc	ra,0x0
    80003530:	e40080e7          	jalr	-448(ra) # 8000336c <_ZN8KConsole17getCharacterInputEv>
    80003534:	00050493          	mv	s1,a0
    if(ch!=0x01b)
    80003538:	01b00793          	li	a5,27
    8000353c:	02f51663          	bne	a0,a5,80003568 <_ZN8KConsole11getcHandlerEv+0x64>
        putCharacterOutput(ch);

    if(ch==13)
    80003540:	00d00793          	li	a5,13
    80003544:	02f48863          	beq	s1,a5,80003574 <_ZN8KConsole11getcHandlerEv+0x70>
    {
        putCharacterOutput(13);
        putCharacterOutput(10);
    }

    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80003548:	00048513          	mv	a0,s1
    Riscv::w_a0_sscratch();
    8000354c:	00001097          	auipc	ra,0x1
    80003550:	e5c080e7          	jalr	-420(ra) # 800043a8 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003554:	01813083          	ld	ra,24(sp)
    80003558:	01013403          	ld	s0,16(sp)
    8000355c:	00813483          	ld	s1,8(sp)
    80003560:	02010113          	addi	sp,sp,32
    80003564:	00008067          	ret
        putCharacterOutput(ch);
    80003568:	00000097          	auipc	ra,0x0
    8000356c:	e7c080e7          	jalr	-388(ra) # 800033e4 <_ZN8KConsole18putCharacterOutputEc>
    80003570:	fd1ff06f          	j	80003540 <_ZN8KConsole11getcHandlerEv+0x3c>
        putCharacterOutput(13);
    80003574:	00d00513          	li	a0,13
    80003578:	00000097          	auipc	ra,0x0
    8000357c:	e6c080e7          	jalr	-404(ra) # 800033e4 <_ZN8KConsole18putCharacterOutputEc>
        putCharacterOutput(10);
    80003580:	00a00513          	li	a0,10
    80003584:	00000097          	auipc	ra,0x0
    80003588:	e60080e7          	jalr	-416(ra) # 800033e4 <_ZN8KConsole18putCharacterOutputEc>
    8000358c:	fbdff06f          	j	80003548 <_ZN8KConsole11getcHandlerEv+0x44>

0000000080003590 <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty()
{
    80003590:	ff010113          	addi	sp,sp,-16
    80003594:	00813423          	sd	s0,8(sp)
    80003598:	01010413          	addi	s0,sp,16
    return pendingPutc == 0;
}
    8000359c:	00008517          	auipc	a0,0x8
    800035a0:	48c53503          	ld	a0,1164(a0) # 8000ba28 <_ZN8KConsole11pendingPutcE>
    800035a4:	00153513          	seqz	a0,a0
    800035a8:	00813403          	ld	s0,8(sp)
    800035ac:	01010113          	addi	sp,sp,16
    800035b0:	00008067          	ret

00000000800035b4 <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    800035b4:	fe010113          	addi	sp,sp,-32
    800035b8:	00113c23          	sd	ra,24(sp)
    800035bc:	00813823          	sd	s0,16(sp)
    800035c0:	02010413          	addi	s0,sp,32
    800035c4:	0180006f          	j	800035dc <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>
                thread_exit();
    800035c8:	fffff097          	auipc	ra,0xfffff
    800035cc:	b70080e7          	jalr	-1168(ra) # 80002138 <_Z11thread_exitv>
    800035d0:	0340006f          	j	80003604 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
                thread_dispatch();
    800035d4:	fffff097          	auipc	ra,0xfffff
    800035d8:	b44080e7          	jalr	-1212(ra) # 80002118 <_Z15thread_dispatchv>
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
    800035dc:	00008797          	auipc	a5,0x8
    800035e0:	37c7b783          	ld	a5,892(a5) # 8000b958 <_GLOBAL_OFFSET_TABLE_+0x60>
    800035e4:	0007c783          	lbu	a5,0(a5)
    800035e8:	00078e63          	beqz	a5,80003604 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    800035ec:	00000097          	auipc	ra,0x0
    800035f0:	fa4080e7          	jalr	-92(ra) # 80003590 <_ZN8KConsole17outputBufferEmptyEv>
    800035f4:	00050863          	beqz	a0,80003604 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    800035f8:	00008797          	auipc	a5,0x8
    800035fc:	4187b783          	ld	a5,1048(a5) # 8000ba10 <_ZN8KConsole11pendingGetcE>
    80003600:	fc0784e3          	beqz	a5,800035c8 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
            uint64 operation = *(uint8*)CONSOLE_STATUS;
    80003604:	00008797          	auipc	a5,0x8
    80003608:	3047b783          	ld	a5,772(a5) # 8000b908 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000360c:	0007b783          	ld	a5,0(a5)
    80003610:	0007c783          	lbu	a5,0(a5)
            if ((operation & STATUS_WRITE_MASK) && pendingPutc > 0)
    80003614:	0207f793          	andi	a5,a5,32
    80003618:	fa078ee3          	beqz	a5,800035d4 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
    8000361c:	00008797          	auipc	a5,0x8
    80003620:	40c7b783          	ld	a5,1036(a5) # 8000ba28 <_ZN8KConsole11pendingPutcE>
    80003624:	fa0788e3          	beqz	a5,800035d4 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
                char volatile c = sysCallGetCharOutput();
    80003628:	fffff097          	auipc	ra,0xfffff
    8000362c:	d18080e7          	jalr	-744(ra) # 80002340 <_Z20sysCallGetCharOutputv>
    80003630:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    80003634:	00008717          	auipc	a4,0x8
    80003638:	3bc70713          	addi	a4,a4,956 # 8000b9f0 <_ZN8KConsole18hasCharactersInputE>
    8000363c:	03873783          	ld	a5,56(a4)
    80003640:	fff78793          	addi	a5,a5,-1
    80003644:	02f73c23          	sd	a5,56(a4)
                *(uint8*)CONSOLE_RX_DATA = c;
    80003648:	00008797          	auipc	a5,0x8
    8000364c:	2b87b783          	ld	a5,696(a5) # 8000b900 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003650:	0007b783          	ld	a5,0(a5)
    80003654:	fef44703          	lbu	a4,-17(s0)
    80003658:	00e78023          	sb	a4,0(a5)
    8000365c:	f81ff06f          	j	800035dc <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>

0000000080003660 <_ZN8KConsole14getCharHandlerEv>:

void KConsole::getCharHandler()
{
    80003660:	ff010113          	addi	sp,sp,-16
    80003664:	00113423          	sd	ra,8(sp)
    80003668:	00813023          	sd	s0,0(sp)
    8000366c:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterOutput();
    80003670:	00000097          	auipc	ra,0x0
    80003674:	dec080e7          	jalr	-532(ra) # 8000345c <_ZN8KConsole18getCharacterOutputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80003678:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    8000367c:	00001097          	auipc	ra,0x1
    80003680:	d2c080e7          	jalr	-724(ra) # 800043a8 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003684:	00813083          	ld	ra,8(sp)
    80003688:	00013403          	ld	s0,0(sp)
    8000368c:	01010113          	addi	sp,sp,16
    80003690:	00008067          	ret

0000000080003694 <_ZN8KConsole15trapPrintStringEPKc>:

void KConsole::trapPrintString(const char *string)
{
    80003694:	fe010113          	addi	sp,sp,-32
    80003698:	00113c23          	sd	ra,24(sp)
    8000369c:	00813823          	sd	s0,16(sp)
    800036a0:	00913423          	sd	s1,8(sp)
    800036a4:	02010413          	addi	s0,sp,32
    800036a8:	00050493          	mv	s1,a0
    while (*string != '\0')
    800036ac:	0004c503          	lbu	a0,0(s1)
    800036b0:	00050a63          	beqz	a0,800036c4 <_ZN8KConsole15trapPrintStringEPKc+0x30>
    {
        KConsole::putCharacterOutput(*string);
    800036b4:	00000097          	auipc	ra,0x0
    800036b8:	d30080e7          	jalr	-720(ra) # 800033e4 <_ZN8KConsole18putCharacterOutputEc>
        string++;
    800036bc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800036c0:	fedff06f          	j	800036ac <_ZN8KConsole15trapPrintStringEPKc+0x18>
    }
}
    800036c4:	01813083          	ld	ra,24(sp)
    800036c8:	01013403          	ld	s0,16(sp)
    800036cc:	00813483          	ld	s1,8(sp)
    800036d0:	02010113          	addi	sp,sp,32
    800036d4:	00008067          	ret

00000000800036d8 <_ZN8KConsole12trapPrintIntEmii>:

void KConsole::trapPrintInt(size_t xx, int base, int sgn)
{
    800036d8:	fb010113          	addi	sp,sp,-80
    800036dc:	04113423          	sd	ra,72(sp)
    800036e0:	04813023          	sd	s0,64(sp)
    800036e4:	02913c23          	sd	s1,56(sp)
    800036e8:	05010413          	addi	s0,sp,80
    char digits[] = "0123456789ABCDEF";
    800036ec:	00006797          	auipc	a5,0x6
    800036f0:	cfc78793          	addi	a5,a5,-772 # 800093e8 <CONSOLE_STATUS+0x3d8>
    800036f4:	0007b703          	ld	a4,0(a5)
    800036f8:	fce43423          	sd	a4,-56(s0)
    800036fc:	0087b703          	ld	a4,8(a5)
    80003700:	fce43823          	sd	a4,-48(s0)
    80003704:	0107c783          	lbu	a5,16(a5)
    80003708:	fcf40c23          	sb	a5,-40(s0)
        x = -xx;
    } else {
        x = xx;
    }

    i = 0;
    8000370c:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80003710:	02b57733          	remu	a4,a0,a1
    80003714:	fe040693          	addi	a3,s0,-32
    80003718:	00e68733          	add	a4,a3,a4
    8000371c:	fe874703          	lbu	a4,-24(a4)
    80003720:	009687b3          	add	a5,a3,s1
    80003724:	0014849b          	addiw	s1,s1,1
    80003728:	fce78c23          	sb	a4,-40(a5)
    }while((x /= base) != 0);
    8000372c:	00050793          	mv	a5,a0
    80003730:	02b55533          	divu	a0,a0,a1
    80003734:	fcb7fee3          	bgeu	a5,a1,80003710 <_ZN8KConsole12trapPrintIntEmii+0x38>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    80003738:	fff4849b          	addiw	s1,s1,-1
    8000373c:	0004ce63          	bltz	s1,80003758 <_ZN8KConsole12trapPrintIntEmii+0x80>
        KConsole::putCharacterOutput(buf[i]);
    80003740:	fe040793          	addi	a5,s0,-32
    80003744:	009787b3          	add	a5,a5,s1
    80003748:	fd87c503          	lbu	a0,-40(a5)
    8000374c:	00000097          	auipc	ra,0x0
    80003750:	c98080e7          	jalr	-872(ra) # 800033e4 <_ZN8KConsole18putCharacterOutputEc>
    80003754:	fe5ff06f          	j	80003738 <_ZN8KConsole12trapPrintIntEmii+0x60>
}
    80003758:	04813083          	ld	ra,72(sp)
    8000375c:	04013403          	ld	s0,64(sp)
    80003760:	03813483          	ld	s1,56(sp)
    80003764:	05010113          	addi	sp,sp,80
    80003768:	00008067          	ret

000000008000376c <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/Riscv.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    8000376c:	ff010113          	addi	sp,sp,-16
    80003770:	00813423          	sd	s0,8(sp)
    80003774:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    80003778:	00008797          	auipc	a5,0x8
    8000377c:	1e87b783          	ld	a5,488(a5) # 8000b960 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003780:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    80003784:	00500793          	li	a5,5
    80003788:	04f62023          	sw	a5,64(a2)
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    8000378c:	0000c797          	auipc	a5,0xc
    80003790:	2a47b783          	ld	a5,676(a5) # 8000fa30 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80003794:	00000593          	li	a1,0
    while(curr != 0)
    80003798:	02078063          	beqz	a5,800037b8 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    8000379c:	02063683          	ld	a3,32(a2)
    800037a0:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    800037a4:	00e6e863          	bltu	a3,a4,800037b4 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    800037a8:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    800037ac:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800037b0:	fe9ff06f          	j	80003798 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    800037b4:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    800037b8:	00058a63          	beqz	a1,800037cc <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    800037bc:	00c5b423          	sd	a2,8(a1)
}
    800037c0:	00813403          	ld	s0,8(sp)
    800037c4:	01010113          	addi	sp,sp,16
    800037c8:	00008067          	ret
        sleepingPCBHead = PCB::running;
    800037cc:	0000c797          	auipc	a5,0xc
    800037d0:	26c7b223          	sd	a2,612(a5) # 8000fa30 <_ZN12SleepPCBList15sleepingPCBHeadE>
    800037d4:	fedff06f          	j	800037c0 <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

00000000800037d8 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    PCB* curr = sleepingPCBHead;
    800037d8:	0000c517          	auipc	a0,0xc
    800037dc:	25853503          	ld	a0,600(a0) # 8000fa30 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    800037e0:	06050e63          	beqz	a0,8000385c <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
        return;

    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800037e4:	06050c63          	beqz	a0,8000385c <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    800037e8:	02053783          	ld	a5,32(a0)
    800037ec:	00008717          	auipc	a4,0x8
    800037f0:	15473703          	ld	a4,340(a4) # 8000b940 <_GLOBAL_OFFSET_TABLE_+0x48>
    800037f4:	00073703          	ld	a4,0(a4)
    800037f8:	06f76263          	bltu	a4,a5,8000385c <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    800037fc:	fe010113          	addi	sp,sp,-32
    80003800:	00113c23          	sd	ra,24(sp)
    80003804:	00813823          	sd	s0,16(sp)
    80003808:	00913423          	sd	s1,8(sp)
    8000380c:	02010413          	addi	s0,sp,32
    80003810:	0180006f          	j	80003828 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80003814:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003818:	00008717          	auipc	a4,0x8
    8000381c:	12873703          	ld	a4,296(a4) # 8000b940 <_GLOBAL_OFFSET_TABLE_+0x48>
    80003820:	00073703          	ld	a4,0(a4)
    80003824:	02f76263          	bltu	a4,a5,80003848 <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    80003828:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    8000382c:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    80003830:	00000097          	auipc	ra,0x0
    80003834:	0b8080e7          	jalr	184(ra) # 800038e8 <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    80003838:	0000c797          	auipc	a5,0xc
    8000383c:	1e97bc23          	sd	s1,504(a5) # 8000fa30 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    80003840:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003844:	fc0498e3          	bnez	s1,80003814 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    80003848:	01813083          	ld	ra,24(sp)
    8000384c:	01013403          	ld	s0,16(sp)
    80003850:	00813483          	ld	s1,8(sp)
    80003854:	02010113          	addi	sp,sp,32
    80003858:	00008067          	ret
    8000385c:	00008067          	ret

0000000080003860 <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    80003860:	ff010113          	addi	sp,sp,-16
    80003864:	00113423          	sd	ra,8(sp)
    80003868:	00813023          	sd	s0,0(sp)
    8000386c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    80003870:	00001097          	auipc	ra,0x1
    80003874:	2a8080e7          	jalr	680(ra) # 80004b18 <_ZN15MemoryAllocator7kmallocEm>
}
    80003878:	00813083          	ld	ra,8(sp)
    8000387c:	00013403          	ld	s0,0(sp)
    80003880:	01010113          	addi	sp,sp,16
    80003884:	00008067          	ret

0000000080003888 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    80003888:	ff010113          	addi	sp,sp,-16
    8000388c:	00113423          	sd	ra,8(sp)
    80003890:	00813023          	sd	s0,0(sp)
    80003894:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80003898:	00001097          	auipc	ra,0x1
    8000389c:	2e4080e7          	jalr	740(ra) # 80004b7c <_ZN15MemoryAllocator5kfreeEPv>
}
    800038a0:	00813083          	ld	ra,8(sp)
    800038a4:	00013403          	ld	s0,0(sp)
    800038a8:	01010113          	addi	sp,sp,16
    800038ac:	00008067          	ret

00000000800038b0 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    800038b0:	ff010113          	addi	sp,sp,-16
    800038b4:	00813423          	sd	s0,8(sp)
    800038b8:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    800038bc:	0000c797          	auipc	a5,0xc
    800038c0:	17c7b783          	ld	a5,380(a5) # 8000fa38 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    800038c4:	00000513          	li	a0,0
    while(curr != 0)
    800038c8:	00078863          	beqz	a5,800038d8 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    800038cc:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    800038d0:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800038d4:	ff5ff06f          	j	800038c8 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    800038d8:	0005051b          	sext.w	a0,a0
    800038dc:	00813403          	ld	s0,8(sp)
    800038e0:	01010113          	addi	sp,sp,16
    800038e4:	00008067          	ret

00000000800038e8 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    800038e8:	ff010113          	addi	sp,sp,-16
    800038ec:	00813423          	sd	s0,8(sp)
    800038f0:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    800038f4:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    800038f8:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    800038fc:	0000c797          	auipc	a5,0xc
    80003900:	13c7b783          	ld	a5,316(a5) # 8000fa38 <_ZN9Scheduler16schedulerPCBHeadE>
    80003904:	02078263          	beqz	a5,80003928 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80003908:	0000c797          	auipc	a5,0xc
    8000390c:	13078793          	addi	a5,a5,304 # 8000fa38 <_ZN9Scheduler16schedulerPCBHeadE>
    80003910:	0087b703          	ld	a4,8(a5)
    80003914:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    80003918:	00a7b423          	sd	a0,8(a5)
    }
}
    8000391c:	00813403          	ld	s0,8(sp)
    80003920:	01010113          	addi	sp,sp,16
    80003924:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    80003928:	0000c797          	auipc	a5,0xc
    8000392c:	11078793          	addi	a5,a5,272 # 8000fa38 <_ZN9Scheduler16schedulerPCBHeadE>
    80003930:	00a7b423          	sd	a0,8(a5)
    80003934:	00a7b023          	sd	a0,0(a5)
    80003938:	fe5ff06f          	j	8000391c <_ZN9Scheduler3putEP3PCB+0x34>

000000008000393c <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    8000393c:	ff010113          	addi	sp,sp,-16
    80003940:	00813423          	sd	s0,8(sp)
    80003944:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    80003948:	0000c517          	auipc	a0,0xc
    8000394c:	0f053503          	ld	a0,240(a0) # 8000fa38 <_ZN9Scheduler16schedulerPCBHeadE>
    80003950:	00050c63          	beqz	a0,80003968 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80003954:	00853783          	ld	a5,8(a0)
    80003958:	00078e63          	beqz	a5,80003974 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    8000395c:	0000c717          	auipc	a4,0xc
    80003960:	0cf73e23          	sd	a5,220(a4) # 8000fa38 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80003964:	00053423          	sd	zero,8(a0)
    return retval;
}
    80003968:	00813403          	ld	s0,8(sp)
    8000396c:	01010113          	addi	sp,sp,16
    80003970:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80003974:	0000c797          	auipc	a5,0xc
    80003978:	0c478793          	addi	a5,a5,196 # 8000fa38 <_ZN9Scheduler16schedulerPCBHeadE>
    8000397c:	0007b423          	sd	zero,8(a5)
    80003980:	0007b023          	sd	zero,0(a5)
    80003984:	fe1ff06f          	j	80003964 <_ZN9Scheduler3getEv+0x28>

0000000080003988 <_ZN9Scheduler5printEv>:

void Scheduler::print()
{
    80003988:	fe010113          	addi	sp,sp,-32
    8000398c:	00113c23          	sd	ra,24(sp)
    80003990:	00813823          	sd	s0,16(sp)
    80003994:	00913423          	sd	s1,8(sp)
    80003998:	02010413          	addi	s0,sp,32
    //trapPrintString("Scheduler print\n");
    PCB* curr = schedulerPCBHead;
    8000399c:	0000c497          	auipc	s1,0xc
    800039a0:	09c4b483          	ld	s1,156(s1) # 8000fa38 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    800039a4:	02048863          	beqz	s1,800039d4 <_ZN9Scheduler5printEv+0x4c>
    {
        KConsole::trapPrintInt((uint64)curr, 16);
    800039a8:	00000613          	li	a2,0
    800039ac:	01000593          	li	a1,16
    800039b0:	00048513          	mv	a0,s1
    800039b4:	00000097          	auipc	ra,0x0
    800039b8:	d24080e7          	jalr	-732(ra) # 800036d8 <_ZN8KConsole12trapPrintIntEmii>
        KConsole::trapPrintString("\n");
    800039bc:	00006517          	auipc	a0,0x6
    800039c0:	da450513          	addi	a0,a0,-604 # 80009760 <CONSOLE_STATUS+0x750>
    800039c4:	00000097          	auipc	ra,0x0
    800039c8:	cd0080e7          	jalr	-816(ra) # 80003694 <_ZN8KConsole15trapPrintStringEPKc>
        curr = curr->nextPCB;
    800039cc:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800039d0:	fd5ff06f          	j	800039a4 <_ZN9Scheduler5printEv+0x1c>
    }
}
    800039d4:	01813083          	ld	ra,24(sp)
    800039d8:	01013403          	ld	s0,16(sp)
    800039dc:	00813483          	ld	s1,8(sp)
    800039e0:	02010113          	addi	sp,sp,32
    800039e4:	00008067          	ret

00000000800039e8 <main>:
#include "../h/Riscv.hpp"

void main()
{
    800039e8:	ff010113          	addi	sp,sp,-16
    800039ec:	00113423          	sd	ra,8(sp)
    800039f0:	00813023          	sd	s0,0(sp)
    800039f4:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    800039f8:	00001097          	auipc	ra,0x1
    800039fc:	914080e7          	jalr	-1772(ra) # 8000430c <_ZN5Riscv10kernelMainEv>
    80003a00:	00813083          	ld	ra,8(sp)
    80003a04:	00013403          	ld	s0,0(sp)
    80003a08:	01010113          	addi	sp,sp,16
    80003a0c:	00008067          	ret

0000000080003a10 <_Z14buddyInitTest1v>:
#include "../h/buddyTests.hpp"

void buddyInitTest1()
{
    80003a10:	ff010113          	addi	sp,sp,-16
    80003a14:	00113423          	sd	ra,8(sp)
    80003a18:	00813023          	sd	s0,0(sp)
    80003a1c:	01010413          	addi	s0,sp,16
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 18);
    80003a20:	01200593          	li	a1,18
    80003a24:	00008797          	auipc	a5,0x8
    80003a28:	eec7b783          	ld	a5,-276(a5) # 8000b910 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003a2c:	0007b503          	ld	a0,0(a5)
    80003a30:	fffff097          	auipc	ra,0xfffff
    80003a34:	3f0080e7          	jalr	1008(ra) # 80002e20 <_Z10buddy_initPvm>
    printBuddyInfo(buddy);
    80003a38:	fffff097          	auipc	ra,0xfffff
    80003a3c:	624080e7          	jalr	1572(ra) # 8000305c <_Z14printBuddyInfoP14buddyAllocator>
}
    80003a40:	00813083          	ld	ra,8(sp)
    80003a44:	00013403          	ld	s0,0(sp)
    80003a48:	01010113          	addi	sp,sp,16
    80003a4c:	00008067          	ret

0000000080003a50 <_Z20buddyOnlyAllocsTest1v>:

void buddyOnlyAllocsTest1()
{
    80003a50:	fe010113          	addi	sp,sp,-32
    80003a54:	00113c23          	sd	ra,24(sp)
    80003a58:	00813823          	sd	s0,16(sp)
    80003a5c:	00913423          	sd	s1,8(sp)
    80003a60:	02010413          	addi	s0,sp,32
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    80003a64:	00a00593          	li	a1,10
    80003a68:	00008797          	auipc	a5,0x8
    80003a6c:	ea87b783          	ld	a5,-344(a5) # 8000b910 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003a70:	0007b503          	ld	a0,0(a5)
    80003a74:	fffff097          	auipc	ra,0xfffff
    80003a78:	3ac080e7          	jalr	940(ra) # 80002e20 <_Z10buddy_initPvm>
    80003a7c:	00050493          	mv	s1,a0
    printBuddyInfo(buddy);
    80003a80:	fffff097          	auipc	ra,0xfffff
    80003a84:	5dc080e7          	jalr	1500(ra) # 8000305c <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    80003a88:	00100593          	li	a1,1
    80003a8c:	00048513          	mv	a0,s1
    80003a90:	fffff097          	auipc	ra,0xfffff
    80003a94:	0e8080e7          	jalr	232(ra) # 80002b78 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003a98:	00048513          	mv	a0,s1
    80003a9c:	fffff097          	auipc	ra,0xfffff
    80003aa0:	5c0080e7          	jalr	1472(ra) # 8000305c <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    80003aa4:	00100593          	li	a1,1
    80003aa8:	00048513          	mv	a0,s1
    80003aac:	fffff097          	auipc	ra,0xfffff
    80003ab0:	0cc080e7          	jalr	204(ra) # 80002b78 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003ab4:	00048513          	mv	a0,s1
    80003ab8:	fffff097          	auipc	ra,0xfffff
    80003abc:	5a4080e7          	jalr	1444(ra) # 8000305c <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    80003ac0:	00100593          	li	a1,1
    80003ac4:	00048513          	mv	a0,s1
    80003ac8:	fffff097          	auipc	ra,0xfffff
    80003acc:	0b0080e7          	jalr	176(ra) # 80002b78 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003ad0:	00048513          	mv	a0,s1
    80003ad4:	fffff097          	auipc	ra,0xfffff
    80003ad8:	588080e7          	jalr	1416(ra) # 8000305c <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,3);
    80003adc:	00300593          	li	a1,3
    80003ae0:	00048513          	mv	a0,s1
    80003ae4:	fffff097          	auipc	ra,0xfffff
    80003ae8:	094080e7          	jalr	148(ra) # 80002b78 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003aec:	00048513          	mv	a0,s1
    80003af0:	fffff097          	auipc	ra,0xfffff
    80003af4:	56c080e7          	jalr	1388(ra) # 8000305c <_Z14printBuddyInfoP14buddyAllocator>
}
    80003af8:	01813083          	ld	ra,24(sp)
    80003afc:	01013403          	ld	s0,16(sp)
    80003b00:	00813483          	ld	s1,8(sp)
    80003b04:	02010113          	addi	sp,sp,32
    80003b08:	00008067          	ret

0000000080003b0c <_Z20buddyOnlyAllocsTest2v>:

void buddyOnlyAllocsTest2()
{
    80003b0c:	fe010113          	addi	sp,sp,-32
    80003b10:	00113c23          	sd	ra,24(sp)
    80003b14:	00813823          	sd	s0,16(sp)
    80003b18:	00913423          	sd	s1,8(sp)
    80003b1c:	02010413          	addi	s0,sp,32
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    80003b20:	00a00593          	li	a1,10
    80003b24:	00008797          	auipc	a5,0x8
    80003b28:	dec7b783          	ld	a5,-532(a5) # 8000b910 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003b2c:	0007b503          	ld	a0,0(a5)
    80003b30:	fffff097          	auipc	ra,0xfffff
    80003b34:	2f0080e7          	jalr	752(ra) # 80002e20 <_Z10buddy_initPvm>
    80003b38:	00050493          	mv	s1,a0
    void* adr = buddy_alloc(buddy, 100);
    80003b3c:	06400593          	li	a1,100
    80003b40:	fffff097          	auipc	ra,0xfffff
    80003b44:	038080e7          	jalr	56(ra) # 80002b78 <_Z11buddy_allocP14buddyAllocatorm>
    if(adr == nullptr)
    80003b48:	00050c63          	beqz	a0,80003b60 <_Z20buddyOnlyAllocsTest2v+0x54>
    {
        printBuddyInfo(buddy);
    }
}
    80003b4c:	01813083          	ld	ra,24(sp)
    80003b50:	01013403          	ld	s0,16(sp)
    80003b54:	00813483          	ld	s1,8(sp)
    80003b58:	02010113          	addi	sp,sp,32
    80003b5c:	00008067          	ret
        printBuddyInfo(buddy);
    80003b60:	00048513          	mv	a0,s1
    80003b64:	fffff097          	auipc	ra,0xfffff
    80003b68:	4f8080e7          	jalr	1272(ra) # 8000305c <_Z14printBuddyInfoP14buddyAllocator>
}
    80003b6c:	fe1ff06f          	j	80003b4c <_Z20buddyOnlyAllocsTest2v+0x40>

0000000080003b70 <_Z19buddyAllocFreeTest1v>:

void buddyAllocFreeTest1()
{
    80003b70:	fd010113          	addi	sp,sp,-48
    80003b74:	02113423          	sd	ra,40(sp)
    80003b78:	02813023          	sd	s0,32(sp)
    80003b7c:	00913c23          	sd	s1,24(sp)
    80003b80:	01213823          	sd	s2,16(sp)
    80003b84:	01313423          	sd	s3,8(sp)
    80003b88:	03010413          	addi	s0,sp,48
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    80003b8c:	00a00593          	li	a1,10
    80003b90:	00008797          	auipc	a5,0x8
    80003b94:	d807b783          	ld	a5,-640(a5) # 8000b910 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003b98:	0007b503          	ld	a0,0(a5)
    80003b9c:	fffff097          	auipc	ra,0xfffff
    80003ba0:	284080e7          	jalr	644(ra) # 80002e20 <_Z10buddy_initPvm>
    80003ba4:	00050493          	mv	s1,a0
    printBuddyInfo(buddy);
    80003ba8:	fffff097          	auipc	ra,0xfffff
    80003bac:	4b4080e7          	jalr	1204(ra) # 8000305c <_Z14printBuddyInfoP14buddyAllocator>
    void* adr = buddy_alloc(buddy,1);
    80003bb0:	00100593          	li	a1,1
    80003bb4:	00048513          	mv	a0,s1
    80003bb8:	fffff097          	auipc	ra,0xfffff
    80003bbc:	fc0080e7          	jalr	-64(ra) # 80002b78 <_Z11buddy_allocP14buddyAllocatorm>
    80003bc0:	00050913          	mv	s2,a0
    printBuddyInfo(buddy);
    80003bc4:	00048513          	mv	a0,s1
    80003bc8:	fffff097          	auipc	ra,0xfffff
    80003bcc:	494080e7          	jalr	1172(ra) # 8000305c <_Z14printBuddyInfoP14buddyAllocator>
    buddy_free(buddy, adr, 1);
    80003bd0:	00100613          	li	a2,1
    80003bd4:	00090593          	mv	a1,s2
    80003bd8:	00048513          	mv	a0,s1
    80003bdc:	fffff097          	auipc	ra,0xfffff
    80003be0:	3c4080e7          	jalr	964(ra) # 80002fa0 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003be4:	00048513          	mv	a0,s1
    80003be8:	fffff097          	auipc	ra,0xfffff
    80003bec:	474080e7          	jalr	1140(ra) # 8000305c <_Z14printBuddyInfoP14buddyAllocator>

    adr = buddy_alloc(buddy, 2);
    80003bf0:	00200593          	li	a1,2
    80003bf4:	00048513          	mv	a0,s1
    80003bf8:	fffff097          	auipc	ra,0xfffff
    80003bfc:	f80080e7          	jalr	-128(ra) # 80002b78 <_Z11buddy_allocP14buddyAllocatorm>
    80003c00:	00050913          	mv	s2,a0
    void* adr2 = buddy_alloc(buddy, 3);
    80003c04:	00300593          	li	a1,3
    80003c08:	00048513          	mv	a0,s1
    80003c0c:	fffff097          	auipc	ra,0xfffff
    80003c10:	f6c080e7          	jalr	-148(ra) # 80002b78 <_Z11buddy_allocP14buddyAllocatorm>
    80003c14:	00050993          	mv	s3,a0
    printBuddyInfo(buddy);
    80003c18:	00048513          	mv	a0,s1
    80003c1c:	fffff097          	auipc	ra,0xfffff
    80003c20:	440080e7          	jalr	1088(ra) # 8000305c <_Z14printBuddyInfoP14buddyAllocator>

    buddy_free(buddy, adr, 2);
    80003c24:	00200613          	li	a2,2
    80003c28:	00090593          	mv	a1,s2
    80003c2c:	00048513          	mv	a0,s1
    80003c30:	fffff097          	auipc	ra,0xfffff
    80003c34:	370080e7          	jalr	880(ra) # 80002fa0 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003c38:	00048513          	mv	a0,s1
    80003c3c:	fffff097          	auipc	ra,0xfffff
    80003c40:	420080e7          	jalr	1056(ra) # 8000305c <_Z14printBuddyInfoP14buddyAllocator>
    adr = buddy_alloc(buddy, 1);
    80003c44:	00100593          	li	a1,1
    80003c48:	00048513          	mv	a0,s1
    80003c4c:	fffff097          	auipc	ra,0xfffff
    80003c50:	f2c080e7          	jalr	-212(ra) # 80002b78 <_Z11buddy_allocP14buddyAllocatorm>
    80003c54:	00050913          	mv	s2,a0
    printBuddyInfo(buddy);
    80003c58:	00048513          	mv	a0,s1
    80003c5c:	fffff097          	auipc	ra,0xfffff
    80003c60:	400080e7          	jalr	1024(ra) # 8000305c <_Z14printBuddyInfoP14buddyAllocator>

    buddy_free(buddy, adr2, 3);
    80003c64:	00300613          	li	a2,3
    80003c68:	00098593          	mv	a1,s3
    80003c6c:	00048513          	mv	a0,s1
    80003c70:	fffff097          	auipc	ra,0xfffff
    80003c74:	330080e7          	jalr	816(ra) # 80002fa0 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003c78:	00048513          	mv	a0,s1
    80003c7c:	fffff097          	auipc	ra,0xfffff
    80003c80:	3e0080e7          	jalr	992(ra) # 8000305c <_Z14printBuddyInfoP14buddyAllocator>
    buddy_free(buddy, adr, 1);
    80003c84:	00100613          	li	a2,1
    80003c88:	00090593          	mv	a1,s2
    80003c8c:	00048513          	mv	a0,s1
    80003c90:	fffff097          	auipc	ra,0xfffff
    80003c94:	310080e7          	jalr	784(ra) # 80002fa0 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003c98:	00048513          	mv	a0,s1
    80003c9c:	fffff097          	auipc	ra,0xfffff
    80003ca0:	3c0080e7          	jalr	960(ra) # 8000305c <_Z14printBuddyInfoP14buddyAllocator>
    80003ca4:	02813083          	ld	ra,40(sp)
    80003ca8:	02013403          	ld	s0,32(sp)
    80003cac:	01813483          	ld	s1,24(sp)
    80003cb0:	01013903          	ld	s2,16(sp)
    80003cb4:	00813983          	ld	s3,8(sp)
    80003cb8:	03010113          	addi	sp,sp,48
    80003cbc:	00008067          	ret

0000000080003cc0 <_ZN6Thread6runnerEPv>:
    myHandle = 0;
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    80003cc0:	ff010113          	addi	sp,sp,-16
    80003cc4:	00113423          	sd	ra,8(sp)
    80003cc8:	00813023          	sd	s0,0(sp)
    80003ccc:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    80003cd0:	00053783          	ld	a5,0(a0)
    80003cd4:	0107b783          	ld	a5,16(a5)
    80003cd8:	000780e7          	jalr	a5
}
    80003cdc:	00813083          	ld	ra,8(sp)
    80003ce0:	00013403          	ld	s0,0(sp)
    80003ce4:	01010113          	addi	sp,sp,16
    80003ce8:	00008067          	ret

0000000080003cec <_ZN6ThreadD1Ev>:

Thread::~Thread()
    80003cec:	00008797          	auipc	a5,0x8
    80003cf0:	bbc78793          	addi	a5,a5,-1092 # 8000b8a8 <_ZTV6Thread+0x10>
    80003cf4:	00f53023          	sd	a5,0(a0)
{
    delete myHandle;
    80003cf8:	00853503          	ld	a0,8(a0)
    80003cfc:	02050663          	beqz	a0,80003d28 <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread()
    80003d00:	ff010113          	addi	sp,sp,-16
    80003d04:	00113423          	sd	ra,8(sp)
    80003d08:	00813023          	sd	s0,0(sp)
    80003d0c:	01010413          	addi	s0,sp,16
    delete myHandle;
    80003d10:	ffffe097          	auipc	ra,0xffffe
    80003d14:	684080e7          	jalr	1668(ra) # 80002394 <_ZN7_threaddlEPv>
}
    80003d18:	00813083          	ld	ra,8(sp)
    80003d1c:	00013403          	ld	s0,0(sp)
    80003d20:	01010113          	addi	sp,sp,16
    80003d24:	00008067          	ret
    80003d28:	00008067          	ret

0000000080003d2c <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    80003d2c:	00008797          	auipc	a5,0x8
    80003d30:	ba478793          	addi	a5,a5,-1116 # 8000b8d0 <_ZTV9Semaphore+0x10>
    80003d34:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    80003d38:	00853503          	ld	a0,8(a0)
    80003d3c:	02050663          	beqz	a0,80003d68 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80003d40:	ff010113          	addi	sp,sp,-16
    80003d44:	00113423          	sd	ra,8(sp)
    80003d48:	00813023          	sd	s0,0(sp)
    80003d4c:	01010413          	addi	s0,sp,16
    delete myHandle;
    80003d50:	00000097          	auipc	ra,0x0
    80003d54:	464080e7          	jalr	1124(ra) # 800041b4 <_ZN4_semdlEPv>
}
    80003d58:	00813083          	ld	ra,8(sp)
    80003d5c:	00013403          	ld	s0,0(sp)
    80003d60:	01010113          	addi	sp,sp,16
    80003d64:	00008067          	ret
    80003d68:	00008067          	ret

0000000080003d6c <_Znwm>:
{
    80003d6c:	ff010113          	addi	sp,sp,-16
    80003d70:	00113423          	sd	ra,8(sp)
    80003d74:	00813023          	sd	s0,0(sp)
    80003d78:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80003d7c:	ffffe097          	auipc	ra,0xffffe
    80003d80:	2c0080e7          	jalr	704(ra) # 8000203c <_Z9mem_allocm>
}
    80003d84:	00813083          	ld	ra,8(sp)
    80003d88:	00013403          	ld	s0,0(sp)
    80003d8c:	01010113          	addi	sp,sp,16
    80003d90:	00008067          	ret

0000000080003d94 <_ZdlPv>:
{
    80003d94:	ff010113          	addi	sp,sp,-16
    80003d98:	00113423          	sd	ra,8(sp)
    80003d9c:	00813023          	sd	s0,0(sp)
    80003da0:	01010413          	addi	s0,sp,16
    mem_free(p);
    80003da4:	ffffe097          	auipc	ra,0xffffe
    80003da8:	2c8080e7          	jalr	712(ra) # 8000206c <_Z8mem_freePv>
}
    80003dac:	00813083          	ld	ra,8(sp)
    80003db0:	00013403          	ld	s0,0(sp)
    80003db4:	01010113          	addi	sp,sp,16
    80003db8:	00008067          	ret

0000000080003dbc <_ZN6ThreadD0Ev>:
Thread::~Thread()
    80003dbc:	fe010113          	addi	sp,sp,-32
    80003dc0:	00113c23          	sd	ra,24(sp)
    80003dc4:	00813823          	sd	s0,16(sp)
    80003dc8:	00913423          	sd	s1,8(sp)
    80003dcc:	02010413          	addi	s0,sp,32
    80003dd0:	00050493          	mv	s1,a0
}
    80003dd4:	00000097          	auipc	ra,0x0
    80003dd8:	f18080e7          	jalr	-232(ra) # 80003cec <_ZN6ThreadD1Ev>
    80003ddc:	00048513          	mv	a0,s1
    80003de0:	00000097          	auipc	ra,0x0
    80003de4:	fb4080e7          	jalr	-76(ra) # 80003d94 <_ZdlPv>
    80003de8:	01813083          	ld	ra,24(sp)
    80003dec:	01013403          	ld	s0,16(sp)
    80003df0:	00813483          	ld	s1,8(sp)
    80003df4:	02010113          	addi	sp,sp,32
    80003df8:	00008067          	ret

0000000080003dfc <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80003dfc:	fe010113          	addi	sp,sp,-32
    80003e00:	00113c23          	sd	ra,24(sp)
    80003e04:	00813823          	sd	s0,16(sp)
    80003e08:	00913423          	sd	s1,8(sp)
    80003e0c:	02010413          	addi	s0,sp,32
    80003e10:	00050493          	mv	s1,a0
}
    80003e14:	00000097          	auipc	ra,0x0
    80003e18:	f18080e7          	jalr	-232(ra) # 80003d2c <_ZN9SemaphoreD1Ev>
    80003e1c:	00048513          	mv	a0,s1
    80003e20:	00000097          	auipc	ra,0x0
    80003e24:	f74080e7          	jalr	-140(ra) # 80003d94 <_ZdlPv>
    80003e28:	01813083          	ld	ra,24(sp)
    80003e2c:	01013403          	ld	s0,16(sp)
    80003e30:	00813483          	ld	s1,8(sp)
    80003e34:	02010113          	addi	sp,sp,32
    80003e38:	00008067          	ret

0000000080003e3c <_ZN6Thread5startEv>:
    if(myHandle != 0)
    80003e3c:	00853503          	ld	a0,8(a0)
    80003e40:	02050663          	beqz	a0,80003e6c <_ZN6Thread5startEv+0x30>
{
    80003e44:	ff010113          	addi	sp,sp,-16
    80003e48:	00113423          	sd	ra,8(sp)
    80003e4c:	00813023          	sd	s0,0(sp)
    80003e50:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    80003e54:	ffffe097          	auipc	ra,0xffffe
    80003e58:	3f4080e7          	jalr	1012(ra) # 80002248 <_Z12thread_startPv>
}
    80003e5c:	00813083          	ld	ra,8(sp)
    80003e60:	00013403          	ld	s0,0(sp)
    80003e64:	01010113          	addi	sp,sp,16
    80003e68:	00008067          	ret
        return -1;
    80003e6c:	fff00513          	li	a0,-1
}
    80003e70:	00008067          	ret

0000000080003e74 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80003e74:	ff010113          	addi	sp,sp,-16
    80003e78:	00113423          	sd	ra,8(sp)
    80003e7c:	00813023          	sd	s0,0(sp)
    80003e80:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80003e84:	ffffe097          	auipc	ra,0xffffe
    80003e88:	294080e7          	jalr	660(ra) # 80002118 <_Z15thread_dispatchv>
}
    80003e8c:	00813083          	ld	ra,8(sp)
    80003e90:	00013403          	ld	s0,0(sp)
    80003e94:	01010113          	addi	sp,sp,16
    80003e98:	00008067          	ret

0000000080003e9c <_ZN6Thread5sleepEm>:
{
    80003e9c:	ff010113          	addi	sp,sp,-16
    80003ea0:	00113423          	sd	ra,8(sp)
    80003ea4:	00813023          	sd	s0,0(sp)
    80003ea8:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80003eac:	ffffe097          	auipc	ra,0xffffe
    80003eb0:	370080e7          	jalr	880(ra) # 8000221c <_Z10time_sleepm>
}
    80003eb4:	00813083          	ld	ra,8(sp)
    80003eb8:	00013403          	ld	s0,0(sp)
    80003ebc:	01010113          	addi	sp,sp,16
    80003ec0:	00008067          	ret

0000000080003ec4 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    80003ec4:	fe010113          	addi	sp,sp,-32
    80003ec8:	00113c23          	sd	ra,24(sp)
    80003ecc:	00813823          	sd	s0,16(sp)
    80003ed0:	00913423          	sd	s1,8(sp)
    80003ed4:	01213023          	sd	s2,0(sp)
    80003ed8:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    80003edc:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    80003ee0:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    80003ee4:	0004b783          	ld	a5,0(s1)
    80003ee8:	0187b783          	ld	a5,24(a5)
    80003eec:	00048513          	mv	a0,s1
    80003ef0:	000780e7          	jalr	a5
        Thread::sleep(time);
    80003ef4:	00090513          	mv	a0,s2
    80003ef8:	00000097          	auipc	ra,0x0
    80003efc:	fa4080e7          	jalr	-92(ra) # 80003e9c <_ZN6Thread5sleepEm>
    while(true)
    80003f00:	fe5ff06f          	j	80003ee4 <_ZN14PeriodicThread6runnerEPv+0x20>

0000000080003f04 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    80003f04:	ff010113          	addi	sp,sp,-16
    80003f08:	00113423          	sd	ra,8(sp)
    80003f0c:	00813023          	sd	s0,0(sp)
    80003f10:	01010413          	addi	s0,sp,16
    80003f14:	00008797          	auipc	a5,0x8
    80003f18:	99478793          	addi	a5,a5,-1644 # 8000b8a8 <_ZTV6Thread+0x10>
    80003f1c:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    80003f20:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, body, args);
    80003f24:	00850513          	addi	a0,a0,8
    80003f28:	ffffe097          	auipc	ra,0xffffe
    80003f2c:	34c080e7          	jalr	844(ra) # 80002274 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    80003f30:	00813083          	ld	ra,8(sp)
    80003f34:	00013403          	ld	s0,0(sp)
    80003f38:	01010113          	addi	sp,sp,16
    80003f3c:	00008067          	ret

0000000080003f40 <_ZN6ThreadC1Ev>:
Thread::Thread()
    80003f40:	ff010113          	addi	sp,sp,-16
    80003f44:	00113423          	sd	ra,8(sp)
    80003f48:	00813023          	sd	s0,0(sp)
    80003f4c:	01010413          	addi	s0,sp,16
    80003f50:	00008797          	auipc	a5,0x8
    80003f54:	95878793          	addi	a5,a5,-1704 # 8000b8a8 <_ZTV6Thread+0x10>
    80003f58:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    80003f5c:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    80003f60:	00050613          	mv	a2,a0
    80003f64:	00000597          	auipc	a1,0x0
    80003f68:	d5c58593          	addi	a1,a1,-676 # 80003cc0 <_ZN6Thread6runnerEPv>
    80003f6c:	00850513          	addi	a0,a0,8
    80003f70:	ffffe097          	auipc	ra,0xffffe
    80003f74:	304080e7          	jalr	772(ra) # 80002274 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    80003f78:	00813083          	ld	ra,8(sp)
    80003f7c:	00013403          	ld	s0,0(sp)
    80003f80:	01010113          	addi	sp,sp,16
    80003f84:	00008067          	ret

0000000080003f88 <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    80003f88:	00853503          	ld	a0,8(a0)
    80003f8c:	02050663          	beqz	a0,80003fb8 <_ZN9Semaphore4waitEv+0x30>
{
    80003f90:	ff010113          	addi	sp,sp,-16
    80003f94:	00113423          	sd	ra,8(sp)
    80003f98:	00813023          	sd	s0,0(sp)
    80003f9c:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80003fa0:	ffffe097          	auipc	ra,0xffffe
    80003fa4:	224080e7          	jalr	548(ra) # 800021c4 <_Z8sem_waitP4_sem>
}
    80003fa8:	00813083          	ld	ra,8(sp)
    80003fac:	00013403          	ld	s0,0(sp)
    80003fb0:	01010113          	addi	sp,sp,16
    80003fb4:	00008067          	ret
        return -1;
    80003fb8:	fff00513          	li	a0,-1
}
    80003fbc:	00008067          	ret

0000000080003fc0 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    80003fc0:	fe010113          	addi	sp,sp,-32
    80003fc4:	00113c23          	sd	ra,24(sp)
    80003fc8:	00813823          	sd	s0,16(sp)
    80003fcc:	00913423          	sd	s1,8(sp)
    80003fd0:	02010413          	addi	s0,sp,32
    80003fd4:	00050493          	mv	s1,a0
    80003fd8:	00008797          	auipc	a5,0x8
    80003fdc:	8f878793          	addi	a5,a5,-1800 # 8000b8d0 <_ZTV9Semaphore+0x10>
    80003fe0:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    80003fe4:	00850513          	addi	a0,a0,8
    80003fe8:	ffffe097          	auipc	ra,0xffffe
    80003fec:	178080e7          	jalr	376(ra) # 80002160 <_Z8sem_openPP4_semj>
    if(retval != 0)
    80003ff0:	00050463          	beqz	a0,80003ff8 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    80003ff4:	0004b423          	sd	zero,8(s1)
}
    80003ff8:	01813083          	ld	ra,24(sp)
    80003ffc:	01013403          	ld	s0,16(sp)
    80004000:	00813483          	ld	s1,8(sp)
    80004004:	02010113          	addi	sp,sp,32
    80004008:	00008067          	ret

000000008000400c <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    8000400c:	00853503          	ld	a0,8(a0)
    80004010:	02050663          	beqz	a0,8000403c <_ZN9Semaphore6signalEv+0x30>
{
    80004014:	ff010113          	addi	sp,sp,-16
    80004018:	00113423          	sd	ra,8(sp)
    8000401c:	00813023          	sd	s0,0(sp)
    80004020:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80004024:	ffffe097          	auipc	ra,0xffffe
    80004028:	1cc080e7          	jalr	460(ra) # 800021f0 <_Z10sem_signalP4_sem>
}
    8000402c:	00813083          	ld	ra,8(sp)
    80004030:	00013403          	ld	s0,0(sp)
    80004034:	01010113          	addi	sp,sp,16
    80004038:	00008067          	ret
        return -1;
    8000403c:	fff00513          	li	a0,-1
}
    80004040:	00008067          	ret

0000000080004044 <_ZN7Console4getcEv>:
{
    80004044:	ff010113          	addi	sp,sp,-16
    80004048:	00113423          	sd	ra,8(sp)
    8000404c:	00813023          	sd	s0,0(sp)
    80004050:	01010413          	addi	s0,sp,16
    return ::getc();
    80004054:	ffffe097          	auipc	ra,0xffffe
    80004058:	2a0080e7          	jalr	672(ra) # 800022f4 <_Z4getcv>
}
    8000405c:	00813083          	ld	ra,8(sp)
    80004060:	00013403          	ld	s0,0(sp)
    80004064:	01010113          	addi	sp,sp,16
    80004068:	00008067          	ret

000000008000406c <_ZN7Console4putcEc>:
{
    8000406c:	ff010113          	addi	sp,sp,-16
    80004070:	00113423          	sd	ra,8(sp)
    80004074:	00813023          	sd	s0,0(sp)
    80004078:	01010413          	addi	s0,sp,16
    return ::putc(c);
    8000407c:	ffffe097          	auipc	ra,0xffffe
    80004080:	2a0080e7          	jalr	672(ra) # 8000231c <_Z4putcc>
}
    80004084:	00813083          	ld	ra,8(sp)
    80004088:	00013403          	ld	s0,0(sp)
    8000408c:	01010113          	addi	sp,sp,16
    80004090:	00008067          	ret

0000000080004094 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80004094:	fe010113          	addi	sp,sp,-32
    80004098:	00113c23          	sd	ra,24(sp)
    8000409c:	00813823          	sd	s0,16(sp)
    800040a0:	00913423          	sd	s1,8(sp)
    800040a4:	01213023          	sd	s2,0(sp)
    800040a8:	02010413          	addi	s0,sp,32
    800040ac:	00050493          	mv	s1,a0
    800040b0:	00058913          	mv	s2,a1
    800040b4:	01000513          	li	a0,16
    800040b8:	00000097          	auipc	ra,0x0
    800040bc:	cb4080e7          	jalr	-844(ra) # 80003d6c <_Znwm>
    800040c0:	00050613          	mv	a2,a0
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    800040c4:	00953023          	sd	s1,0(a0)
    800040c8:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    800040cc:	00000597          	auipc	a1,0x0
    800040d0:	df858593          	addi	a1,a1,-520 # 80003ec4 <_ZN14PeriodicThread6runnerEPv>
    800040d4:	00048513          	mv	a0,s1
    800040d8:	00000097          	auipc	ra,0x0
    800040dc:	e2c080e7          	jalr	-468(ra) # 80003f04 <_ZN6ThreadC1EPFvPvES0_>
    800040e0:	00007797          	auipc	a5,0x7
    800040e4:	79878793          	addi	a5,a5,1944 # 8000b878 <_ZTV14PeriodicThread+0x10>
    800040e8:	00f4b023          	sd	a5,0(s1)
}
    800040ec:	01813083          	ld	ra,24(sp)
    800040f0:	01013403          	ld	s0,16(sp)
    800040f4:	00813483          	ld	s1,8(sp)
    800040f8:	00013903          	ld	s2,0(sp)
    800040fc:	02010113          	addi	sp,sp,32
    80004100:	00008067          	ret

0000000080004104 <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    80004104:	ff010113          	addi	sp,sp,-16
    80004108:	00813423          	sd	s0,8(sp)
    8000410c:	01010413          	addi	s0,sp,16
    80004110:	00813403          	ld	s0,8(sp)
    80004114:	01010113          	addi	sp,sp,16
    80004118:	00008067          	ret

000000008000411c <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    8000411c:	ff010113          	addi	sp,sp,-16
    80004120:	00813423          	sd	s0,8(sp)
    80004124:	01010413          	addi	s0,sp,16
    80004128:	00813403          	ld	s0,8(sp)
    8000412c:	01010113          	addi	sp,sp,16
    80004130:	00008067          	ret

0000000080004134 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    80004134:	ff010113          	addi	sp,sp,-16
    80004138:	00113423          	sd	ra,8(sp)
    8000413c:	00813023          	sd	s0,0(sp)
    80004140:	01010413          	addi	s0,sp,16
    80004144:	00007797          	auipc	a5,0x7
    80004148:	73478793          	addi	a5,a5,1844 # 8000b878 <_ZTV14PeriodicThread+0x10>
    8000414c:	00f53023          	sd	a5,0(a0)
    80004150:	00000097          	auipc	ra,0x0
    80004154:	b9c080e7          	jalr	-1124(ra) # 80003cec <_ZN6ThreadD1Ev>
    80004158:	00813083          	ld	ra,8(sp)
    8000415c:	00013403          	ld	s0,0(sp)
    80004160:	01010113          	addi	sp,sp,16
    80004164:	00008067          	ret

0000000080004168 <_ZN14PeriodicThreadD0Ev>:
    80004168:	fe010113          	addi	sp,sp,-32
    8000416c:	00113c23          	sd	ra,24(sp)
    80004170:	00813823          	sd	s0,16(sp)
    80004174:	00913423          	sd	s1,8(sp)
    80004178:	02010413          	addi	s0,sp,32
    8000417c:	00050493          	mv	s1,a0
    80004180:	00007797          	auipc	a5,0x7
    80004184:	6f878793          	addi	a5,a5,1784 # 8000b878 <_ZTV14PeriodicThread+0x10>
    80004188:	00f53023          	sd	a5,0(a0)
    8000418c:	00000097          	auipc	ra,0x0
    80004190:	b60080e7          	jalr	-1184(ra) # 80003cec <_ZN6ThreadD1Ev>
    80004194:	00048513          	mv	a0,s1
    80004198:	00000097          	auipc	ra,0x0
    8000419c:	bfc080e7          	jalr	-1028(ra) # 80003d94 <_ZdlPv>
    800041a0:	01813083          	ld	ra,24(sp)
    800041a4:	01013403          	ld	s0,16(sp)
    800041a8:	00813483          	ld	s1,8(sp)
    800041ac:	02010113          	addi	sp,sp,32
    800041b0:	00008067          	ret

00000000800041b4 <_ZN4_semdlEPv>:
//

#include "../h/_sem.hpp"
#include "../h/syscall_c.hpp"

void _sem::operator delete(void *p) {
    800041b4:	ff010113          	addi	sp,sp,-16
    800041b8:	00113423          	sd	ra,8(sp)
    800041bc:	00813023          	sd	s0,0(sp)
    800041c0:	01010413          	addi	s0,sp,16
    sem_close((sem_t)p);
    800041c4:	ffffe097          	auipc	ra,0xffffe
    800041c8:	fd4080e7          	jalr	-44(ra) # 80002198 <_Z9sem_closeP4_sem>
}
    800041cc:	00813083          	ld	ra,8(sp)
    800041d0:	00013403          	ld	s0,0(sp)
    800041d4:	01010113          	addi	sp,sp,16
    800041d8:	00008067          	ret

00000000800041dc <_ZN5Riscv10initSystemEv>:
uint64 Riscv::totalTime = 0;
bool Riscv::finishSystem = false;
bool Riscv::kernelMainCalled = false;

void Riscv::initSystem()
{
    800041dc:	ff010113          	addi	sp,sp,-16
    800041e0:	00113423          	sd	ra,8(sp)
    800041e4:	00813023          	sd	s0,0(sp)
    800041e8:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    800041ec:	00007797          	auipc	a5,0x7
    800041f0:	72c7b783          	ld	a5,1836(a5) # 8000b918 <_GLOBAL_OFFSET_TABLE_+0x20>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    800041f4:	10579073          	csrw	stvec,a5
    PCB::initialize();
    800041f8:	ffffe097          	auipc	ra,0xffffe
    800041fc:	388080e7          	jalr	904(ra) # 80002580 <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80004200:	fffff097          	auipc	ra,0xfffff
    80004204:	fe8080e7          	jalr	-24(ra) # 800031e8 <_ZN8KConsole10initializeEv>
}
    80004208:	00813083          	ld	ra,8(sp)
    8000420c:	00013403          	ld	s0,0(sp)
    80004210:	01010113          	addi	sp,sp,16
    80004214:	00008067          	ret

0000000080004218 <_ZN5Riscv16enableInterruptsEv>:
        thread_dispatch();
    }
    disableInterrupts();
}

void Riscv::enableInterrupts() {
    80004218:	ff010113          	addi	sp,sp,-16
    8000421c:	00813423          	sd	s0,8(sp)
    80004220:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80004224:	00200793          	li	a5,2
    80004228:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    8000422c:	00813403          	ld	s0,8(sp)
    80004230:	01010113          	addi	sp,sp,16
    80004234:	00008067          	ret

0000000080004238 <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    80004238:	ff010113          	addi	sp,sp,-16
    8000423c:	00813423          	sd	s0,8(sp)
    80004240:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80004244:	00200793          	li	a5,2
    80004248:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    8000424c:	00813403          	ld	s0,8(sp)
    80004250:	01010113          	addi	sp,sp,16
    80004254:	00008067          	ret

0000000080004258 <_ZN5Riscv9endSystemEv>:
{
    80004258:	ff010113          	addi	sp,sp,-16
    8000425c:	00113423          	sd	ra,8(sp)
    80004260:	00813023          	sd	s0,0(sp)
    80004264:	01010413          	addi	s0,sp,16
    disableInterrupts();
    80004268:	00000097          	auipc	ra,0x0
    8000426c:	fd0080e7          	jalr	-48(ra) # 80004238 <_ZN5Riscv17disableInterruptsEv>
    finishSystem = true;
    80004270:	00100793          	li	a5,1
    80004274:	0000b717          	auipc	a4,0xb
    80004278:	7cf70a23          	sb	a5,2004(a4) # 8000fa48 <_ZN5Riscv12finishSystemE>
        pcb = Scheduler::get();
    8000427c:	fffff097          	auipc	ra,0xfffff
    80004280:	6c0080e7          	jalr	1728(ra) # 8000393c <_ZN9Scheduler3getEv>
        if(pcb == 0) break;
    80004284:	fe051ce3          	bnez	a0,8000427c <_ZN5Riscv9endSystemEv+0x24>
    Scheduler::put(PCB::consolePCB);
    80004288:	00007797          	auipc	a5,0x7
    8000428c:	6c87b783          	ld	a5,1736(a5) # 8000b950 <_GLOBAL_OFFSET_TABLE_+0x58>
    80004290:	0007b503          	ld	a0,0(a5)
    80004294:	fffff097          	auipc	ra,0xfffff
    80004298:	654080e7          	jalr	1620(ra) # 800038e8 <_ZN9Scheduler3putEP3PCB>
    KConsole::pendingGetc = 0;
    8000429c:	00007797          	auipc	a5,0x7
    800042a0:	6847b783          	ld	a5,1668(a5) # 8000b920 <_GLOBAL_OFFSET_TABLE_+0x28>
    800042a4:	0007b023          	sd	zero,0(a5)
    enableInterrupts();
    800042a8:	00000097          	auipc	ra,0x0
    800042ac:	f70080e7          	jalr	-144(ra) # 80004218 <_ZN5Riscv16enableInterruptsEv>
    while(!PCB::consolePCB->isFinished())
    800042b0:	00007797          	auipc	a5,0x7
    800042b4:	6a07b783          	ld	a5,1696(a5) # 8000b950 <_GLOBAL_OFFSET_TABLE_+0x58>
    800042b8:	0007b503          	ld	a0,0(a5)
    800042bc:	ffffe097          	auipc	ra,0xffffe
    800042c0:	3e4080e7          	jalr	996(ra) # 800026a0 <_ZN3PCB10isFinishedEv>
    800042c4:	00051863          	bnez	a0,800042d4 <_ZN5Riscv9endSystemEv+0x7c>
        thread_dispatch();
    800042c8:	ffffe097          	auipc	ra,0xffffe
    800042cc:	e50080e7          	jalr	-432(ra) # 80002118 <_Z15thread_dispatchv>
    while(!PCB::consolePCB->isFinished())
    800042d0:	fe1ff06f          	j	800042b0 <_ZN5Riscv9endSystemEv+0x58>
    disableInterrupts();
    800042d4:	00000097          	auipc	ra,0x0
    800042d8:	f64080e7          	jalr	-156(ra) # 80004238 <_ZN5Riscv17disableInterruptsEv>
}
    800042dc:	00813083          	ld	ra,8(sp)
    800042e0:	00013403          	ld	s0,0(sp)
    800042e4:	01010113          	addi	sp,sp,16
    800042e8:	00008067          	ret

00000000800042ec <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    800042ec:	ff010113          	addi	sp,sp,-16
    800042f0:	00813423          	sd	s0,8(sp)
    800042f4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    800042f8:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800042fc:	10200073          	sret
}
    80004300:	00813403          	ld	s0,8(sp)
    80004304:	01010113          	addi	sp,sp,16
    80004308:	00008067          	ret

000000008000430c <_ZN5Riscv10kernelMainEv>:
    }
}

void Riscv::kernelMain()
{
    if(kernelMainCalled) return;
    8000430c:	0000b797          	auipc	a5,0xb
    80004310:	73d7c783          	lbu	a5,1853(a5) # 8000fa49 <_ZN5Riscv16kernelMainCalledE>
    80004314:	00078463          	beqz	a5,8000431c <_ZN5Riscv10kernelMainEv+0x10>
    80004318:	00008067          	ret
{
    8000431c:	ff010113          	addi	sp,sp,-16
    80004320:	00113423          	sd	ra,8(sp)
    80004324:	00813023          	sd	s0,0(sp)
    80004328:	01010413          	addi	s0,sp,16
    kernelMainCalled = true;
    8000432c:	00100793          	li	a5,1
    80004330:	0000b717          	auipc	a4,0xb
    80004334:	70f70ca3          	sb	a5,1817(a4) # 8000fa49 <_ZN5Riscv16kernelMainCalledE>

    initSystem();
    80004338:	00000097          	auipc	ra,0x0
    8000433c:	ea4080e7          	jalr	-348(ra) # 800041dc <_ZN5Riscv10initSystemEv>
    slabCacheCreateTest2();
    80004340:	00001097          	auipc	ra,0x1
    80004344:	98c080e7          	jalr	-1652(ra) # 80004ccc <_Z20slabCacheCreateTest2v>
    {
        thread_dispatch();
    }*/

    //printString("End...\n");
    endSystem();
    80004348:	00000097          	auipc	ra,0x0
    8000434c:	f10080e7          	jalr	-240(ra) # 80004258 <_ZN5Riscv9endSystemEv>
}
    80004350:	00813083          	ld	ra,8(sp)
    80004354:	00013403          	ld	s0,0(sp)
    80004358:	01010113          	addi	sp,sp,16
    8000435c:	00008067          	ret

0000000080004360 <_ZN5Riscv15userMainWrapperEPv>:

void Riscv::userMainWrapper(void* )
{
    80004360:	ff010113          	addi	sp,sp,-16
    80004364:	00113423          	sd	ra,8(sp)
    80004368:	00813023          	sd	s0,0(sp)
    8000436c:	01010413          	addi	s0,sp,16
    userMain();
    80004370:	00002097          	auipc	ra,0x2
    80004374:	ab4080e7          	jalr	-1356(ra) # 80005e24 <_Z8userMainv>
}
    80004378:	00813083          	ld	ra,8(sp)
    8000437c:	00013403          	ld	s0,0(sp)
    80004380:	01010113          	addi	sp,sp,16
    80004384:	00008067          	ret

0000000080004388 <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    80004388:	ff010113          	addi	sp,sp,-16
    8000438c:	00813423          	sd	s0,8(sp)
    80004390:	01010413          	addi	s0,sp,16
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    80004394:	00200793          	li	a5,2
    80004398:	1047b073          	csrc	sie,a5
}
    8000439c:	00813403          	ld	s0,8(sp)
    800043a0:	01010113          	addi	sp,sp,16
    800043a4:	00008067          	ret

00000000800043a8 <_ZN5Riscv13w_a0_sscratchEv>:

void Riscv::w_a0_sscratch()
{
    800043a8:	ff010113          	addi	sp,sp,-16
    800043ac:	00813423          	sd	s0,8(sp)
    800043b0:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    800043b4:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    800043b8:	00007717          	auipc	a4,0x7
    800043bc:	5a873703          	ld	a4,1448(a4) # 8000b960 <_GLOBAL_OFFSET_TABLE_+0x68>
    800043c0:	00073703          	ld	a4,0(a4)
    800043c4:	01073703          	ld	a4,16(a4)
    800043c8:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    800043cc:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    800043d0:	00078593          	mv	a1,a5
}
    800043d4:	00813403          	ld	s0,8(sp)
    800043d8:	01010113          	addi	sp,sp,16
    800043dc:	00008067          	ret

00000000800043e0 <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    800043e0:	ff010113          	addi	sp,sp,-16
    800043e4:	00813423          	sd	s0,8(sp)
    800043e8:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread)
    800043ec:	00007797          	auipc	a5,0x7
    800043f0:	5747b783          	ld	a5,1396(a5) # 8000b960 <_GLOBAL_OFFSET_TABLE_+0x68>
    800043f4:	0007b783          	ld	a5,0(a5)
    800043f8:	0007c783          	lbu	a5,0(a5)
    800043fc:	00078c63          	beqz	a5,80004414 <_ZN5Riscv14changePrivModeEv+0x34>
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80004400:	10000793          	li	a5,256
    80004404:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    80004408:	00813403          	ld	s0,8(sp)
    8000440c:	01010113          	addi	sp,sp,16
    80004410:	00008067          	ret
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80004414:	10000793          	li	a5,256
    80004418:	1007b073          	csrc	sstatus,a5
    8000441c:	fedff06f          	j	80004408 <_ZN5Riscv14changePrivModeEv+0x28>

0000000080004420 <_ZN5Riscv20handleSupervisorTrapEv>:
{
    80004420:	f9010113          	addi	sp,sp,-112
    80004424:	06113423          	sd	ra,104(sp)
    80004428:	06813023          	sd	s0,96(sp)
    8000442c:	04913c23          	sd	s1,88(sp)
    80004430:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    80004434:	00070713          	mv	a4,a4
    80004438:	00007797          	auipc	a5,0x7
    8000443c:	5407b783          	ld	a5,1344(a5) # 8000b978 <_GLOBAL_OFFSET_TABLE_+0x80>
    80004440:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    80004444:	00007797          	auipc	a5,0x7
    80004448:	51c7b783          	ld	a5,1308(a5) # 8000b960 <_GLOBAL_OFFSET_TABLE_+0x68>
    8000444c:	0007b783          	ld	a5,0(a5)
    80004450:	14002773          	csrr	a4,sscratch
    80004454:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80004458:	142027f3          	csrr	a5,scause
    8000445c:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80004460:	fb843783          	ld	a5,-72(s0)
    switch(scause)
    80004464:	00900713          	li	a4,9
    80004468:	02f76e63          	bltu	a4,a5,800044a4 <_ZN5Riscv20handleSupervisorTrapEv+0x84>
    8000446c:	00800713          	li	a4,8
    80004470:	12e7f463          	bgeu	a5,a4,80004598 <_ZN5Riscv20handleSupervisorTrapEv+0x178>
    80004474:	00500713          	li	a4,5
    80004478:	10e78a63          	beq	a5,a4,8000458c <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
    8000447c:	00700713          	li	a4,7
    80004480:	00e79863          	bne	a5,a4,80004490 <_ZN5Riscv20handleSupervisorTrapEv+0x70>
            PCB::threadExitHandler();
    80004484:	ffffe097          	auipc	ra,0xffffe
    80004488:	240080e7          	jalr	576(ra) # 800026c4 <_ZN3PCB17threadExitHandlerEv>
            break;
    8000448c:	0dc0006f          	j	80004568 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    switch(scause)
    80004490:	00200713          	li	a4,2
    80004494:	0ce79a63          	bne	a5,a4,80004568 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            PCB::threadExitHandler();
    80004498:	ffffe097          	auipc	ra,0xffffe
    8000449c:	22c080e7          	jalr	556(ra) # 800026c4 <_ZN3PCB17threadExitHandlerEv>
            break;
    800044a0:	0c80006f          	j	80004568 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    switch(scause)
    800044a4:	fff00713          	li	a4,-1
    800044a8:	03f71713          	slli	a4,a4,0x3f
    800044ac:	00170713          	addi	a4,a4,1
    800044b0:	02e78863          	beq	a5,a4,800044e0 <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
    800044b4:	fff00713          	li	a4,-1
    800044b8:	03f71713          	slli	a4,a4,0x3f
    800044bc:	00970713          	addi	a4,a4,9
    800044c0:	0ae79463          	bne	a5,a4,80004568 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            KConsole::getCharactersFromConsole();
    800044c4:	fffff097          	auipc	ra,0xfffff
    800044c8:	e3c080e7          	jalr	-452(ra) # 80003300 <_ZN8KConsole24getCharactersFromConsoleEv>
            plic_complete(plic_claim());
    800044cc:	00002097          	auipc	ra,0x2
    800044d0:	4f8080e7          	jalr	1272(ra) # 800069c4 <plic_claim>
    800044d4:	00002097          	auipc	ra,0x2
    800044d8:	528080e7          	jalr	1320(ra) # 800069fc <plic_complete>
            break;
    800044dc:	08c0006f          	j	80004568 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800044e0:	141027f3          	csrr	a5,sepc
    800044e4:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    800044e8:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    800044ec:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800044f0:	100027f3          	csrr	a5,sstatus
    800044f4:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    800044f8:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    800044fc:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80004500:	00200793          	li	a5,2
    80004504:	1447b073          	csrc	sip,a5
            totalTime++;
    80004508:	0000b717          	auipc	a4,0xb
    8000450c:	54070713          	addi	a4,a4,1344 # 8000fa48 <_ZN5Riscv12finishSystemE>
    80004510:	00873783          	ld	a5,8(a4)
    80004514:	00178793          	addi	a5,a5,1
    80004518:	00f73423          	sd	a5,8(a4)
            PCB::timeSliceCounter++;
    8000451c:	00007497          	auipc	s1,0x7
    80004520:	4144b483          	ld	s1,1044(s1) # 8000b930 <_GLOBAL_OFFSET_TABLE_+0x38>
    80004524:	0004b783          	ld	a5,0(s1)
    80004528:	00178793          	addi	a5,a5,1
    8000452c:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80004530:	fffff097          	auipc	ra,0xfffff
    80004534:	2a8080e7          	jalr	680(ra) # 800037d8 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80004538:	00007797          	auipc	a5,0x7
    8000453c:	4287b783          	ld	a5,1064(a5) # 8000b960 <_GLOBAL_OFFSET_TABLE_+0x68>
    80004540:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80004544:	0187b783          	ld	a5,24(a5)
    80004548:	0004b703          	ld	a4,0(s1)
    8000454c:	02f77863          	bgeu	a4,a5,8000457c <_ZN5Riscv20handleSupervisorTrapEv+0x15c>
            Riscv::w_sstatus(sstatus);
    80004550:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80004554:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80004558:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    8000455c:	14179073          	csrw	sepc,a5
            changePrivMode();
    80004560:	00000097          	auipc	ra,0x0
    80004564:	e80080e7          	jalr	-384(ra) # 800043e0 <_ZN5Riscv14changePrivModeEv>
}
    80004568:	06813083          	ld	ra,104(sp)
    8000456c:	06013403          	ld	s0,96(sp)
    80004570:	05813483          	ld	s1,88(sp)
    80004574:	07010113          	addi	sp,sp,112
    80004578:	00008067          	ret
                PCB::timeSliceCounter = 0;
    8000457c:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80004580:	ffffe097          	auipc	ra,0xffffe
    80004584:	ef8080e7          	jalr	-264(ra) # 80002478 <_ZN3PCB8dispatchEv>
    80004588:	fc9ff06f          	j	80004550 <_ZN5Riscv20handleSupervisorTrapEv+0x130>
            PCB::threadExitHandler();
    8000458c:	ffffe097          	auipc	ra,0xffffe
    80004590:	138080e7          	jalr	312(ra) # 800026c4 <_ZN3PCB17threadExitHandlerEv>
            break;
    80004594:	fd5ff06f          	j	80004568 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80004598:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    8000459c:	14102773          	csrr	a4,sepc
    800045a0:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    800045a4:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    800045a8:	00470713          	addi	a4,a4,4
    800045ac:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800045b0:	10002773          	csrr	a4,sstatus
    800045b4:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    800045b8:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    800045bc:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    800045c0:	04300713          	li	a4,67
    800045c4:	02f76463          	bltu	a4,a5,800045ec <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
    800045c8:	00279793          	slli	a5,a5,0x2
    800045cc:	00005717          	auipc	a4,0x5
    800045d0:	e3070713          	addi	a4,a4,-464 # 800093fc <CONSOLE_STATUS+0x3ec>
    800045d4:	00e787b3          	add	a5,a5,a4
    800045d8:	0007a783          	lw	a5,0(a5)
    800045dc:	00e787b3          	add	a5,a5,a4
    800045e0:	00078067          	jr	a5
                    MemoryAllocator::memAllocHandler();
    800045e4:	00000097          	auipc	ra,0x0
    800045e8:	55c080e7          	jalr	1372(ra) # 80004b40 <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    800045ec:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800045f0:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    800045f4:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    800045f8:	14179073          	csrw	sepc,a5
            changePrivMode();
    800045fc:	00000097          	auipc	ra,0x0
    80004600:	de4080e7          	jalr	-540(ra) # 800043e0 <_ZN5Riscv14changePrivModeEv>
}
    80004604:	f65ff06f          	j	80004568 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
                    MemoryAllocator::memFreeHandler();
    80004608:	00000097          	auipc	ra,0x0
    8000460c:	59c080e7          	jalr	1436(ra) # 80004ba4 <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    80004610:	fddff06f          	j	800045ec <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadMakePCBHandler();
    80004614:	ffffe097          	auipc	ra,0xffffe
    80004618:	274080e7          	jalr	628(ra) # 80002888 <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    8000461c:	fd1ff06f          	j	800045ec <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadCreateHandler();
    80004620:	ffffe097          	auipc	ra,0xffffe
    80004624:	184080e7          	jalr	388(ra) # 800027a4 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    80004628:	fc5ff06f          	j	800045ec <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadStartHandler();
    8000462c:	ffffe097          	auipc	ra,0xffffe
    80004630:	218080e7          	jalr	536(ra) # 80002844 <_ZN3PCB18threadStartHandlerEv>
                    break;
    80004634:	fb9ff06f          	j	800045ec <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadDispatchHandler();
    80004638:	ffffe097          	auipc	ra,0xffffe
    8000463c:	0d8080e7          	jalr	216(ra) # 80002710 <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    80004640:	fadff06f          	j	800045ec <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadExitHandler();
    80004644:	ffffe097          	auipc	ra,0xffffe
    80004648:	080080e7          	jalr	128(ra) # 800026c4 <_ZN3PCB17threadExitHandlerEv>
                    break;
    8000464c:	fa1ff06f          	j	800045ec <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadSleepHandler();
    80004650:	ffffe097          	auipc	ra,0xffffe
    80004654:	0f0080e7          	jalr	240(ra) # 80002740 <_ZN3PCB18threadSleepHandlerEv>
                    break;
    80004658:	f95ff06f          	j	800045ec <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                     PCB::threadDelPCBHandler();
    8000465c:	ffffe097          	auipc	ra,0xffffe
    80004660:	2c0080e7          	jalr	704(ra) # 8000291c <_ZN3PCB19threadDelPCBHandlerEv>
                     break;
    80004664:	f89ff06f          	j	800045ec <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semOpenHandler();
    80004668:	00001097          	auipc	ra,0x1
    8000466c:	984080e7          	jalr	-1660(ra) # 80004fec <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    80004670:	f7dff06f          	j	800045ec <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semWaitHandler();
    80004674:	00001097          	auipc	ra,0x1
    80004678:	a18080e7          	jalr	-1512(ra) # 8000508c <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    8000467c:	f71ff06f          	j	800045ec <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semSignalHandler();
    80004680:	00001097          	auipc	ra,0x1
    80004684:	a60080e7          	jalr	-1440(ra) # 800050e0 <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80004688:	f65ff06f          	j	800045ec <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semCloseHandler();
    8000468c:	00001097          	auipc	ra,0x1
    80004690:	a98080e7          	jalr	-1384(ra) # 80005124 <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    80004694:	f59ff06f          	j	800045ec <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::getcHandler();
    80004698:	fffff097          	auipc	ra,0xfffff
    8000469c:	e6c080e7          	jalr	-404(ra) # 80003504 <_ZN8KConsole11getcHandlerEv>
                    break;
    800046a0:	f4dff06f          	j	800045ec <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::putcHandler();
    800046a4:	fffff097          	auipc	ra,0xfffff
    800046a8:	e30080e7          	jalr	-464(ra) # 800034d4 <_ZN8KConsole11putcHandlerEv>
                    break;
    800046ac:	f41ff06f          	j	800045ec <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::getCharHandler();
    800046b0:	fffff097          	auipc	ra,0xfffff
    800046b4:	fb0080e7          	jalr	-80(ra) # 80003660 <_ZN8KConsole14getCharHandlerEv>
                    break;
    800046b8:	f35ff06f          	j	800045ec <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>

00000000800046bc <_ZN15MemoryAllocator10initMemoryEv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    800046bc:	ff010113          	addi	sp,sp,-16
    800046c0:	00813423          	sd	s0,8(sp)
    800046c4:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    800046c8:	0000b717          	auipc	a4,0xb
    800046cc:	39072703          	lw	a4,912(a4) # 8000fa58 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800046d0:	00100793          	li	a5,1
    800046d4:	04f70263          	beq	a4,a5,80004718 <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    800046d8:	0000b797          	auipc	a5,0xb
    800046dc:	38078793          	addi	a5,a5,896 # 8000fa58 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800046e0:	00100713          	li	a4,1
    800046e4:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    800046e8:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    800046ec:	00007717          	auipc	a4,0x7
    800046f0:	22473703          	ld	a4,548(a4) # 8000b910 <_GLOBAL_OFFSET_TABLE_+0x18>
    800046f4:	00073703          	ld	a4,0(a4)
    800046f8:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    800046fc:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80004700:	00007797          	auipc	a5,0x7
    80004704:	2687b783          	ld	a5,616(a5) # 8000b968 <_GLOBAL_OFFSET_TABLE_+0x70>
    80004708:	0007b783          	ld	a5,0(a5)
    8000470c:	40e787b3          	sub	a5,a5,a4
    80004710:	ff178793          	addi	a5,a5,-15
    80004714:	00f73023          	sd	a5,0(a4)
}
    80004718:	00813403          	ld	s0,8(sp)
    8000471c:	01010113          	addi	sp,sp,16
    80004720:	00008067          	ret

0000000080004724 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>:

void MemoryAllocator::insertAllFragment(void *addr, size_t size, void* nxtAddr)
{
    80004724:	fd010113          	addi	sp,sp,-48
    80004728:	02113423          	sd	ra,40(sp)
    8000472c:	02813023          	sd	s0,32(sp)
    80004730:	00913c23          	sd	s1,24(sp)
    80004734:	01213823          	sd	s2,16(sp)
    80004738:	01313423          	sd	s3,8(sp)
    8000473c:	03010413          	addi	s0,sp,48
    80004740:	00050493          	mv	s1,a0
    80004744:	00058993          	mv	s3,a1
    80004748:	00060913          	mv	s2,a2
    initMemory();
    8000474c:	00000097          	auipc	ra,0x0
    80004750:	f70080e7          	jalr	-144(ra) # 800046bc <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80004754:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80004758:	0134b023          	sd	s3,0(s1)
    if(headAllocated == 0)
    8000475c:	0000b797          	auipc	a5,0xb
    80004760:	3047b783          	ld	a5,772(a5) # 8000fa60 <_ZN15MemoryAllocator13headAllocatedE>
    80004764:	02078e63          	beqz	a5,800047a0 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x7c>
    {
        headAllocated = newAllocated;
    }
    else if(nxtAddr <= HEAP_END_ADDR)
    80004768:	00007717          	auipc	a4,0x7
    8000476c:	20073703          	ld	a4,512(a4) # 8000b968 <_GLOBAL_OFFSET_TABLE_+0x70>
    80004770:	00073703          	ld	a4,0(a4)
    80004774:	03276c63          	bltu	a4,s2,800047ac <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x88>
    {
        BlockHeader * allFrag = (BlockHeader*)nxtAddr;
        newAllocated->next = allFrag->next;
    80004778:	00893783          	ld	a5,8(s2)
    8000477c:	00f4b423          	sd	a5,8(s1)
        allFrag->next = newAllocated;
    80004780:	00993423          	sd	s1,8(s2)
    else
    {
        newAllocated->next = headAllocated;
        headAllocated = newAllocated;
    }
}
    80004784:	02813083          	ld	ra,40(sp)
    80004788:	02013403          	ld	s0,32(sp)
    8000478c:	01813483          	ld	s1,24(sp)
    80004790:	01013903          	ld	s2,16(sp)
    80004794:	00813983          	ld	s3,8(sp)
    80004798:	03010113          	addi	sp,sp,48
    8000479c:	00008067          	ret
        headAllocated = newAllocated;
    800047a0:	0000b797          	auipc	a5,0xb
    800047a4:	2c97b023          	sd	s1,704(a5) # 8000fa60 <_ZN15MemoryAllocator13headAllocatedE>
    800047a8:	fddff06f          	j	80004784 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>
        newAllocated->next = headAllocated;
    800047ac:	00f4b423          	sd	a5,8(s1)
        headAllocated = newAllocated;
    800047b0:	0000b797          	auipc	a5,0xb
    800047b4:	2a97b823          	sd	s1,688(a5) # 8000fa60 <_ZN15MemoryAllocator13headAllocatedE>
}
    800047b8:	fcdff06f          	j	80004784 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>

00000000800047bc <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    800047bc:	fe010113          	addi	sp,sp,-32
    800047c0:	00113c23          	sd	ra,24(sp)
    800047c4:	00813823          	sd	s0,16(sp)
    800047c8:	00913423          	sd	s1,8(sp)
    800047cc:	01213023          	sd	s2,0(sp)
    800047d0:	02010413          	addi	s0,sp,32
    800047d4:	00050493          	mv	s1,a0
    800047d8:	00058913          	mv	s2,a1
    initMemory();
    800047dc:	00000097          	auipc	ra,0x0
    800047e0:	ee0080e7          	jalr	-288(ra) # 800046bc <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    800047e4:	0000b797          	auipc	a5,0xb
    800047e8:	27c7b783          	ld	a5,636(a5) # 8000fa60 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    800047ec:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    800047f0:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    800047f4:	00000713          	li	a4,0
    while(curr != 0)
    800047f8:	00078c63          	beqz	a5,80004810 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    800047fc:	00f4e863          	bltu	s1,a5,8000480c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80004800:	00078713          	mv	a4,a5
        curr = curr->next;
    80004804:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80004808:	ff1ff06f          	j	800047f8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    8000480c:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80004810:	02070063          	beqz	a4,80004830 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80004814:	00973423          	sd	s1,8(a4)
}
    80004818:	01813083          	ld	ra,24(sp)
    8000481c:	01013403          	ld	s0,16(sp)
    80004820:	00813483          	ld	s1,8(sp)
    80004824:	00013903          	ld	s2,0(sp)
    80004828:	02010113          	addi	sp,sp,32
    8000482c:	00008067          	ret
        headAllocated = newAllocated;
    80004830:	0000b797          	auipc	a5,0xb
    80004834:	2297b823          	sd	s1,560(a5) # 8000fa60 <_ZN15MemoryAllocator13headAllocatedE>
    80004838:	fe1ff06f          	j	80004818 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

000000008000483c <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    8000483c:	fe010113          	addi	sp,sp,-32
    80004840:	00113c23          	sd	ra,24(sp)
    80004844:	00813823          	sd	s0,16(sp)
    80004848:	00913423          	sd	s1,8(sp)
    8000484c:	01213023          	sd	s2,0(sp)
    80004850:	02010413          	addi	s0,sp,32
    80004854:	00050913          	mv	s2,a0
    initMemory();
    80004858:	00000097          	auipc	ra,0x0
    8000485c:	e64080e7          	jalr	-412(ra) # 800046bc <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004860:	0000b497          	auipc	s1,0xb
    80004864:	2084b483          	ld	s1,520(s1) # 8000fa68 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80004868:	00000713          	li	a4,0
    while(curr != 0)
    8000486c:	0c048063          	beqz	s1,8000492c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf0>
    {
        if(curr->size >= size)
    80004870:	0004b783          	ld	a5,0(s1)
    80004874:	0127f863          	bgeu	a5,s2,80004884 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            //insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80004878:	00048713          	mv	a4,s1
        curr = curr->next;
    8000487c:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004880:	fedff06f          	j	8000486c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80004884:	01090693          	addi	a3,s2,16
    80004888:	00d486b3          	add	a3,s1,a3
            void* nxtAllFrag = ((char*)curr + curr->size + sizeof(BlockHeader));
    8000488c:	01078613          	addi	a2,a5,16
    80004890:	00c48633          	add	a2,s1,a2
            if(newAddr <= HEAP_END_ADDR)
    80004894:	00007597          	auipc	a1,0x7
    80004898:	0d45b583          	ld	a1,212(a1) # 8000b968 <_GLOBAL_OFFSET_TABLE_+0x70>
    8000489c:	0005b583          	ld	a1,0(a1)
    800048a0:	06d5e063          	bltu	a1,a3,80004900 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xc4>
                uint64 size2 = curr->size - size;
    800048a4:	412785b3          	sub	a1,a5,s2
                if(size2 > sizeof(BlockHeader))
    800048a8:	01000513          	li	a0,16
    800048ac:	02b57663          	bgeu	a0,a1,800048d8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
                    newFree->next = curr->next;
    800048b0:	0084b783          	ld	a5,8(s1)
    800048b4:	00f6b423          	sd	a5,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    800048b8:	ff058593          	addi	a1,a1,-16
    800048bc:	00b6b023          	sd	a1,0(a3)
                    if (prev != 0)
    800048c0:	00070663          	beqz	a4,800048cc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x90>
                        prev->next = newFree;
    800048c4:	00d73423          	sd	a3,8(a4)
    800048c8:	0400006f          	j	80004908 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = newFree;
    800048cc:	0000b797          	auipc	a5,0xb
    800048d0:	18d7be23          	sd	a3,412(a5) # 8000fa68 <_ZN15MemoryAllocator8headFreeE>
    800048d4:	0340006f          	j	80004908 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                    if(prev != 0)
    800048d8:	00070a63          	beqz	a4,800048ec <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb0>
                        prev->next = curr->next;
    800048dc:	0084b683          	ld	a3,8(s1)
    800048e0:	00d73423          	sd	a3,8(a4)
                    size+=size2;
    800048e4:	00078913          	mv	s2,a5
    800048e8:	0200006f          	j	80004908 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = curr->next;
    800048ec:	0084b703          	ld	a4,8(s1)
    800048f0:	0000b697          	auipc	a3,0xb
    800048f4:	16e6bc23          	sd	a4,376(a3) # 8000fa68 <_ZN15MemoryAllocator8headFreeE>
                    size+=size2;
    800048f8:	00078913          	mv	s2,a5
    800048fc:	00c0006f          	j	80004908 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                if(prev != 0)
    80004900:	02070063          	beqz	a4,80004920 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    prev->next = 0;
    80004904:	00073423          	sd	zero,8(a4)
            insertAllFragment(oldAddr, size, nxtAllFrag);
    80004908:	00090593          	mv	a1,s2
    8000490c:	00048513          	mv	a0,s1
    80004910:	00000097          	auipc	ra,0x0
    80004914:	e14080e7          	jalr	-492(ra) # 80004724 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80004918:	01048513          	addi	a0,s1,16
            break;
    8000491c:	0140006f          	j	80004930 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf4>
                    headFree = 0;
    80004920:	0000b797          	auipc	a5,0xb
    80004924:	1407b423          	sd	zero,328(a5) # 8000fa68 <_ZN15MemoryAllocator8headFreeE>
    80004928:	fe1ff06f          	j	80004908 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
    uint64 retval = 0;
    8000492c:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80004930:	01813083          	ld	ra,24(sp)
    80004934:	01013403          	ld	s0,16(sp)
    80004938:	00813483          	ld	s1,8(sp)
    8000493c:	00013903          	ld	s2,0(sp)
    80004940:	02010113          	addi	sp,sp,32
    80004944:	00008067          	ret

0000000080004948 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80004948:	ff010113          	addi	sp,sp,-16
    8000494c:	00113423          	sd	ra,8(sp)
    80004950:	00813023          	sd	s0,0(sp)
    80004954:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80004958:	00000097          	auipc	ra,0x0
    8000495c:	ee4080e7          	jalr	-284(ra) # 8000483c <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80004960:	00813083          	ld	ra,8(sp)
    80004964:	00013403          	ld	s0,0(sp)
    80004968:	01010113          	addi	sp,sp,16
    8000496c:	00008067          	ret

0000000080004970 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80004970:	fe010113          	addi	sp,sp,-32
    80004974:	00113c23          	sd	ra,24(sp)
    80004978:	00813823          	sd	s0,16(sp)
    8000497c:	00913423          	sd	s1,8(sp)
    80004980:	01213023          	sd	s2,0(sp)
    80004984:	02010413          	addi	s0,sp,32
    80004988:	00050493          	mv	s1,a0
    8000498c:	00058913          	mv	s2,a1
    initMemory();
    80004990:	00000097          	auipc	ra,0x0
    80004994:	d2c080e7          	jalr	-724(ra) # 800046bc <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004998:	0000b797          	auipc	a5,0xb
    8000499c:	0d07b783          	ld	a5,208(a5) # 8000fa68 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    800049a0:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    800049a4:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    800049a8:	00000713          	li	a4,0
    while(curr != 0)
    800049ac:	00078c63          	beqz	a5,800049c4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    800049b0:	00f4e863          	bltu	s1,a5,800049c0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    800049b4:	00078713          	mv	a4,a5
        curr = curr->next;
    800049b8:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800049bc:	ff1ff06f          	j	800049ac <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    800049c0:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    800049c4:	04070663          	beqz	a4,80004a10 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    800049c8:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    800049cc:	0084b783          	ld	a5,8(s1)
    800049d0:	00078a63          	beqz	a5,800049e4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    800049d4:	0004b603          	ld	a2,0(s1)
    800049d8:	01060693          	addi	a3,a2,16
    800049dc:	00d486b3          	add	a3,s1,a3
    800049e0:	02d78e63          	beq	a5,a3,80004a1c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    800049e4:	00070a63          	beqz	a4,800049f8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    800049e8:	00073683          	ld	a3,0(a4)
    800049ec:	01068793          	addi	a5,a3,16
    800049f0:	00f707b3          	add	a5,a4,a5
    800049f4:	04978263          	beq	a5,s1,80004a38 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    800049f8:	01813083          	ld	ra,24(sp)
    800049fc:	01013403          	ld	s0,16(sp)
    80004a00:	00813483          	ld	s1,8(sp)
    80004a04:	00013903          	ld	s2,0(sp)
    80004a08:	02010113          	addi	sp,sp,32
    80004a0c:	00008067          	ret
        headFree = newSegment;
    80004a10:	0000b797          	auipc	a5,0xb
    80004a14:	0497bc23          	sd	s1,88(a5) # 8000fa68 <_ZN15MemoryAllocator8headFreeE>
    80004a18:	fb5ff06f          	j	800049cc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80004a1c:	0007b683          	ld	a3,0(a5)
    80004a20:	00d60633          	add	a2,a2,a3
    80004a24:	01060613          	addi	a2,a2,16
    80004a28:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80004a2c:	0087b783          	ld	a5,8(a5)
    80004a30:	00f4b423          	sd	a5,8(s1)
    80004a34:	fb1ff06f          	j	800049e4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80004a38:	0004b783          	ld	a5,0(s1)
    80004a3c:	00f686b3          	add	a3,a3,a5
    80004a40:	01068693          	addi	a3,a3,16
    80004a44:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80004a48:	0084b783          	ld	a5,8(s1)
    80004a4c:	00f73423          	sd	a5,8(a4)
}
    80004a50:	fa9ff06f          	j	800049f8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080004a54 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80004a54:	fe010113          	addi	sp,sp,-32
    80004a58:	00113c23          	sd	ra,24(sp)
    80004a5c:	00813823          	sd	s0,16(sp)
    80004a60:	00913423          	sd	s1,8(sp)
    80004a64:	01213023          	sd	s2,0(sp)
    80004a68:	02010413          	addi	s0,sp,32
    80004a6c:	00050913          	mv	s2,a0
    initMemory();
    80004a70:	00000097          	auipc	ra,0x0
    80004a74:	c4c080e7          	jalr	-948(ra) # 800046bc <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80004a78:	0000b497          	auipc	s1,0xb
    80004a7c:	fe84b483          	ld	s1,-24(s1) # 8000fa60 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80004a80:	00000713          	li	a4,0
    while(curr != 0)
    80004a84:	02048a63          	beqz	s1,80004ab8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80004a88:	01048793          	addi	a5,s1,16
    80004a8c:	01278863          	beq	a5,s2,80004a9c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80004a90:	00048713          	mv	a4,s1
        curr = curr->next;
    80004a94:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004a98:	fedff06f          	j	80004a84 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    80004a9c:	02070e63          	beqz	a4,80004ad8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    80004aa0:	0084b783          	ld	a5,8(s1)
    80004aa4:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80004aa8:	0004b583          	ld	a1,0(s1)
    80004aac:	00048513          	mv	a0,s1
    80004ab0:	00000097          	auipc	ra,0x0
    80004ab4:	ec0080e7          	jalr	-320(ra) # 80004970 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80004ab8:	02048863          	beqz	s1,80004ae8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80004abc:	00000513          	li	a0,0
    else
        return 1;
}
    80004ac0:	01813083          	ld	ra,24(sp)
    80004ac4:	01013403          	ld	s0,16(sp)
    80004ac8:	00813483          	ld	s1,8(sp)
    80004acc:	00013903          	ld	s2,0(sp)
    80004ad0:	02010113          	addi	sp,sp,32
    80004ad4:	00008067          	ret
                headAllocated = curr->next;
    80004ad8:	0084b783          	ld	a5,8(s1)
    80004adc:	0000b717          	auipc	a4,0xb
    80004ae0:	f8f73223          	sd	a5,-124(a4) # 8000fa60 <_ZN15MemoryAllocator13headAllocatedE>
    80004ae4:	fc5ff06f          	j	80004aa8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    80004ae8:	00100513          	li	a0,1
    80004aec:	fd5ff06f          	j	80004ac0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

0000000080004af0 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80004af0:	ff010113          	addi	sp,sp,-16
    80004af4:	00113423          	sd	ra,8(sp)
    80004af8:	00813023          	sd	s0,0(sp)
    80004afc:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80004b00:	00000097          	auipc	ra,0x0
    80004b04:	f54080e7          	jalr	-172(ra) # 80004a54 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80004b08:	00813083          	ld	ra,8(sp)
    80004b0c:	00013403          	ld	s0,0(sp)
    80004b10:	01010113          	addi	sp,sp,16
    80004b14:	00008067          	ret

0000000080004b18 <_ZN15MemoryAllocator7kmallocEm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* MemoryAllocator::kmalloc(size_t size)
{
    80004b18:	ff010113          	addi	sp,sp,-16
    80004b1c:	00113423          	sd	ra,8(sp)
    80004b20:	00813023          	sd	s0,0(sp)
    80004b24:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80004b28:	00000097          	auipc	ra,0x0
    80004b2c:	e20080e7          	jalr	-480(ra) # 80004948 <_ZN15MemoryAllocator9mem_allocEm>
}
    80004b30:	00813083          	ld	ra,8(sp)
    80004b34:	00013403          	ld	s0,0(sp)
    80004b38:	01010113          	addi	sp,sp,16
    80004b3c:	00008067          	ret

0000000080004b40 <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    80004b40:	ff010113          	addi	sp,sp,-16
    80004b44:	00113423          	sd	ra,8(sp)
    80004b48:	00813023          	sd	s0,0(sp)
    80004b4c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80004b50:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    80004b54:	00651513          	slli	a0,a0,0x6
    80004b58:	00000097          	auipc	ra,0x0
    80004b5c:	fc0080e7          	jalr	-64(ra) # 80004b18 <_ZN15MemoryAllocator7kmallocEm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80004b60:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004b64:	00000097          	auipc	ra,0x0
    80004b68:	844080e7          	jalr	-1980(ra) # 800043a8 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004b6c:	00813083          	ld	ra,8(sp)
    80004b70:	00013403          	ld	s0,0(sp)
    80004b74:	01010113          	addi	sp,sp,16
    80004b78:	00008067          	ret

0000000080004b7c <_ZN15MemoryAllocator5kfreeEPv>:

uint64 MemoryAllocator::kfree(void* p)
{
    80004b7c:	ff010113          	addi	sp,sp,-16
    80004b80:	00113423          	sd	ra,8(sp)
    80004b84:	00813023          	sd	s0,0(sp)
    80004b88:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80004b8c:	00000097          	auipc	ra,0x0
    80004b90:	f64080e7          	jalr	-156(ra) # 80004af0 <_ZN15MemoryAllocator8mem_freeEPv>
    80004b94:	00813083          	ld	ra,8(sp)
    80004b98:	00013403          	ld	s0,0(sp)
    80004b9c:	01010113          	addi	sp,sp,16
    80004ba0:	00008067          	ret

0000000080004ba4 <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    80004ba4:	ff010113          	addi	sp,sp,-16
    80004ba8:	00113423          	sd	ra,8(sp)
    80004bac:	00813023          	sd	s0,0(sp)
    80004bb0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    80004bb4:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    80004bb8:	00000097          	auipc	ra,0x0
    80004bbc:	fc4080e7          	jalr	-60(ra) # 80004b7c <_ZN15MemoryAllocator5kfreeEPv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004bc0:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004bc4:	fffff097          	auipc	ra,0xfffff
    80004bc8:	7e4080e7          	jalr	2020(ra) # 800043a8 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004bcc:	00813083          	ld	ra,8(sp)
    80004bd0:	00013403          	ld	s0,0(sp)
    80004bd4:	01010113          	addi	sp,sp,16
    80004bd8:	00008067          	ret

0000000080004bdc <_Z12slabInitTestv>:
#include "../h/slabTests.hpp"

void slabInitTest()
{
    80004bdc:	ff010113          	addi	sp,sp,-16
    80004be0:	00113423          	sd	ra,8(sp)
    80004be4:	00813023          	sd	s0,0(sp)
    80004be8:	01010413          	addi	s0,sp,16
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004bec:	00f00593          	li	a1,15
    80004bf0:	00007797          	auipc	a5,0x7
    80004bf4:	d207b783          	ld	a5,-736(a5) # 8000b910 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004bf8:	0007b503          	ld	a0,0(a5)
    80004bfc:	ffffd097          	auipc	ra,0xffffd
    80004c00:	d24080e7          	jalr	-732(ra) # 80001920 <_Z9kmem_initPvi>
}
    80004c04:	00813083          	ld	ra,8(sp)
    80004c08:	00013403          	ld	s0,0(sp)
    80004c0c:	01010113          	addi	sp,sp,16
    80004c10:	00008067          	ret

0000000080004c14 <_Z19slabCacheCreateTestv>:

void slabCacheCreateTest()
{
    80004c14:	fe010113          	addi	sp,sp,-32
    80004c18:	00113c23          	sd	ra,24(sp)
    80004c1c:	00813823          	sd	s0,16(sp)
    80004c20:	00913423          	sd	s1,8(sp)
    80004c24:	01213023          	sd	s2,0(sp)
    80004c28:	02010413          	addi	s0,sp,32
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004c2c:	00f00593          	li	a1,15
    80004c30:	00007797          	auipc	a5,0x7
    80004c34:	ce07b783          	ld	a5,-800(a5) # 8000b910 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004c38:	0007b503          	ld	a0,0(a5)
    80004c3c:	ffffd097          	auipc	ra,0xffffd
    80004c40:	ce4080e7          	jalr	-796(ra) # 80001920 <_Z9kmem_initPvi>
    kmem_cache_t* cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    80004c44:	00000693          	li	a3,0
    80004c48:	00000613          	li	a2,0
    80004c4c:	00a00593          	li	a1,10
    80004c50:	00005517          	auipc	a0,0x5
    80004c54:	8c050513          	addi	a0,a0,-1856 # 80009510 <CONSOLE_STATUS+0x500>
    80004c58:	ffffd097          	auipc	ra,0xffffd
    80004c5c:	de4080e7          	jalr	-540(ra) # 80001a3c <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004c60:	00050493          	mv	s1,a0
    kmem_cache_t* cache2 = kmem_cache_create("Cache test 2", 10, nullptr,nullptr);
    80004c64:	00000693          	li	a3,0
    80004c68:	00000613          	li	a2,0
    80004c6c:	00a00593          	li	a1,10
    80004c70:	00005517          	auipc	a0,0x5
    80004c74:	8b050513          	addi	a0,a0,-1872 # 80009520 <CONSOLE_STATUS+0x510>
    80004c78:	ffffd097          	auipc	ra,0xffffd
    80004c7c:	dc4080e7          	jalr	-572(ra) # 80001a3c <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004c80:	00050913          	mv	s2,a0
    kmem_cache_t* cache3 = kmem_cache_create("Cache test 3", 10, nullptr,nullptr);
    80004c84:	00000693          	li	a3,0
    80004c88:	00000613          	li	a2,0
    80004c8c:	00a00593          	li	a1,10
    80004c90:	00005517          	auipc	a0,0x5
    80004c94:	8a050513          	addi	a0,a0,-1888 # 80009530 <CONSOLE_STATUS+0x520>
    80004c98:	ffffd097          	auipc	ra,0xffffd
    80004c9c:	da4080e7          	jalr	-604(ra) # 80001a3c <_Z17kmem_cache_createPKcmPFvPvES3_>
    if(cache && cache2 && cache3)
    80004ca0:	00048a63          	beqz	s1,80004cb4 <_Z19slabCacheCreateTestv+0xa0>
    80004ca4:	00090863          	beqz	s2,80004cb4 <_Z19slabCacheCreateTestv+0xa0>
    80004ca8:	00050663          	beqz	a0,80004cb4 <_Z19slabCacheCreateTestv+0xa0>
        printSlabAllocatorInfo();
    80004cac:	ffffd097          	auipc	ra,0xffffd
    80004cb0:	048080e7          	jalr	72(ra) # 80001cf4 <_Z22printSlabAllocatorInfov>
}
    80004cb4:	01813083          	ld	ra,24(sp)
    80004cb8:	01013403          	ld	s0,16(sp)
    80004cbc:	00813483          	ld	s1,8(sp)
    80004cc0:	00013903          	ld	s2,0(sp)
    80004cc4:	02010113          	addi	sp,sp,32
    80004cc8:	00008067          	ret

0000000080004ccc <_Z20slabCacheCreateTest2v>:

void slabCacheCreateTest2()
{
    80004ccc:	fe010113          	addi	sp,sp,-32
    80004cd0:	00113c23          	sd	ra,24(sp)
    80004cd4:	00813823          	sd	s0,16(sp)
    80004cd8:	00913423          	sd	s1,8(sp)
    80004cdc:	01213023          	sd	s2,0(sp)
    80004ce0:	02010413          	addi	s0,sp,32
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004ce4:	00f00593          	li	a1,15
    80004ce8:	00007797          	auipc	a5,0x7
    80004cec:	c287b783          	ld	a5,-984(a5) # 8000b910 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004cf0:	0007b503          	ld	a0,0(a5)
    80004cf4:	ffffd097          	auipc	ra,0xffffd
    80004cf8:	c2c080e7          	jalr	-980(ra) # 80001920 <_Z9kmem_initPvi>
    kmem_cache_t * cache = nullptr;
    for(int i = 1;i<=60;i++)
    80004cfc:	00100493          	li	s1,1
    kmem_cache_t * cache = nullptr;
    80004d00:	00000913          	li	s2,0
    80004d04:	0280006f          	j	80004d2c <_Z20slabCacheCreateTest2v+0x60>
    {
        cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    80004d08:	00000693          	li	a3,0
    80004d0c:	00000613          	li	a2,0
    80004d10:	00a00593          	li	a1,10
    80004d14:	00004517          	auipc	a0,0x4
    80004d18:	7fc50513          	addi	a0,a0,2044 # 80009510 <CONSOLE_STATUS+0x500>
    80004d1c:	ffffd097          	auipc	ra,0xffffd
    80004d20:	d20080e7          	jalr	-736(ra) # 80001a3c <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004d24:	00050913          	mv	s2,a0
    for(int i = 1;i<=60;i++)
    80004d28:	0014849b          	addiw	s1,s1,1
    80004d2c:	03c00793          	li	a5,60
    80004d30:	fc97dce3          	bge	a5,s1,80004d08 <_Z20slabCacheCreateTest2v+0x3c>
    }
    printSlabAllocatorInfo();
    80004d34:	ffffd097          	auipc	ra,0xffffd
    80004d38:	fc0080e7          	jalr	-64(ra) # 80001cf4 <_Z22printSlabAllocatorInfov>
    kmem_cache_destroy(cache);
    80004d3c:	00090513          	mv	a0,s2
    80004d40:	ffffd097          	auipc	ra,0xffffd
    80004d44:	294080e7          	jalr	660(ra) # 80001fd4 <_Z18kmem_cache_destroyP12kmem_cache_s>
    80004d48:	01813083          	ld	ra,24(sp)
    80004d4c:	01013403          	ld	s0,16(sp)
    80004d50:	00813483          	ld	s1,8(sp)
    80004d54:	00013903          	ld	s2,0(sp)
    80004d58:	02010113          	addi	sp,sp,32
    80004d5c:	00008067          	ret

0000000080004d60 <_ZN10KSemaphoreC1Ei>:
#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"

KSemaphore::KSemaphore(int val)
    80004d60:	ff010113          	addi	sp,sp,-16
    80004d64:	00813423          	sd	s0,8(sp)
    80004d68:	01010413          	addi	s0,sp,16
{
    this->val = val;
    80004d6c:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80004d70:	00053423          	sd	zero,8(a0)
    80004d74:	00053023          	sd	zero,0(a0)
}
    80004d78:	00813403          	ld	s0,8(sp)
    80004d7c:	01010113          	addi	sp,sp,16
    80004d80:	00008067          	ret

0000000080004d84 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80004d84:	ff010113          	addi	sp,sp,-16
    80004d88:	00813423          	sd	s0,8(sp)
    80004d8c:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80004d90:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    80004d94:	00053783          	ld	a5,0(a0)
    80004d98:	00078e63          	beqz	a5,80004db4 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80004d9c:	00853783          	ld	a5,8(a0)
    80004da0:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    80004da4:	00b53423          	sd	a1,8(a0)
    }
}
    80004da8:	00813403          	ld	s0,8(sp)
    80004dac:	01010113          	addi	sp,sp,16
    80004db0:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80004db4:	00b53423          	sd	a1,8(a0)
    80004db8:	00b53023          	sd	a1,0(a0)
    80004dbc:	fedff06f          	j	80004da8 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080004dc0 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    80004dc0:	ff010113          	addi	sp,sp,-16
    80004dc4:	00113423          	sd	ra,8(sp)
    80004dc8:	00813023          	sd	s0,0(sp)
    80004dcc:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80004dd0:	00007797          	auipc	a5,0x7
    80004dd4:	b907b783          	ld	a5,-1136(a5) # 8000b960 <_GLOBAL_OFFSET_TABLE_+0x68>
    80004dd8:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80004ddc:	00200793          	li	a5,2
    80004de0:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    80004de4:	00000097          	auipc	ra,0x0
    80004de8:	fa0080e7          	jalr	-96(ra) # 80004d84 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80004dec:	ffffd097          	auipc	ra,0xffffd
    80004df0:	68c080e7          	jalr	1676(ra) # 80002478 <_ZN3PCB8dispatchEv>
}
    80004df4:	00813083          	ld	ra,8(sp)
    80004df8:	00013403          	ld	s0,0(sp)
    80004dfc:	01010113          	addi	sp,sp,16
    80004e00:	00008067          	ret

0000000080004e04 <_ZN10KSemaphore4waitEv>:
    PCB::running->retFromClosedSem = false;
    80004e04:	00007797          	auipc	a5,0x7
    80004e08:	b5c7b783          	ld	a5,-1188(a5) # 8000b960 <_GLOBAL_OFFSET_TABLE_+0x68>
    80004e0c:	0007b783          	ld	a5,0(a5)
    80004e10:	04078c23          	sb	zero,88(a5)
    if(--val < 0)
    80004e14:	01052783          	lw	a5,16(a0)
    80004e18:	fff7879b          	addiw	a5,a5,-1
    80004e1c:	00f52823          	sw	a5,16(a0)
    80004e20:	02079713          	slli	a4,a5,0x20
    80004e24:	00074663          	bltz	a4,80004e30 <_ZN10KSemaphore4waitEv+0x2c>
}
    80004e28:	00000513          	li	a0,0
    80004e2c:	00008067          	ret
{
    80004e30:	ff010113          	addi	sp,sp,-16
    80004e34:	00113423          	sd	ra,8(sp)
    80004e38:	00813023          	sd	s0,0(sp)
    80004e3c:	01010413          	addi	s0,sp,16
        block();
    80004e40:	00000097          	auipc	ra,0x0
    80004e44:	f80080e7          	jalr	-128(ra) # 80004dc0 <_ZN10KSemaphore5blockEv>
}
    80004e48:	00000513          	li	a0,0
    80004e4c:	00813083          	ld	ra,8(sp)
    80004e50:	00013403          	ld	s0,0(sp)
    80004e54:	01010113          	addi	sp,sp,16
    80004e58:	00008067          	ret

0000000080004e5c <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80004e5c:	ff010113          	addi	sp,sp,-16
    80004e60:	00813423          	sd	s0,8(sp)
    80004e64:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80004e68:	00053503          	ld	a0,0(a0)
    80004e6c:	00813403          	ld	s0,8(sp)
    80004e70:	01010113          	addi	sp,sp,16
    80004e74:	00008067          	ret

0000000080004e78 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80004e78:	ff010113          	addi	sp,sp,-16
    80004e7c:	00813423          	sd	s0,8(sp)
    80004e80:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80004e84:	00053783          	ld	a5,0(a0)
    80004e88:	00078c63          	beqz	a5,80004ea0 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80004e8c:	0087b703          	ld	a4,8(a5)
    80004e90:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80004e94:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    80004e98:	00053783          	ld	a5,0(a0)
    80004e9c:	00078863          	beqz	a5,80004eac <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    80004ea0:	00813403          	ld	s0,8(sp)
    80004ea4:	01010113          	addi	sp,sp,16
    80004ea8:	00008067          	ret
        tailBlocked =0;
    80004eac:	00053423          	sd	zero,8(a0)
    80004eb0:	ff1ff06f          	j	80004ea0 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

0000000080004eb4 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    80004eb4:	fe010113          	addi	sp,sp,-32
    80004eb8:	00113c23          	sd	ra,24(sp)
    80004ebc:	00813823          	sd	s0,16(sp)
    80004ec0:	00913423          	sd	s1,8(sp)
    80004ec4:	01213023          	sd	s2,0(sp)
    80004ec8:	02010413          	addi	s0,sp,32
    80004ecc:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80004ed0:	00090513          	mv	a0,s2
    80004ed4:	00000097          	auipc	ra,0x0
    80004ed8:	f88080e7          	jalr	-120(ra) # 80004e5c <_ZN10KSemaphore15getFirstBlockedEv>
    80004edc:	00050493          	mv	s1,a0
    80004ee0:	02050463          	beqz	a0,80004f08 <_ZN10KSemaphoreD1Ev+0x54>
        removeFirstBlocked();
    80004ee4:	00090513          	mv	a0,s2
    80004ee8:	00000097          	auipc	ra,0x0
    80004eec:	f90080e7          	jalr	-112(ra) # 80004e78 <_ZN10KSemaphore18removeFirstBlockedEv>
        pcb->retFromClosedSem = true;
    80004ef0:	00100793          	li	a5,1
    80004ef4:	04f48c23          	sb	a5,88(s1)
        Scheduler::put(pcb);
    80004ef8:	00048513          	mv	a0,s1
    80004efc:	fffff097          	auipc	ra,0xfffff
    80004f00:	9ec080e7          	jalr	-1556(ra) # 800038e8 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80004f04:	fcdff06f          	j	80004ed0 <_ZN10KSemaphoreD1Ev+0x1c>
}
    80004f08:	01813083          	ld	ra,24(sp)
    80004f0c:	01013403          	ld	s0,16(sp)
    80004f10:	00813483          	ld	s1,8(sp)
    80004f14:	00013903          	ld	s2,0(sp)
    80004f18:	02010113          	addi	sp,sp,32
    80004f1c:	00008067          	ret

0000000080004f20 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    80004f20:	fe010113          	addi	sp,sp,-32
    80004f24:	00113c23          	sd	ra,24(sp)
    80004f28:	00813823          	sd	s0,16(sp)
    80004f2c:	00913423          	sd	s1,8(sp)
    80004f30:	01213023          	sd	s2,0(sp)
    80004f34:	02010413          	addi	s0,sp,32
    80004f38:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    80004f3c:	00000097          	auipc	ra,0x0
    80004f40:	f20080e7          	jalr	-224(ra) # 80004e5c <_ZN10KSemaphore15getFirstBlockedEv>
    80004f44:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80004f48:	00090513          	mv	a0,s2
    80004f4c:	00000097          	auipc	ra,0x0
    80004f50:	f2c080e7          	jalr	-212(ra) # 80004e78 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80004f54:	00048863          	beqz	s1,80004f64 <_ZN10KSemaphore7unblockEv+0x44>
    {
        Scheduler::put(fr);
    80004f58:	00048513          	mv	a0,s1
    80004f5c:	fffff097          	auipc	ra,0xfffff
    80004f60:	98c080e7          	jalr	-1652(ra) # 800038e8 <_ZN9Scheduler3putEP3PCB>
    }
}
    80004f64:	01813083          	ld	ra,24(sp)
    80004f68:	01013403          	ld	s0,16(sp)
    80004f6c:	00813483          	ld	s1,8(sp)
    80004f70:	00013903          	ld	s2,0(sp)
    80004f74:	02010113          	addi	sp,sp,32
    80004f78:	00008067          	ret

0000000080004f7c <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80004f7c:	01052783          	lw	a5,16(a0)
    80004f80:	0017879b          	addiw	a5,a5,1
    80004f84:	0007871b          	sext.w	a4,a5
    80004f88:	00f52823          	sw	a5,16(a0)
    80004f8c:	00e05663          	blez	a4,80004f98 <_ZN10KSemaphore6signalEv+0x1c>
}
    80004f90:	00000513          	li	a0,0
    80004f94:	00008067          	ret
uint64 KSemaphore::signal() {
    80004f98:	ff010113          	addi	sp,sp,-16
    80004f9c:	00113423          	sd	ra,8(sp)
    80004fa0:	00813023          	sd	s0,0(sp)
    80004fa4:	01010413          	addi	s0,sp,16
        unblock();
    80004fa8:	00000097          	auipc	ra,0x0
    80004fac:	f78080e7          	jalr	-136(ra) # 80004f20 <_ZN10KSemaphore7unblockEv>
}
    80004fb0:	00000513          	li	a0,0
    80004fb4:	00813083          	ld	ra,8(sp)
    80004fb8:	00013403          	ld	s0,0(sp)
    80004fbc:	01010113          	addi	sp,sp,16
    80004fc0:	00008067          	ret

0000000080004fc4 <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    80004fc4:	ff010113          	addi	sp,sp,-16
    80004fc8:	00113423          	sd	ra,8(sp)
    80004fcc:	00813023          	sd	s0,0(sp)
    80004fd0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    80004fd4:	00000097          	auipc	ra,0x0
    80004fd8:	b44080e7          	jalr	-1212(ra) # 80004b18 <_ZN15MemoryAllocator7kmallocEm>
}
    80004fdc:	00813083          	ld	ra,8(sp)
    80004fe0:	00013403          	ld	s0,0(sp)
    80004fe4:	01010113          	addi	sp,sp,16
    80004fe8:	00008067          	ret

0000000080004fec <_ZN10KSemaphore14semOpenHandlerEv>:
{
    80004fec:	fd010113          	addi	sp,sp,-48
    80004ff0:	02113423          	sd	ra,40(sp)
    80004ff4:	02813023          	sd	s0,32(sp)
    80004ff8:	00913c23          	sd	s1,24(sp)
    80004ffc:	01213823          	sd	s2,16(sp)
    80005000:	01313423          	sd	s3,8(sp)
    80005004:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80005008:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    8000500c:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    80005010:	01800513          	li	a0,24
    80005014:	00000097          	auipc	ra,0x0
    80005018:	fb0080e7          	jalr	-80(ra) # 80004fc4 <_ZN10KSemaphorenwEm>
    8000501c:	00050493          	mv	s1,a0
    80005020:	0009859b          	sext.w	a1,s3
    80005024:	00000097          	auipc	ra,0x0
    80005028:	d3c080e7          	jalr	-708(ra) # 80004d60 <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    8000502c:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    80005030:	02048663          	beqz	s1,8000505c <_ZN10KSemaphore14semOpenHandlerEv+0x70>
            __asm__ volatile("li a0, 0");
    80005034:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80005038:	fffff097          	auipc	ra,0xfffff
    8000503c:	370080e7          	jalr	880(ra) # 800043a8 <_ZN5Riscv13w_a0_sscratchEv>
}
    80005040:	02813083          	ld	ra,40(sp)
    80005044:	02013403          	ld	s0,32(sp)
    80005048:	01813483          	ld	s1,24(sp)
    8000504c:	01013903          	ld	s2,16(sp)
    80005050:	00813983          	ld	s3,8(sp)
    80005054:	03010113          	addi	sp,sp,48
    80005058:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    8000505c:	fff00513          	li	a0,-1
    80005060:	fd9ff06f          	j	80005038 <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

0000000080005064 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    80005064:	ff010113          	addi	sp,sp,-16
    80005068:	00113423          	sd	ra,8(sp)
    8000506c:	00813023          	sd	s0,0(sp)
    80005070:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80005074:	00000097          	auipc	ra,0x0
    80005078:	b08080e7          	jalr	-1272(ra) # 80004b7c <_ZN15MemoryAllocator5kfreeEPv>
}
    8000507c:	00813083          	ld	ra,8(sp)
    80005080:	00013403          	ld	s0,0(sp)
    80005084:	01010113          	addi	sp,sp,16
    80005088:	00008067          	ret

000000008000508c <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    8000508c:	ff010113          	addi	sp,sp,-16
    80005090:	00113423          	sd	ra,8(sp)
    80005094:	00813023          	sd	s0,0(sp)
    80005098:	01010413          	addi	s0,sp,16
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    8000509c:	00058513          	mv	a0,a1
    kSem->wait();
    800050a0:	00000097          	auipc	ra,0x0
    800050a4:	d64080e7          	jalr	-668(ra) # 80004e04 <_ZN10KSemaphore4waitEv>
    if(PCB::running->retFromClosedSem)
    800050a8:	00007797          	auipc	a5,0x7
    800050ac:	8b87b783          	ld	a5,-1864(a5) # 8000b960 <_GLOBAL_OFFSET_TABLE_+0x68>
    800050b0:	0007b783          	ld	a5,0(a5)
    800050b4:	0587c783          	lbu	a5,88(a5)
    800050b8:	02078063          	beqz	a5,800050d8 <_ZN10KSemaphore14semWaitHandlerEv+0x4c>
        __asm__ volatile("li a0, 0x1");
    800050bc:	00100513          	li	a0,1
    else
        __asm__ volatile("li a0, 0x0");
    Riscv::w_a0_sscratch();
    800050c0:	fffff097          	auipc	ra,0xfffff
    800050c4:	2e8080e7          	jalr	744(ra) # 800043a8 <_ZN5Riscv13w_a0_sscratchEv>
}
    800050c8:	00813083          	ld	ra,8(sp)
    800050cc:	00013403          	ld	s0,0(sp)
    800050d0:	01010113          	addi	sp,sp,16
    800050d4:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    800050d8:	00000513          	li	a0,0
    800050dc:	fe5ff06f          	j	800050c0 <_ZN10KSemaphore14semWaitHandlerEv+0x34>

00000000800050e0 <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler() {
    800050e0:	ff010113          	addi	sp,sp,-16
    800050e4:	00113423          	sd	ra,8(sp)
    800050e8:	00813023          	sd	s0,0(sp)
    800050ec:	01010413          	addi	s0,sp,16
    KSemaphore *kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800050f0:	00058513          	mv	a0,a1
    if (kSem == 0)
    800050f4:	02050463          	beqz	a0,8000511c <_ZN10KSemaphore16semSignalHandlerEv+0x3c>
    {
        __asm__ volatile("li a0, 0x1");
    }
    else
    {
        kSem->signal();
    800050f8:	00000097          	auipc	ra,0x0
    800050fc:	e84080e7          	jalr	-380(ra) # 80004f7c <_ZN10KSemaphore6signalEv>
        __asm__ volatile("li a0, 0x0");
    80005100:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80005104:	fffff097          	auipc	ra,0xfffff
    80005108:	2a4080e7          	jalr	676(ra) # 800043a8 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000510c:	00813083          	ld	ra,8(sp)
    80005110:	00013403          	ld	s0,0(sp)
    80005114:	01010113          	addi	sp,sp,16
    80005118:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    8000511c:	00100513          	li	a0,1
    80005120:	fe5ff06f          	j	80005104 <_ZN10KSemaphore16semSignalHandlerEv+0x24>

0000000080005124 <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    80005124:	fe010113          	addi	sp,sp,-32
    80005128:	00113c23          	sd	ra,24(sp)
    8000512c:	00813823          	sd	s0,16(sp)
    80005130:	00913423          	sd	s1,8(sp)
    80005134:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80005138:	00058493          	mv	s1,a1
    delete kSem;
    8000513c:	00048e63          	beqz	s1,80005158 <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    80005140:	00048513          	mv	a0,s1
    80005144:	00000097          	auipc	ra,0x0
    80005148:	d70080e7          	jalr	-656(ra) # 80004eb4 <_ZN10KSemaphoreD1Ev>
    8000514c:	00048513          	mv	a0,s1
    80005150:	00000097          	auipc	ra,0x0
    80005154:	f14080e7          	jalr	-236(ra) # 80005064 <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    80005158:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    8000515c:	fffff097          	auipc	ra,0xfffff
    80005160:	24c080e7          	jalr	588(ra) # 800043a8 <_ZN5Riscv13w_a0_sscratchEv>
}
    80005164:	01813083          	ld	ra,24(sp)
    80005168:	01013403          	ld	s0,16(sp)
    8000516c:	00813483          	ld	s1,8(sp)
    80005170:	02010113          	addi	sp,sp,32
    80005174:	00008067          	ret

0000000080005178 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005178:	fe010113          	addi	sp,sp,-32
    8000517c:	00113c23          	sd	ra,24(sp)
    80005180:	00813823          	sd	s0,16(sp)
    80005184:	00913423          	sd	s1,8(sp)
    80005188:	02010413          	addi	s0,sp,32
    8000518c:	00050493          	mv	s1,a0
    LOCK();
    80005190:	00100613          	li	a2,1
    80005194:	00000593          	li	a1,0
    80005198:	0000b517          	auipc	a0,0xb
    8000519c:	8d850513          	addi	a0,a0,-1832 # 8000fa70 <lockPrint>
    800051a0:	ffffc097          	auipc	ra,0xffffc
    800051a4:	078080e7          	jalr	120(ra) # 80001218 <copy_and_swap>
    800051a8:	fe0514e3          	bnez	a0,80005190 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800051ac:	0004c503          	lbu	a0,0(s1)
    800051b0:	00050a63          	beqz	a0,800051c4 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    800051b4:	ffffd097          	auipc	ra,0xffffd
    800051b8:	168080e7          	jalr	360(ra) # 8000231c <_Z4putcc>
        string++;
    800051bc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800051c0:	fedff06f          	j	800051ac <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    800051c4:	00000613          	li	a2,0
    800051c8:	00100593          	li	a1,1
    800051cc:	0000b517          	auipc	a0,0xb
    800051d0:	8a450513          	addi	a0,a0,-1884 # 8000fa70 <lockPrint>
    800051d4:	ffffc097          	auipc	ra,0xffffc
    800051d8:	044080e7          	jalr	68(ra) # 80001218 <copy_and_swap>
    800051dc:	fe0514e3          	bnez	a0,800051c4 <_Z11printStringPKc+0x4c>
}
    800051e0:	01813083          	ld	ra,24(sp)
    800051e4:	01013403          	ld	s0,16(sp)
    800051e8:	00813483          	ld	s1,8(sp)
    800051ec:	02010113          	addi	sp,sp,32
    800051f0:	00008067          	ret

00000000800051f4 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800051f4:	fd010113          	addi	sp,sp,-48
    800051f8:	02113423          	sd	ra,40(sp)
    800051fc:	02813023          	sd	s0,32(sp)
    80005200:	00913c23          	sd	s1,24(sp)
    80005204:	01213823          	sd	s2,16(sp)
    80005208:	01313423          	sd	s3,8(sp)
    8000520c:	01413023          	sd	s4,0(sp)
    80005210:	03010413          	addi	s0,sp,48
    80005214:	00050993          	mv	s3,a0
    80005218:	00058a13          	mv	s4,a1
    LOCK();
    8000521c:	00100613          	li	a2,1
    80005220:	00000593          	li	a1,0
    80005224:	0000b517          	auipc	a0,0xb
    80005228:	84c50513          	addi	a0,a0,-1972 # 8000fa70 <lockPrint>
    8000522c:	ffffc097          	auipc	ra,0xffffc
    80005230:	fec080e7          	jalr	-20(ra) # 80001218 <copy_and_swap>
    80005234:	fe0514e3          	bnez	a0,8000521c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005238:	00000913          	li	s2,0
    8000523c:	00090493          	mv	s1,s2
    80005240:	0019091b          	addiw	s2,s2,1
    80005244:	03495a63          	bge	s2,s4,80005278 <_Z9getStringPci+0x84>
        cc = getc();
    80005248:	ffffd097          	auipc	ra,0xffffd
    8000524c:	0ac080e7          	jalr	172(ra) # 800022f4 <_Z4getcv>
        if(cc < 1)
    80005250:	02050463          	beqz	a0,80005278 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80005254:	009984b3          	add	s1,s3,s1
    80005258:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8000525c:	00a00793          	li	a5,10
    80005260:	00f50a63          	beq	a0,a5,80005274 <_Z9getStringPci+0x80>
    80005264:	00d00793          	li	a5,13
    80005268:	fcf51ae3          	bne	a0,a5,8000523c <_Z9getStringPci+0x48>
        buf[i++] = c;
    8000526c:	00090493          	mv	s1,s2
    80005270:	0080006f          	j	80005278 <_Z9getStringPci+0x84>
    80005274:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005278:	009984b3          	add	s1,s3,s1
    8000527c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005280:	00000613          	li	a2,0
    80005284:	00100593          	li	a1,1
    80005288:	0000a517          	auipc	a0,0xa
    8000528c:	7e850513          	addi	a0,a0,2024 # 8000fa70 <lockPrint>
    80005290:	ffffc097          	auipc	ra,0xffffc
    80005294:	f88080e7          	jalr	-120(ra) # 80001218 <copy_and_swap>
    80005298:	fe0514e3          	bnez	a0,80005280 <_Z9getStringPci+0x8c>
    return buf;
}
    8000529c:	00098513          	mv	a0,s3
    800052a0:	02813083          	ld	ra,40(sp)
    800052a4:	02013403          	ld	s0,32(sp)
    800052a8:	01813483          	ld	s1,24(sp)
    800052ac:	01013903          	ld	s2,16(sp)
    800052b0:	00813983          	ld	s3,8(sp)
    800052b4:	00013a03          	ld	s4,0(sp)
    800052b8:	03010113          	addi	sp,sp,48
    800052bc:	00008067          	ret

00000000800052c0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800052c0:	ff010113          	addi	sp,sp,-16
    800052c4:	00813423          	sd	s0,8(sp)
    800052c8:	01010413          	addi	s0,sp,16
    800052cc:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800052d0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800052d4:	0006c603          	lbu	a2,0(a3)
    800052d8:	fd06071b          	addiw	a4,a2,-48
    800052dc:	0ff77713          	andi	a4,a4,255
    800052e0:	00900793          	li	a5,9
    800052e4:	02e7e063          	bltu	a5,a4,80005304 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800052e8:	0025179b          	slliw	a5,a0,0x2
    800052ec:	00a787bb          	addw	a5,a5,a0
    800052f0:	0017979b          	slliw	a5,a5,0x1
    800052f4:	00168693          	addi	a3,a3,1
    800052f8:	00c787bb          	addw	a5,a5,a2
    800052fc:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005300:	fd5ff06f          	j	800052d4 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005304:	00813403          	ld	s0,8(sp)
    80005308:	01010113          	addi	sp,sp,16
    8000530c:	00008067          	ret

0000000080005310 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005310:	fc010113          	addi	sp,sp,-64
    80005314:	02113c23          	sd	ra,56(sp)
    80005318:	02813823          	sd	s0,48(sp)
    8000531c:	02913423          	sd	s1,40(sp)
    80005320:	03213023          	sd	s2,32(sp)
    80005324:	01313c23          	sd	s3,24(sp)
    80005328:	04010413          	addi	s0,sp,64
    8000532c:	00050493          	mv	s1,a0
    80005330:	00058913          	mv	s2,a1
    80005334:	00060993          	mv	s3,a2
    LOCK();
    80005338:	00100613          	li	a2,1
    8000533c:	00000593          	li	a1,0
    80005340:	0000a517          	auipc	a0,0xa
    80005344:	73050513          	addi	a0,a0,1840 # 8000fa70 <lockPrint>
    80005348:	ffffc097          	auipc	ra,0xffffc
    8000534c:	ed0080e7          	jalr	-304(ra) # 80001218 <copy_and_swap>
    80005350:	fe0514e3          	bnez	a0,80005338 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005354:	00098463          	beqz	s3,8000535c <_Z8printIntiii+0x4c>
    80005358:	0804c463          	bltz	s1,800053e0 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    8000535c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005360:	00000593          	li	a1,0
    }

    i = 0;
    80005364:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005368:	0009079b          	sext.w	a5,s2
    8000536c:	0325773b          	remuw	a4,a0,s2
    80005370:	00048613          	mv	a2,s1
    80005374:	0014849b          	addiw	s1,s1,1
    80005378:	02071693          	slli	a3,a4,0x20
    8000537c:	0206d693          	srli	a3,a3,0x20
    80005380:	00006717          	auipc	a4,0x6
    80005384:	56070713          	addi	a4,a4,1376 # 8000b8e0 <digits>
    80005388:	00d70733          	add	a4,a4,a3
    8000538c:	00074683          	lbu	a3,0(a4)
    80005390:	fd040713          	addi	a4,s0,-48
    80005394:	00c70733          	add	a4,a4,a2
    80005398:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    8000539c:	0005071b          	sext.w	a4,a0
    800053a0:	0325553b          	divuw	a0,a0,s2
    800053a4:	fcf772e3          	bgeu	a4,a5,80005368 <_Z8printIntiii+0x58>
    if(neg)
    800053a8:	00058c63          	beqz	a1,800053c0 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    800053ac:	fd040793          	addi	a5,s0,-48
    800053b0:	009784b3          	add	s1,a5,s1
    800053b4:	02d00793          	li	a5,45
    800053b8:	fef48823          	sb	a5,-16(s1)
    800053bc:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800053c0:	fff4849b          	addiw	s1,s1,-1
    800053c4:	0204c463          	bltz	s1,800053ec <_Z8printIntiii+0xdc>
        putc(buf[i]);
    800053c8:	fd040793          	addi	a5,s0,-48
    800053cc:	009787b3          	add	a5,a5,s1
    800053d0:	ff07c503          	lbu	a0,-16(a5)
    800053d4:	ffffd097          	auipc	ra,0xffffd
    800053d8:	f48080e7          	jalr	-184(ra) # 8000231c <_Z4putcc>
    800053dc:	fe5ff06f          	j	800053c0 <_Z8printIntiii+0xb0>
        x = -xx;
    800053e0:	4090053b          	negw	a0,s1
        neg = 1;
    800053e4:	00100593          	li	a1,1
        x = -xx;
    800053e8:	f7dff06f          	j	80005364 <_Z8printIntiii+0x54>

    UNLOCK();
    800053ec:	00000613          	li	a2,0
    800053f0:	00100593          	li	a1,1
    800053f4:	0000a517          	auipc	a0,0xa
    800053f8:	67c50513          	addi	a0,a0,1660 # 8000fa70 <lockPrint>
    800053fc:	ffffc097          	auipc	ra,0xffffc
    80005400:	e1c080e7          	jalr	-484(ra) # 80001218 <copy_and_swap>
    80005404:	fe0514e3          	bnez	a0,800053ec <_Z8printIntiii+0xdc>
}
    80005408:	03813083          	ld	ra,56(sp)
    8000540c:	03013403          	ld	s0,48(sp)
    80005410:	02813483          	ld	s1,40(sp)
    80005414:	02013903          	ld	s2,32(sp)
    80005418:	01813983          	ld	s3,24(sp)
    8000541c:	04010113          	addi	sp,sp,64
    80005420:	00008067          	ret

0000000080005424 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "printing.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005424:	fd010113          	addi	sp,sp,-48
    80005428:	02113423          	sd	ra,40(sp)
    8000542c:	02813023          	sd	s0,32(sp)
    80005430:	00913c23          	sd	s1,24(sp)
    80005434:	01213823          	sd	s2,16(sp)
    80005438:	01313423          	sd	s3,8(sp)
    8000543c:	03010413          	addi	s0,sp,48
    80005440:	00050493          	mv	s1,a0
    80005444:	00058913          	mv	s2,a1
    80005448:	0015879b          	addiw	a5,a1,1
    8000544c:	0007851b          	sext.w	a0,a5
    80005450:	00f4a023          	sw	a5,0(s1)
    80005454:	0004a823          	sw	zero,16(s1)
    80005458:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000545c:	00251513          	slli	a0,a0,0x2
    80005460:	ffffd097          	auipc	ra,0xffffd
    80005464:	bdc080e7          	jalr	-1060(ra) # 8000203c <_Z9mem_allocm>
    80005468:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    8000546c:	01000513          	li	a0,16
    80005470:	fffff097          	auipc	ra,0xfffff
    80005474:	8fc080e7          	jalr	-1796(ra) # 80003d6c <_Znwm>
    80005478:	00050993          	mv	s3,a0
    8000547c:	00000593          	li	a1,0
    80005480:	fffff097          	auipc	ra,0xfffff
    80005484:	b40080e7          	jalr	-1216(ra) # 80003fc0 <_ZN9SemaphoreC1Ej>
    80005488:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    8000548c:	01000513          	li	a0,16
    80005490:	fffff097          	auipc	ra,0xfffff
    80005494:	8dc080e7          	jalr	-1828(ra) # 80003d6c <_Znwm>
    80005498:	00050993          	mv	s3,a0
    8000549c:	00090593          	mv	a1,s2
    800054a0:	fffff097          	auipc	ra,0xfffff
    800054a4:	b20080e7          	jalr	-1248(ra) # 80003fc0 <_ZN9SemaphoreC1Ej>
    800054a8:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800054ac:	01000513          	li	a0,16
    800054b0:	fffff097          	auipc	ra,0xfffff
    800054b4:	8bc080e7          	jalr	-1860(ra) # 80003d6c <_Znwm>
    800054b8:	00050913          	mv	s2,a0
    800054bc:	00100593          	li	a1,1
    800054c0:	fffff097          	auipc	ra,0xfffff
    800054c4:	b00080e7          	jalr	-1280(ra) # 80003fc0 <_ZN9SemaphoreC1Ej>
    800054c8:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800054cc:	01000513          	li	a0,16
    800054d0:	fffff097          	auipc	ra,0xfffff
    800054d4:	89c080e7          	jalr	-1892(ra) # 80003d6c <_Znwm>
    800054d8:	00050913          	mv	s2,a0
    800054dc:	00100593          	li	a1,1
    800054e0:	fffff097          	auipc	ra,0xfffff
    800054e4:	ae0080e7          	jalr	-1312(ra) # 80003fc0 <_ZN9SemaphoreC1Ej>
    800054e8:	0324b823          	sd	s2,48(s1)
}
    800054ec:	02813083          	ld	ra,40(sp)
    800054f0:	02013403          	ld	s0,32(sp)
    800054f4:	01813483          	ld	s1,24(sp)
    800054f8:	01013903          	ld	s2,16(sp)
    800054fc:	00813983          	ld	s3,8(sp)
    80005500:	03010113          	addi	sp,sp,48
    80005504:	00008067          	ret
    80005508:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    8000550c:	00098513          	mv	a0,s3
    80005510:	fffff097          	auipc	ra,0xfffff
    80005514:	884080e7          	jalr	-1916(ra) # 80003d94 <_ZdlPv>
    80005518:	00048513          	mv	a0,s1
    8000551c:	0000b097          	auipc	ra,0xb
    80005520:	62c080e7          	jalr	1580(ra) # 80010b48 <_Unwind_Resume>
    80005524:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005528:	00098513          	mv	a0,s3
    8000552c:	fffff097          	auipc	ra,0xfffff
    80005530:	868080e7          	jalr	-1944(ra) # 80003d94 <_ZdlPv>
    80005534:	00048513          	mv	a0,s1
    80005538:	0000b097          	auipc	ra,0xb
    8000553c:	610080e7          	jalr	1552(ra) # 80010b48 <_Unwind_Resume>
    80005540:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005544:	00090513          	mv	a0,s2
    80005548:	fffff097          	auipc	ra,0xfffff
    8000554c:	84c080e7          	jalr	-1972(ra) # 80003d94 <_ZdlPv>
    80005550:	00048513          	mv	a0,s1
    80005554:	0000b097          	auipc	ra,0xb
    80005558:	5f4080e7          	jalr	1524(ra) # 80010b48 <_Unwind_Resume>
    8000555c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005560:	00090513          	mv	a0,s2
    80005564:	fffff097          	auipc	ra,0xfffff
    80005568:	830080e7          	jalr	-2000(ra) # 80003d94 <_ZdlPv>
    8000556c:	00048513          	mv	a0,s1
    80005570:	0000b097          	auipc	ra,0xb
    80005574:	5d8080e7          	jalr	1496(ra) # 80010b48 <_Unwind_Resume>

0000000080005578 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005578:	fe010113          	addi	sp,sp,-32
    8000557c:	00113c23          	sd	ra,24(sp)
    80005580:	00813823          	sd	s0,16(sp)
    80005584:	00913423          	sd	s1,8(sp)
    80005588:	01213023          	sd	s2,0(sp)
    8000558c:	02010413          	addi	s0,sp,32
    80005590:	00050493          	mv	s1,a0
    80005594:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005598:	01853503          	ld	a0,24(a0)
    8000559c:	fffff097          	auipc	ra,0xfffff
    800055a0:	9ec080e7          	jalr	-1556(ra) # 80003f88 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800055a4:	0304b503          	ld	a0,48(s1)
    800055a8:	fffff097          	auipc	ra,0xfffff
    800055ac:	9e0080e7          	jalr	-1568(ra) # 80003f88 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800055b0:	0084b783          	ld	a5,8(s1)
    800055b4:	0144a703          	lw	a4,20(s1)
    800055b8:	00271713          	slli	a4,a4,0x2
    800055bc:	00e787b3          	add	a5,a5,a4
    800055c0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800055c4:	0144a783          	lw	a5,20(s1)
    800055c8:	0017879b          	addiw	a5,a5,1
    800055cc:	0004a703          	lw	a4,0(s1)
    800055d0:	02e7e7bb          	remw	a5,a5,a4
    800055d4:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800055d8:	0304b503          	ld	a0,48(s1)
    800055dc:	fffff097          	auipc	ra,0xfffff
    800055e0:	a30080e7          	jalr	-1488(ra) # 8000400c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800055e4:	0204b503          	ld	a0,32(s1)
    800055e8:	fffff097          	auipc	ra,0xfffff
    800055ec:	a24080e7          	jalr	-1500(ra) # 8000400c <_ZN9Semaphore6signalEv>

}
    800055f0:	01813083          	ld	ra,24(sp)
    800055f4:	01013403          	ld	s0,16(sp)
    800055f8:	00813483          	ld	s1,8(sp)
    800055fc:	00013903          	ld	s2,0(sp)
    80005600:	02010113          	addi	sp,sp,32
    80005604:	00008067          	ret

0000000080005608 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005608:	fe010113          	addi	sp,sp,-32
    8000560c:	00113c23          	sd	ra,24(sp)
    80005610:	00813823          	sd	s0,16(sp)
    80005614:	00913423          	sd	s1,8(sp)
    80005618:	01213023          	sd	s2,0(sp)
    8000561c:	02010413          	addi	s0,sp,32
    80005620:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005624:	02053503          	ld	a0,32(a0)
    80005628:	fffff097          	auipc	ra,0xfffff
    8000562c:	960080e7          	jalr	-1696(ra) # 80003f88 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005630:	0284b503          	ld	a0,40(s1)
    80005634:	fffff097          	auipc	ra,0xfffff
    80005638:	954080e7          	jalr	-1708(ra) # 80003f88 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    8000563c:	0084b703          	ld	a4,8(s1)
    80005640:	0104a783          	lw	a5,16(s1)
    80005644:	00279693          	slli	a3,a5,0x2
    80005648:	00d70733          	add	a4,a4,a3
    8000564c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005650:	0017879b          	addiw	a5,a5,1
    80005654:	0004a703          	lw	a4,0(s1)
    80005658:	02e7e7bb          	remw	a5,a5,a4
    8000565c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005660:	0284b503          	ld	a0,40(s1)
    80005664:	fffff097          	auipc	ra,0xfffff
    80005668:	9a8080e7          	jalr	-1624(ra) # 8000400c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    8000566c:	0184b503          	ld	a0,24(s1)
    80005670:	fffff097          	auipc	ra,0xfffff
    80005674:	99c080e7          	jalr	-1636(ra) # 8000400c <_ZN9Semaphore6signalEv>

    return ret;
}
    80005678:	00090513          	mv	a0,s2
    8000567c:	01813083          	ld	ra,24(sp)
    80005680:	01013403          	ld	s0,16(sp)
    80005684:	00813483          	ld	s1,8(sp)
    80005688:	00013903          	ld	s2,0(sp)
    8000568c:	02010113          	addi	sp,sp,32
    80005690:	00008067          	ret

0000000080005694 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005694:	fe010113          	addi	sp,sp,-32
    80005698:	00113c23          	sd	ra,24(sp)
    8000569c:	00813823          	sd	s0,16(sp)
    800056a0:	00913423          	sd	s1,8(sp)
    800056a4:	01213023          	sd	s2,0(sp)
    800056a8:	02010413          	addi	s0,sp,32
    800056ac:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800056b0:	02853503          	ld	a0,40(a0)
    800056b4:	fffff097          	auipc	ra,0xfffff
    800056b8:	8d4080e7          	jalr	-1836(ra) # 80003f88 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800056bc:	0304b503          	ld	a0,48(s1)
    800056c0:	fffff097          	auipc	ra,0xfffff
    800056c4:	8c8080e7          	jalr	-1848(ra) # 80003f88 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800056c8:	0144a783          	lw	a5,20(s1)
    800056cc:	0104a903          	lw	s2,16(s1)
    800056d0:	0327ce63          	blt	a5,s2,8000570c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800056d4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800056d8:	0304b503          	ld	a0,48(s1)
    800056dc:	fffff097          	auipc	ra,0xfffff
    800056e0:	930080e7          	jalr	-1744(ra) # 8000400c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800056e4:	0284b503          	ld	a0,40(s1)
    800056e8:	fffff097          	auipc	ra,0xfffff
    800056ec:	924080e7          	jalr	-1756(ra) # 8000400c <_ZN9Semaphore6signalEv>

    return ret;
}
    800056f0:	00090513          	mv	a0,s2
    800056f4:	01813083          	ld	ra,24(sp)
    800056f8:	01013403          	ld	s0,16(sp)
    800056fc:	00813483          	ld	s1,8(sp)
    80005700:	00013903          	ld	s2,0(sp)
    80005704:	02010113          	addi	sp,sp,32
    80005708:	00008067          	ret
        ret = cap - head + tail;
    8000570c:	0004a703          	lw	a4,0(s1)
    80005710:	4127093b          	subw	s2,a4,s2
    80005714:	00f9093b          	addw	s2,s2,a5
    80005718:	fc1ff06f          	j	800056d8 <_ZN9BufferCPP6getCntEv+0x44>

000000008000571c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    8000571c:	fe010113          	addi	sp,sp,-32
    80005720:	00113c23          	sd	ra,24(sp)
    80005724:	00813823          	sd	s0,16(sp)
    80005728:	00913423          	sd	s1,8(sp)
    8000572c:	02010413          	addi	s0,sp,32
    80005730:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005734:	00a00513          	li	a0,10
    80005738:	fffff097          	auipc	ra,0xfffff
    8000573c:	934080e7          	jalr	-1740(ra) # 8000406c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005740:	00004517          	auipc	a0,0x4
    80005744:	e0050513          	addi	a0,a0,-512 # 80009540 <CONSOLE_STATUS+0x530>
    80005748:	00000097          	auipc	ra,0x0
    8000574c:	a30080e7          	jalr	-1488(ra) # 80005178 <_Z11printStringPKc>
    while (getCnt()) {
    80005750:	00048513          	mv	a0,s1
    80005754:	00000097          	auipc	ra,0x0
    80005758:	f40080e7          	jalr	-192(ra) # 80005694 <_ZN9BufferCPP6getCntEv>
    8000575c:	02050c63          	beqz	a0,80005794 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005760:	0084b783          	ld	a5,8(s1)
    80005764:	0104a703          	lw	a4,16(s1)
    80005768:	00271713          	slli	a4,a4,0x2
    8000576c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005770:	0007c503          	lbu	a0,0(a5)
    80005774:	fffff097          	auipc	ra,0xfffff
    80005778:	8f8080e7          	jalr	-1800(ra) # 8000406c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    8000577c:	0104a783          	lw	a5,16(s1)
    80005780:	0017879b          	addiw	a5,a5,1
    80005784:	0004a703          	lw	a4,0(s1)
    80005788:	02e7e7bb          	remw	a5,a5,a4
    8000578c:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005790:	fc1ff06f          	j	80005750 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005794:	02100513          	li	a0,33
    80005798:	fffff097          	auipc	ra,0xfffff
    8000579c:	8d4080e7          	jalr	-1836(ra) # 8000406c <_ZN7Console4putcEc>
    Console::putc('\n');
    800057a0:	00a00513          	li	a0,10
    800057a4:	fffff097          	auipc	ra,0xfffff
    800057a8:	8c8080e7          	jalr	-1848(ra) # 8000406c <_ZN7Console4putcEc>
    mem_free(buffer);
    800057ac:	0084b503          	ld	a0,8(s1)
    800057b0:	ffffd097          	auipc	ra,0xffffd
    800057b4:	8bc080e7          	jalr	-1860(ra) # 8000206c <_Z8mem_freePv>
    delete itemAvailable;
    800057b8:	0204b503          	ld	a0,32(s1)
    800057bc:	00050863          	beqz	a0,800057cc <_ZN9BufferCPPD1Ev+0xb0>
    800057c0:	00053783          	ld	a5,0(a0)
    800057c4:	0087b783          	ld	a5,8(a5)
    800057c8:	000780e7          	jalr	a5
    delete spaceAvailable;
    800057cc:	0184b503          	ld	a0,24(s1)
    800057d0:	00050863          	beqz	a0,800057e0 <_ZN9BufferCPPD1Ev+0xc4>
    800057d4:	00053783          	ld	a5,0(a0)
    800057d8:	0087b783          	ld	a5,8(a5)
    800057dc:	000780e7          	jalr	a5
    delete mutexTail;
    800057e0:	0304b503          	ld	a0,48(s1)
    800057e4:	00050863          	beqz	a0,800057f4 <_ZN9BufferCPPD1Ev+0xd8>
    800057e8:	00053783          	ld	a5,0(a0)
    800057ec:	0087b783          	ld	a5,8(a5)
    800057f0:	000780e7          	jalr	a5
    delete mutexHead;
    800057f4:	0284b503          	ld	a0,40(s1)
    800057f8:	00050863          	beqz	a0,80005808 <_ZN9BufferCPPD1Ev+0xec>
    800057fc:	00053783          	ld	a5,0(a0)
    80005800:	0087b783          	ld	a5,8(a5)
    80005804:	000780e7          	jalr	a5
}
    80005808:	01813083          	ld	ra,24(sp)
    8000580c:	01013403          	ld	s0,16(sp)
    80005810:	00813483          	ld	s1,8(sp)
    80005814:	02010113          	addi	sp,sp,32
    80005818:	00008067          	ret

000000008000581c <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    8000581c:	fe010113          	addi	sp,sp,-32
    80005820:	00113c23          	sd	ra,24(sp)
    80005824:	00813823          	sd	s0,16(sp)
    80005828:	00913423          	sd	s1,8(sp)
    8000582c:	01213023          	sd	s2,0(sp)
    80005830:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005834:	00000913          	li	s2,0
    80005838:	0380006f          	j	80005870 <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000583c:	ffffd097          	auipc	ra,0xffffd
    80005840:	8dc080e7          	jalr	-1828(ra) # 80002118 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005844:	00148493          	addi	s1,s1,1
    80005848:	000027b7          	lui	a5,0x2
    8000584c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005850:	0097ee63          	bltu	a5,s1,8000586c <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005854:	00000713          	li	a4,0
    80005858:	000077b7          	lui	a5,0x7
    8000585c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005860:	fce7eee3          	bltu	a5,a4,8000583c <_Z11workerBodyAPv+0x20>
    80005864:	00170713          	addi	a4,a4,1
    80005868:	ff1ff06f          	j	80005858 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000586c:	00190913          	addi	s2,s2,1
    80005870:	00900793          	li	a5,9
    80005874:	0527e063          	bltu	a5,s2,800058b4 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005878:	00004517          	auipc	a0,0x4
    8000587c:	ce050513          	addi	a0,a0,-800 # 80009558 <CONSOLE_STATUS+0x548>
    80005880:	00000097          	auipc	ra,0x0
    80005884:	8f8080e7          	jalr	-1800(ra) # 80005178 <_Z11printStringPKc>
    80005888:	00000613          	li	a2,0
    8000588c:	00a00593          	li	a1,10
    80005890:	0009051b          	sext.w	a0,s2
    80005894:	00000097          	auipc	ra,0x0
    80005898:	a7c080e7          	jalr	-1412(ra) # 80005310 <_Z8printIntiii>
    8000589c:	00004517          	auipc	a0,0x4
    800058a0:	ec450513          	addi	a0,a0,-316 # 80009760 <CONSOLE_STATUS+0x750>
    800058a4:	00000097          	auipc	ra,0x0
    800058a8:	8d4080e7          	jalr	-1836(ra) # 80005178 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800058ac:	00000493          	li	s1,0
    800058b0:	f99ff06f          	j	80005848 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    800058b4:	00004517          	auipc	a0,0x4
    800058b8:	cac50513          	addi	a0,a0,-852 # 80009560 <CONSOLE_STATUS+0x550>
    800058bc:	00000097          	auipc	ra,0x0
    800058c0:	8bc080e7          	jalr	-1860(ra) # 80005178 <_Z11printStringPKc>
    finishedA = true;
    800058c4:	00100793          	li	a5,1
    800058c8:	0000a717          	auipc	a4,0xa
    800058cc:	1af70823          	sb	a5,432(a4) # 8000fa78 <finishedA>
}
    800058d0:	01813083          	ld	ra,24(sp)
    800058d4:	01013403          	ld	s0,16(sp)
    800058d8:	00813483          	ld	s1,8(sp)
    800058dc:	00013903          	ld	s2,0(sp)
    800058e0:	02010113          	addi	sp,sp,32
    800058e4:	00008067          	ret

00000000800058e8 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    800058e8:	fe010113          	addi	sp,sp,-32
    800058ec:	00113c23          	sd	ra,24(sp)
    800058f0:	00813823          	sd	s0,16(sp)
    800058f4:	00913423          	sd	s1,8(sp)
    800058f8:	01213023          	sd	s2,0(sp)
    800058fc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005900:	00000913          	li	s2,0
    80005904:	0380006f          	j	8000593c <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80005908:	ffffd097          	auipc	ra,0xffffd
    8000590c:	810080e7          	jalr	-2032(ra) # 80002118 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005910:	00148493          	addi	s1,s1,1
    80005914:	000027b7          	lui	a5,0x2
    80005918:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000591c:	0097ee63          	bltu	a5,s1,80005938 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005920:	00000713          	li	a4,0
    80005924:	000077b7          	lui	a5,0x7
    80005928:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000592c:	fce7eee3          	bltu	a5,a4,80005908 <_Z11workerBodyBPv+0x20>
    80005930:	00170713          	addi	a4,a4,1
    80005934:	ff1ff06f          	j	80005924 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005938:	00190913          	addi	s2,s2,1
    8000593c:	00f00793          	li	a5,15
    80005940:	0527e063          	bltu	a5,s2,80005980 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005944:	00004517          	auipc	a0,0x4
    80005948:	c2c50513          	addi	a0,a0,-980 # 80009570 <CONSOLE_STATUS+0x560>
    8000594c:	00000097          	auipc	ra,0x0
    80005950:	82c080e7          	jalr	-2004(ra) # 80005178 <_Z11printStringPKc>
    80005954:	00000613          	li	a2,0
    80005958:	00a00593          	li	a1,10
    8000595c:	0009051b          	sext.w	a0,s2
    80005960:	00000097          	auipc	ra,0x0
    80005964:	9b0080e7          	jalr	-1616(ra) # 80005310 <_Z8printIntiii>
    80005968:	00004517          	auipc	a0,0x4
    8000596c:	df850513          	addi	a0,a0,-520 # 80009760 <CONSOLE_STATUS+0x750>
    80005970:	00000097          	auipc	ra,0x0
    80005974:	808080e7          	jalr	-2040(ra) # 80005178 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005978:	00000493          	li	s1,0
    8000597c:	f99ff06f          	j	80005914 <_Z11workerBodyBPv+0x2c>
        }
    }
    thread_dispatch();
    80005980:	ffffc097          	auipc	ra,0xffffc
    80005984:	798080e7          	jalr	1944(ra) # 80002118 <_Z15thread_dispatchv>
    printString("B finished!\n");
    80005988:	00004517          	auipc	a0,0x4
    8000598c:	bf050513          	addi	a0,a0,-1040 # 80009578 <CONSOLE_STATUS+0x568>
    80005990:	fffff097          	auipc	ra,0xfffff
    80005994:	7e8080e7          	jalr	2024(ra) # 80005178 <_Z11printStringPKc>
    finishedB = true;
    80005998:	00100793          	li	a5,1
    8000599c:	0000a717          	auipc	a4,0xa
    800059a0:	0cf70ea3          	sb	a5,221(a4) # 8000fa79 <finishedB>
}
    800059a4:	01813083          	ld	ra,24(sp)
    800059a8:	01013403          	ld	s0,16(sp)
    800059ac:	00813483          	ld	s1,8(sp)
    800059b0:	00013903          	ld	s2,0(sp)
    800059b4:	02010113          	addi	sp,sp,32
    800059b8:	00008067          	ret

00000000800059bc <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    800059bc:	fe010113          	addi	sp,sp,-32
    800059c0:	00113c23          	sd	ra,24(sp)
    800059c4:	00813823          	sd	s0,16(sp)
    800059c8:	00913423          	sd	s1,8(sp)
    800059cc:	01213023          	sd	s2,0(sp)
    800059d0:	02010413          	addi	s0,sp,32
    800059d4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800059d8:	00100793          	li	a5,1
    800059dc:	02a7f863          	bgeu	a5,a0,80005a0c <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800059e0:	00a00793          	li	a5,10
    800059e4:	02f577b3          	remu	a5,a0,a5
    800059e8:	02078e63          	beqz	a5,80005a24 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800059ec:	fff48513          	addi	a0,s1,-1
    800059f0:	00000097          	auipc	ra,0x0
    800059f4:	fcc080e7          	jalr	-52(ra) # 800059bc <_Z9fibonaccim>
    800059f8:	00050913          	mv	s2,a0
    800059fc:	ffe48513          	addi	a0,s1,-2
    80005a00:	00000097          	auipc	ra,0x0
    80005a04:	fbc080e7          	jalr	-68(ra) # 800059bc <_Z9fibonaccim>
    80005a08:	00a90533          	add	a0,s2,a0
}
    80005a0c:	01813083          	ld	ra,24(sp)
    80005a10:	01013403          	ld	s0,16(sp)
    80005a14:	00813483          	ld	s1,8(sp)
    80005a18:	00013903          	ld	s2,0(sp)
    80005a1c:	02010113          	addi	sp,sp,32
    80005a20:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005a24:	ffffc097          	auipc	ra,0xffffc
    80005a28:	6f4080e7          	jalr	1780(ra) # 80002118 <_Z15thread_dispatchv>
    80005a2c:	fc1ff06f          	j	800059ec <_Z9fibonaccim+0x30>

0000000080005a30 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    80005a30:	fe010113          	addi	sp,sp,-32
    80005a34:	00113c23          	sd	ra,24(sp)
    80005a38:	00813823          	sd	s0,16(sp)
    80005a3c:	00913423          	sd	s1,8(sp)
    80005a40:	01213023          	sd	s2,0(sp)
    80005a44:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005a48:	00000493          	li	s1,0
    80005a4c:	0400006f          	j	80005a8c <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005a50:	00004517          	auipc	a0,0x4
    80005a54:	b3850513          	addi	a0,a0,-1224 # 80009588 <CONSOLE_STATUS+0x578>
    80005a58:	fffff097          	auipc	ra,0xfffff
    80005a5c:	720080e7          	jalr	1824(ra) # 80005178 <_Z11printStringPKc>
    80005a60:	00000613          	li	a2,0
    80005a64:	00a00593          	li	a1,10
    80005a68:	00048513          	mv	a0,s1
    80005a6c:	00000097          	auipc	ra,0x0
    80005a70:	8a4080e7          	jalr	-1884(ra) # 80005310 <_Z8printIntiii>
    80005a74:	00004517          	auipc	a0,0x4
    80005a78:	cec50513          	addi	a0,a0,-788 # 80009760 <CONSOLE_STATUS+0x750>
    80005a7c:	fffff097          	auipc	ra,0xfffff
    80005a80:	6fc080e7          	jalr	1788(ra) # 80005178 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005a84:	0014849b          	addiw	s1,s1,1
    80005a88:	0ff4f493          	andi	s1,s1,255
    80005a8c:	00200793          	li	a5,2
    80005a90:	fc97f0e3          	bgeu	a5,s1,80005a50 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80005a94:	00004517          	auipc	a0,0x4
    80005a98:	afc50513          	addi	a0,a0,-1284 # 80009590 <CONSOLE_STATUS+0x580>
    80005a9c:	fffff097          	auipc	ra,0xfffff
    80005aa0:	6dc080e7          	jalr	1756(ra) # 80005178 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005aa4:	00700313          	li	t1,7
    thread_dispatch();
    80005aa8:	ffffc097          	auipc	ra,0xffffc
    80005aac:	670080e7          	jalr	1648(ra) # 80002118 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005ab0:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80005ab4:	00004517          	auipc	a0,0x4
    80005ab8:	aec50513          	addi	a0,a0,-1300 # 800095a0 <CONSOLE_STATUS+0x590>
    80005abc:	fffff097          	auipc	ra,0xfffff
    80005ac0:	6bc080e7          	jalr	1724(ra) # 80005178 <_Z11printStringPKc>
    80005ac4:	00000613          	li	a2,0
    80005ac8:	00a00593          	li	a1,10
    80005acc:	0009051b          	sext.w	a0,s2
    80005ad0:	00000097          	auipc	ra,0x0
    80005ad4:	840080e7          	jalr	-1984(ra) # 80005310 <_Z8printIntiii>
    80005ad8:	00004517          	auipc	a0,0x4
    80005adc:	c8850513          	addi	a0,a0,-888 # 80009760 <CONSOLE_STATUS+0x750>
    80005ae0:	fffff097          	auipc	ra,0xfffff
    80005ae4:	698080e7          	jalr	1688(ra) # 80005178 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80005ae8:	00c00513          	li	a0,12
    80005aec:	00000097          	auipc	ra,0x0
    80005af0:	ed0080e7          	jalr	-304(ra) # 800059bc <_Z9fibonaccim>
    80005af4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005af8:	00004517          	auipc	a0,0x4
    80005afc:	ab050513          	addi	a0,a0,-1360 # 800095a8 <CONSOLE_STATUS+0x598>
    80005b00:	fffff097          	auipc	ra,0xfffff
    80005b04:	678080e7          	jalr	1656(ra) # 80005178 <_Z11printStringPKc>
    80005b08:	00000613          	li	a2,0
    80005b0c:	00a00593          	li	a1,10
    80005b10:	0009051b          	sext.w	a0,s2
    80005b14:	fffff097          	auipc	ra,0xfffff
    80005b18:	7fc080e7          	jalr	2044(ra) # 80005310 <_Z8printIntiii>
    80005b1c:	00004517          	auipc	a0,0x4
    80005b20:	c4450513          	addi	a0,a0,-956 # 80009760 <CONSOLE_STATUS+0x750>
    80005b24:	fffff097          	auipc	ra,0xfffff
    80005b28:	654080e7          	jalr	1620(ra) # 80005178 <_Z11printStringPKc>
    80005b2c:	0400006f          	j	80005b6c <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005b30:	00004517          	auipc	a0,0x4
    80005b34:	a5850513          	addi	a0,a0,-1448 # 80009588 <CONSOLE_STATUS+0x578>
    80005b38:	fffff097          	auipc	ra,0xfffff
    80005b3c:	640080e7          	jalr	1600(ra) # 80005178 <_Z11printStringPKc>
    80005b40:	00000613          	li	a2,0
    80005b44:	00a00593          	li	a1,10
    80005b48:	00048513          	mv	a0,s1
    80005b4c:	fffff097          	auipc	ra,0xfffff
    80005b50:	7c4080e7          	jalr	1988(ra) # 80005310 <_Z8printIntiii>
    80005b54:	00004517          	auipc	a0,0x4
    80005b58:	c0c50513          	addi	a0,a0,-1012 # 80009760 <CONSOLE_STATUS+0x750>
    80005b5c:	fffff097          	auipc	ra,0xfffff
    80005b60:	61c080e7          	jalr	1564(ra) # 80005178 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005b64:	0014849b          	addiw	s1,s1,1
    80005b68:	0ff4f493          	andi	s1,s1,255
    80005b6c:	00500793          	li	a5,5
    80005b70:	fc97f0e3          	bgeu	a5,s1,80005b30 <_Z11workerBodyCPv+0x100>
    }

    thread_dispatch();
    80005b74:	ffffc097          	auipc	ra,0xffffc
    80005b78:	5a4080e7          	jalr	1444(ra) # 80002118 <_Z15thread_dispatchv>
    printString("A finished!\n");
    80005b7c:	00004517          	auipc	a0,0x4
    80005b80:	9e450513          	addi	a0,a0,-1564 # 80009560 <CONSOLE_STATUS+0x550>
    80005b84:	fffff097          	auipc	ra,0xfffff
    80005b88:	5f4080e7          	jalr	1524(ra) # 80005178 <_Z11printStringPKc>
    finishedC = true;
    80005b8c:	00100793          	li	a5,1
    80005b90:	0000a717          	auipc	a4,0xa
    80005b94:	eef70523          	sb	a5,-278(a4) # 8000fa7a <finishedC>
}
    80005b98:	01813083          	ld	ra,24(sp)
    80005b9c:	01013403          	ld	s0,16(sp)
    80005ba0:	00813483          	ld	s1,8(sp)
    80005ba4:	00013903          	ld	s2,0(sp)
    80005ba8:	02010113          	addi	sp,sp,32
    80005bac:	00008067          	ret

0000000080005bb0 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80005bb0:	fe010113          	addi	sp,sp,-32
    80005bb4:	00113c23          	sd	ra,24(sp)
    80005bb8:	00813823          	sd	s0,16(sp)
    80005bbc:	00913423          	sd	s1,8(sp)
    80005bc0:	01213023          	sd	s2,0(sp)
    80005bc4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005bc8:	00a00493          	li	s1,10
    80005bcc:	0400006f          	j	80005c0c <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005bd0:	00004517          	auipc	a0,0x4
    80005bd4:	9e850513          	addi	a0,a0,-1560 # 800095b8 <CONSOLE_STATUS+0x5a8>
    80005bd8:	fffff097          	auipc	ra,0xfffff
    80005bdc:	5a0080e7          	jalr	1440(ra) # 80005178 <_Z11printStringPKc>
    80005be0:	00000613          	li	a2,0
    80005be4:	00a00593          	li	a1,10
    80005be8:	00048513          	mv	a0,s1
    80005bec:	fffff097          	auipc	ra,0xfffff
    80005bf0:	724080e7          	jalr	1828(ra) # 80005310 <_Z8printIntiii>
    80005bf4:	00004517          	auipc	a0,0x4
    80005bf8:	b6c50513          	addi	a0,a0,-1172 # 80009760 <CONSOLE_STATUS+0x750>
    80005bfc:	fffff097          	auipc	ra,0xfffff
    80005c00:	57c080e7          	jalr	1404(ra) # 80005178 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005c04:	0014849b          	addiw	s1,s1,1
    80005c08:	0ff4f493          	andi	s1,s1,255
    80005c0c:	00c00793          	li	a5,12
    80005c10:	fc97f0e3          	bgeu	a5,s1,80005bd0 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005c14:	00004517          	auipc	a0,0x4
    80005c18:	9ac50513          	addi	a0,a0,-1620 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80005c1c:	fffff097          	auipc	ra,0xfffff
    80005c20:	55c080e7          	jalr	1372(ra) # 80005178 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005c24:	00500313          	li	t1,5
    thread_dispatch();
    80005c28:	ffffc097          	auipc	ra,0xffffc
    80005c2c:	4f0080e7          	jalr	1264(ra) # 80002118 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005c30:	01000513          	li	a0,16
    80005c34:	00000097          	auipc	ra,0x0
    80005c38:	d88080e7          	jalr	-632(ra) # 800059bc <_Z9fibonaccim>
    80005c3c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005c40:	00004517          	auipc	a0,0x4
    80005c44:	99050513          	addi	a0,a0,-1648 # 800095d0 <CONSOLE_STATUS+0x5c0>
    80005c48:	fffff097          	auipc	ra,0xfffff
    80005c4c:	530080e7          	jalr	1328(ra) # 80005178 <_Z11printStringPKc>
    80005c50:	00000613          	li	a2,0
    80005c54:	00a00593          	li	a1,10
    80005c58:	0009051b          	sext.w	a0,s2
    80005c5c:	fffff097          	auipc	ra,0xfffff
    80005c60:	6b4080e7          	jalr	1716(ra) # 80005310 <_Z8printIntiii>
    80005c64:	00004517          	auipc	a0,0x4
    80005c68:	afc50513          	addi	a0,a0,-1284 # 80009760 <CONSOLE_STATUS+0x750>
    80005c6c:	fffff097          	auipc	ra,0xfffff
    80005c70:	50c080e7          	jalr	1292(ra) # 80005178 <_Z11printStringPKc>
    80005c74:	0400006f          	j	80005cb4 <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005c78:	00004517          	auipc	a0,0x4
    80005c7c:	94050513          	addi	a0,a0,-1728 # 800095b8 <CONSOLE_STATUS+0x5a8>
    80005c80:	fffff097          	auipc	ra,0xfffff
    80005c84:	4f8080e7          	jalr	1272(ra) # 80005178 <_Z11printStringPKc>
    80005c88:	00000613          	li	a2,0
    80005c8c:	00a00593          	li	a1,10
    80005c90:	00048513          	mv	a0,s1
    80005c94:	fffff097          	auipc	ra,0xfffff
    80005c98:	67c080e7          	jalr	1660(ra) # 80005310 <_Z8printIntiii>
    80005c9c:	00004517          	auipc	a0,0x4
    80005ca0:	ac450513          	addi	a0,a0,-1340 # 80009760 <CONSOLE_STATUS+0x750>
    80005ca4:	fffff097          	auipc	ra,0xfffff
    80005ca8:	4d4080e7          	jalr	1236(ra) # 80005178 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005cac:	0014849b          	addiw	s1,s1,1
    80005cb0:	0ff4f493          	andi	s1,s1,255
    80005cb4:	00f00793          	li	a5,15
    80005cb8:	fc97f0e3          	bgeu	a5,s1,80005c78 <_Z11workerBodyDPv+0xc8>
    }

    thread_dispatch();
    80005cbc:	ffffc097          	auipc	ra,0xffffc
    80005cc0:	45c080e7          	jalr	1116(ra) # 80002118 <_Z15thread_dispatchv>
    printString("D finished!\n");
    80005cc4:	00004517          	auipc	a0,0x4
    80005cc8:	91c50513          	addi	a0,a0,-1764 # 800095e0 <CONSOLE_STATUS+0x5d0>
    80005ccc:	fffff097          	auipc	ra,0xfffff
    80005cd0:	4ac080e7          	jalr	1196(ra) # 80005178 <_Z11printStringPKc>
    finishedD = true;
    80005cd4:	00100793          	li	a5,1
    80005cd8:	0000a717          	auipc	a4,0xa
    80005cdc:	daf701a3          	sb	a5,-605(a4) # 8000fa7b <finishedD>
}
    80005ce0:	01813083          	ld	ra,24(sp)
    80005ce4:	01013403          	ld	s0,16(sp)
    80005ce8:	00813483          	ld	s1,8(sp)
    80005cec:	00013903          	ld	s2,0(sp)
    80005cf0:	02010113          	addi	sp,sp,32
    80005cf4:	00008067          	ret

0000000080005cf8 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80005cf8:	fc010113          	addi	sp,sp,-64
    80005cfc:	02113c23          	sd	ra,56(sp)
    80005d00:	02813823          	sd	s0,48(sp)
    80005d04:	02913423          	sd	s1,40(sp)
    80005d08:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005d0c:	00000613          	li	a2,0
    80005d10:	00000597          	auipc	a1,0x0
    80005d14:	b0c58593          	addi	a1,a1,-1268 # 8000581c <_Z11workerBodyAPv>
    80005d18:	fc040513          	addi	a0,s0,-64
    80005d1c:	ffffc097          	auipc	ra,0xffffc
    80005d20:	37c080e7          	jalr	892(ra) # 80002098 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80005d24:	00004517          	auipc	a0,0x4
    80005d28:	8cc50513          	addi	a0,a0,-1844 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80005d2c:	fffff097          	auipc	ra,0xfffff
    80005d30:	44c080e7          	jalr	1100(ra) # 80005178 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005d34:	00000613          	li	a2,0
    80005d38:	00000597          	auipc	a1,0x0
    80005d3c:	bb058593          	addi	a1,a1,-1104 # 800058e8 <_Z11workerBodyBPv>
    80005d40:	fc840513          	addi	a0,s0,-56
    80005d44:	ffffc097          	auipc	ra,0xffffc
    80005d48:	354080e7          	jalr	852(ra) # 80002098 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80005d4c:	00004517          	auipc	a0,0x4
    80005d50:	8bc50513          	addi	a0,a0,-1860 # 80009608 <CONSOLE_STATUS+0x5f8>
    80005d54:	fffff097          	auipc	ra,0xfffff
    80005d58:	424080e7          	jalr	1060(ra) # 80005178 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005d5c:	00000613          	li	a2,0
    80005d60:	00000597          	auipc	a1,0x0
    80005d64:	cd058593          	addi	a1,a1,-816 # 80005a30 <_Z11workerBodyCPv>
    80005d68:	fd040513          	addi	a0,s0,-48
    80005d6c:	ffffc097          	auipc	ra,0xffffc
    80005d70:	32c080e7          	jalr	812(ra) # 80002098 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80005d74:	00004517          	auipc	a0,0x4
    80005d78:	8ac50513          	addi	a0,a0,-1876 # 80009620 <CONSOLE_STATUS+0x610>
    80005d7c:	fffff097          	auipc	ra,0xfffff
    80005d80:	3fc080e7          	jalr	1020(ra) # 80005178 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005d84:	00000613          	li	a2,0
    80005d88:	00000597          	auipc	a1,0x0
    80005d8c:	e2858593          	addi	a1,a1,-472 # 80005bb0 <_Z11workerBodyDPv>
    80005d90:	fd840513          	addi	a0,s0,-40
    80005d94:	ffffc097          	auipc	ra,0xffffc
    80005d98:	304080e7          	jalr	772(ra) # 80002098 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80005d9c:	00004517          	auipc	a0,0x4
    80005da0:	89c50513          	addi	a0,a0,-1892 # 80009638 <CONSOLE_STATUS+0x628>
    80005da4:	fffff097          	auipc	ra,0xfffff
    80005da8:	3d4080e7          	jalr	980(ra) # 80005178 <_Z11printStringPKc>
    80005dac:	00c0006f          	j	80005db8 <_Z18Threads_C_API_testv+0xc0>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005db0:	ffffc097          	auipc	ra,0xffffc
    80005db4:	368080e7          	jalr	872(ra) # 80002118 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005db8:	0000a797          	auipc	a5,0xa
    80005dbc:	cc07c783          	lbu	a5,-832(a5) # 8000fa78 <finishedA>
    80005dc0:	fe0788e3          	beqz	a5,80005db0 <_Z18Threads_C_API_testv+0xb8>
    80005dc4:	0000a797          	auipc	a5,0xa
    80005dc8:	cb57c783          	lbu	a5,-843(a5) # 8000fa79 <finishedB>
    80005dcc:	fe0782e3          	beqz	a5,80005db0 <_Z18Threads_C_API_testv+0xb8>
    80005dd0:	0000a797          	auipc	a5,0xa
    80005dd4:	caa7c783          	lbu	a5,-854(a5) # 8000fa7a <finishedC>
    80005dd8:	fc078ce3          	beqz	a5,80005db0 <_Z18Threads_C_API_testv+0xb8>
    80005ddc:	0000a797          	auipc	a5,0xa
    80005de0:	c9f7c783          	lbu	a5,-865(a5) # 8000fa7b <finishedD>
    80005de4:	fc0786e3          	beqz	a5,80005db0 <_Z18Threads_C_API_testv+0xb8>
    }

    for (auto &thread: threads) { delete thread; }
    80005de8:	fc040493          	addi	s1,s0,-64
    80005dec:	0080006f          	j	80005df4 <_Z18Threads_C_API_testv+0xfc>
    80005df0:	00848493          	addi	s1,s1,8
    80005df4:	fe040793          	addi	a5,s0,-32
    80005df8:	00f48c63          	beq	s1,a5,80005e10 <_Z18Threads_C_API_testv+0x118>
    80005dfc:	0004b503          	ld	a0,0(s1)
    80005e00:	fe0508e3          	beqz	a0,80005df0 <_Z18Threads_C_API_testv+0xf8>
    80005e04:	ffffc097          	auipc	ra,0xffffc
    80005e08:	590080e7          	jalr	1424(ra) # 80002394 <_ZN7_threaddlEPv>
    80005e0c:	fe5ff06f          	j	80005df0 <_Z18Threads_C_API_testv+0xf8>
}
    80005e10:	03813083          	ld	ra,56(sp)
    80005e14:	03013403          	ld	s0,48(sp)
    80005e18:	02813483          	ld	s1,40(sp)
    80005e1c:	04010113          	addi	sp,sp,64
    80005e20:	00008067          	ret

0000000080005e24 <_Z8userMainv>:

//#include "ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain()
{
    80005e24:	ff010113          	addi	sp,sp,-16
    80005e28:	00113423          	sd	ra,8(sp)
    80005e2c:	00813023          	sd	s0,0(sp)
    80005e30:	01010413          	addi	s0,sp,16
    //__asm__ volatile("csrr a0, sstatus"); // test for changing privilege

    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    80005e34:	00000097          	auipc	ra,0x0
    80005e38:	ec4080e7          	jalr	-316(ra) # 80005cf8 <_Z18Threads_C_API_testv>
    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    80005e3c:	00813083          	ld	ra,8(sp)
    80005e40:	00013403          	ld	s0,0(sp)
    80005e44:	01010113          	addi	sp,sp,16
    80005e48:	00008067          	ret

0000000080005e4c <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005e4c:	fe010113          	addi	sp,sp,-32
    80005e50:	00113c23          	sd	ra,24(sp)
    80005e54:	00813823          	sd	s0,16(sp)
    80005e58:	00913423          	sd	s1,8(sp)
    80005e5c:	01213023          	sd	s2,0(sp)
    80005e60:	02010413          	addi	s0,sp,32
    80005e64:	00050493          	mv	s1,a0
    80005e68:	00058913          	mv	s2,a1
    80005e6c:	0015879b          	addiw	a5,a1,1
    80005e70:	0007851b          	sext.w	a0,a5
    80005e74:	00f4a023          	sw	a5,0(s1)
    80005e78:	0004a823          	sw	zero,16(s1)
    80005e7c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005e80:	00251513          	slli	a0,a0,0x2
    80005e84:	ffffc097          	auipc	ra,0xffffc
    80005e88:	1b8080e7          	jalr	440(ra) # 8000203c <_Z9mem_allocm>
    80005e8c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005e90:	00000593          	li	a1,0
    80005e94:	02048513          	addi	a0,s1,32
    80005e98:	ffffc097          	auipc	ra,0xffffc
    80005e9c:	2c8080e7          	jalr	712(ra) # 80002160 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80005ea0:	00090593          	mv	a1,s2
    80005ea4:	01848513          	addi	a0,s1,24
    80005ea8:	ffffc097          	auipc	ra,0xffffc
    80005eac:	2b8080e7          	jalr	696(ra) # 80002160 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80005eb0:	00100593          	li	a1,1
    80005eb4:	02848513          	addi	a0,s1,40
    80005eb8:	ffffc097          	auipc	ra,0xffffc
    80005ebc:	2a8080e7          	jalr	680(ra) # 80002160 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80005ec0:	00100593          	li	a1,1
    80005ec4:	03048513          	addi	a0,s1,48
    80005ec8:	ffffc097          	auipc	ra,0xffffc
    80005ecc:	298080e7          	jalr	664(ra) # 80002160 <_Z8sem_openPP4_semj>
}
    80005ed0:	01813083          	ld	ra,24(sp)
    80005ed4:	01013403          	ld	s0,16(sp)
    80005ed8:	00813483          	ld	s1,8(sp)
    80005edc:	00013903          	ld	s2,0(sp)
    80005ee0:	02010113          	addi	sp,sp,32
    80005ee4:	00008067          	ret

0000000080005ee8 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005ee8:	fe010113          	addi	sp,sp,-32
    80005eec:	00113c23          	sd	ra,24(sp)
    80005ef0:	00813823          	sd	s0,16(sp)
    80005ef4:	00913423          	sd	s1,8(sp)
    80005ef8:	01213023          	sd	s2,0(sp)
    80005efc:	02010413          	addi	s0,sp,32
    80005f00:	00050493          	mv	s1,a0
    80005f04:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005f08:	01853503          	ld	a0,24(a0)
    80005f0c:	ffffc097          	auipc	ra,0xffffc
    80005f10:	2b8080e7          	jalr	696(ra) # 800021c4 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80005f14:	0304b503          	ld	a0,48(s1)
    80005f18:	ffffc097          	auipc	ra,0xffffc
    80005f1c:	2ac080e7          	jalr	684(ra) # 800021c4 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80005f20:	0084b783          	ld	a5,8(s1)
    80005f24:	0144a703          	lw	a4,20(s1)
    80005f28:	00271713          	slli	a4,a4,0x2
    80005f2c:	00e787b3          	add	a5,a5,a4
    80005f30:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005f34:	0144a783          	lw	a5,20(s1)
    80005f38:	0017879b          	addiw	a5,a5,1
    80005f3c:	0004a703          	lw	a4,0(s1)
    80005f40:	02e7e7bb          	remw	a5,a5,a4
    80005f44:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005f48:	0304b503          	ld	a0,48(s1)
    80005f4c:	ffffc097          	auipc	ra,0xffffc
    80005f50:	2a4080e7          	jalr	676(ra) # 800021f0 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80005f54:	0204b503          	ld	a0,32(s1)
    80005f58:	ffffc097          	auipc	ra,0xffffc
    80005f5c:	298080e7          	jalr	664(ra) # 800021f0 <_Z10sem_signalP4_sem>

}
    80005f60:	01813083          	ld	ra,24(sp)
    80005f64:	01013403          	ld	s0,16(sp)
    80005f68:	00813483          	ld	s1,8(sp)
    80005f6c:	00013903          	ld	s2,0(sp)
    80005f70:	02010113          	addi	sp,sp,32
    80005f74:	00008067          	ret

0000000080005f78 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005f78:	fe010113          	addi	sp,sp,-32
    80005f7c:	00113c23          	sd	ra,24(sp)
    80005f80:	00813823          	sd	s0,16(sp)
    80005f84:	00913423          	sd	s1,8(sp)
    80005f88:	01213023          	sd	s2,0(sp)
    80005f8c:	02010413          	addi	s0,sp,32
    80005f90:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005f94:	02053503          	ld	a0,32(a0)
    80005f98:	ffffc097          	auipc	ra,0xffffc
    80005f9c:	22c080e7          	jalr	556(ra) # 800021c4 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80005fa0:	0284b503          	ld	a0,40(s1)
    80005fa4:	ffffc097          	auipc	ra,0xffffc
    80005fa8:	220080e7          	jalr	544(ra) # 800021c4 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80005fac:	0084b703          	ld	a4,8(s1)
    80005fb0:	0104a783          	lw	a5,16(s1)
    80005fb4:	00279693          	slli	a3,a5,0x2
    80005fb8:	00d70733          	add	a4,a4,a3
    80005fbc:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005fc0:	0017879b          	addiw	a5,a5,1
    80005fc4:	0004a703          	lw	a4,0(s1)
    80005fc8:	02e7e7bb          	remw	a5,a5,a4
    80005fcc:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005fd0:	0284b503          	ld	a0,40(s1)
    80005fd4:	ffffc097          	auipc	ra,0xffffc
    80005fd8:	21c080e7          	jalr	540(ra) # 800021f0 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80005fdc:	0184b503          	ld	a0,24(s1)
    80005fe0:	ffffc097          	auipc	ra,0xffffc
    80005fe4:	210080e7          	jalr	528(ra) # 800021f0 <_Z10sem_signalP4_sem>

    return ret;
}
    80005fe8:	00090513          	mv	a0,s2
    80005fec:	01813083          	ld	ra,24(sp)
    80005ff0:	01013403          	ld	s0,16(sp)
    80005ff4:	00813483          	ld	s1,8(sp)
    80005ff8:	00013903          	ld	s2,0(sp)
    80005ffc:	02010113          	addi	sp,sp,32
    80006000:	00008067          	ret

0000000080006004 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006004:	fe010113          	addi	sp,sp,-32
    80006008:	00113c23          	sd	ra,24(sp)
    8000600c:	00813823          	sd	s0,16(sp)
    80006010:	00913423          	sd	s1,8(sp)
    80006014:	01213023          	sd	s2,0(sp)
    80006018:	02010413          	addi	s0,sp,32
    8000601c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006020:	02853503          	ld	a0,40(a0)
    80006024:	ffffc097          	auipc	ra,0xffffc
    80006028:	1a0080e7          	jalr	416(ra) # 800021c4 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    8000602c:	0304b503          	ld	a0,48(s1)
    80006030:	ffffc097          	auipc	ra,0xffffc
    80006034:	194080e7          	jalr	404(ra) # 800021c4 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80006038:	0144a783          	lw	a5,20(s1)
    8000603c:	0104a903          	lw	s2,16(s1)
    80006040:	0327ce63          	blt	a5,s2,8000607c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006044:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006048:	0304b503          	ld	a0,48(s1)
    8000604c:	ffffc097          	auipc	ra,0xffffc
    80006050:	1a4080e7          	jalr	420(ra) # 800021f0 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80006054:	0284b503          	ld	a0,40(s1)
    80006058:	ffffc097          	auipc	ra,0xffffc
    8000605c:	198080e7          	jalr	408(ra) # 800021f0 <_Z10sem_signalP4_sem>

    return ret;
    80006060:	00090513          	mv	a0,s2
    80006064:	01813083          	ld	ra,24(sp)
    80006068:	01013403          	ld	s0,16(sp)
    8000606c:	00813483          	ld	s1,8(sp)
    80006070:	00013903          	ld	s2,0(sp)
    80006074:	02010113          	addi	sp,sp,32
    80006078:	00008067          	ret
        ret = cap - head + tail;
    8000607c:	0004a703          	lw	a4,0(s1)
    80006080:	4127093b          	subw	s2,a4,s2
    80006084:	00f9093b          	addw	s2,s2,a5
    80006088:	fc1ff06f          	j	80006048 <_ZN6Buffer6getCntEv+0x44>

000000008000608c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    8000608c:	fe010113          	addi	sp,sp,-32
    80006090:	00113c23          	sd	ra,24(sp)
    80006094:	00813823          	sd	s0,16(sp)
    80006098:	00913423          	sd	s1,8(sp)
    8000609c:	02010413          	addi	s0,sp,32
    800060a0:	00050493          	mv	s1,a0
    putc('\n');
    800060a4:	00a00513          	li	a0,10
    800060a8:	ffffc097          	auipc	ra,0xffffc
    800060ac:	274080e7          	jalr	628(ra) # 8000231c <_Z4putcc>
    printString("Buffer deleted!\n");
    800060b0:	00003517          	auipc	a0,0x3
    800060b4:	49050513          	addi	a0,a0,1168 # 80009540 <CONSOLE_STATUS+0x530>
    800060b8:	fffff097          	auipc	ra,0xfffff
    800060bc:	0c0080e7          	jalr	192(ra) # 80005178 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800060c0:	00048513          	mv	a0,s1
    800060c4:	00000097          	auipc	ra,0x0
    800060c8:	f40080e7          	jalr	-192(ra) # 80006004 <_ZN6Buffer6getCntEv>
    800060cc:	02a05c63          	blez	a0,80006104 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800060d0:	0084b783          	ld	a5,8(s1)
    800060d4:	0104a703          	lw	a4,16(s1)
    800060d8:	00271713          	slli	a4,a4,0x2
    800060dc:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800060e0:	0007c503          	lbu	a0,0(a5)
    800060e4:	ffffc097          	auipc	ra,0xffffc
    800060e8:	238080e7          	jalr	568(ra) # 8000231c <_Z4putcc>
        head = (head + 1) % cap;
    800060ec:	0104a783          	lw	a5,16(s1)
    800060f0:	0017879b          	addiw	a5,a5,1
    800060f4:	0004a703          	lw	a4,0(s1)
    800060f8:	02e7e7bb          	remw	a5,a5,a4
    800060fc:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006100:	fc1ff06f          	j	800060c0 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006104:	02100513          	li	a0,33
    80006108:	ffffc097          	auipc	ra,0xffffc
    8000610c:	214080e7          	jalr	532(ra) # 8000231c <_Z4putcc>
    putc('\n');
    80006110:	00a00513          	li	a0,10
    80006114:	ffffc097          	auipc	ra,0xffffc
    80006118:	208080e7          	jalr	520(ra) # 8000231c <_Z4putcc>
    mem_free(buffer);
    8000611c:	0084b503          	ld	a0,8(s1)
    80006120:	ffffc097          	auipc	ra,0xffffc
    80006124:	f4c080e7          	jalr	-180(ra) # 8000206c <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006128:	0204b503          	ld	a0,32(s1)
    8000612c:	ffffc097          	auipc	ra,0xffffc
    80006130:	06c080e7          	jalr	108(ra) # 80002198 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006134:	0184b503          	ld	a0,24(s1)
    80006138:	ffffc097          	auipc	ra,0xffffc
    8000613c:	060080e7          	jalr	96(ra) # 80002198 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006140:	0304b503          	ld	a0,48(s1)
    80006144:	ffffc097          	auipc	ra,0xffffc
    80006148:	054080e7          	jalr	84(ra) # 80002198 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    8000614c:	0284b503          	ld	a0,40(s1)
    80006150:	ffffc097          	auipc	ra,0xffffc
    80006154:	048080e7          	jalr	72(ra) # 80002198 <_Z9sem_closeP4_sem>
}
    80006158:	01813083          	ld	ra,24(sp)
    8000615c:	01013403          	ld	s0,16(sp)
    80006160:	00813483          	ld	s1,8(sp)
    80006164:	02010113          	addi	sp,sp,32
    80006168:	00008067          	ret

000000008000616c <start>:
    8000616c:	ff010113          	addi	sp,sp,-16
    80006170:	00813423          	sd	s0,8(sp)
    80006174:	01010413          	addi	s0,sp,16
    80006178:	300027f3          	csrr	a5,mstatus
    8000617c:	ffffe737          	lui	a4,0xffffe
    80006180:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffedb1f>
    80006184:	00e7f7b3          	and	a5,a5,a4
    80006188:	00001737          	lui	a4,0x1
    8000618c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006190:	00e7e7b3          	or	a5,a5,a4
    80006194:	30079073          	csrw	mstatus,a5
    80006198:	00000797          	auipc	a5,0x0
    8000619c:	16078793          	addi	a5,a5,352 # 800062f8 <system_main>
    800061a0:	34179073          	csrw	mepc,a5
    800061a4:	00000793          	li	a5,0
    800061a8:	18079073          	csrw	satp,a5
    800061ac:	000107b7          	lui	a5,0x10
    800061b0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800061b4:	30279073          	csrw	medeleg,a5
    800061b8:	30379073          	csrw	mideleg,a5
    800061bc:	104027f3          	csrr	a5,sie
    800061c0:	2227e793          	ori	a5,a5,546
    800061c4:	10479073          	csrw	sie,a5
    800061c8:	fff00793          	li	a5,-1
    800061cc:	00a7d793          	srli	a5,a5,0xa
    800061d0:	3b079073          	csrw	pmpaddr0,a5
    800061d4:	00f00793          	li	a5,15
    800061d8:	3a079073          	csrw	pmpcfg0,a5
    800061dc:	f14027f3          	csrr	a5,mhartid
    800061e0:	0200c737          	lui	a4,0x200c
    800061e4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800061e8:	0007869b          	sext.w	a3,a5
    800061ec:	00269713          	slli	a4,a3,0x2
    800061f0:	000f4637          	lui	a2,0xf4
    800061f4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800061f8:	00d70733          	add	a4,a4,a3
    800061fc:	0037979b          	slliw	a5,a5,0x3
    80006200:	020046b7          	lui	a3,0x2004
    80006204:	00d787b3          	add	a5,a5,a3
    80006208:	00c585b3          	add	a1,a1,a2
    8000620c:	00371693          	slli	a3,a4,0x3
    80006210:	0000a717          	auipc	a4,0xa
    80006214:	87070713          	addi	a4,a4,-1936 # 8000fa80 <timer_scratch>
    80006218:	00b7b023          	sd	a1,0(a5)
    8000621c:	00d70733          	add	a4,a4,a3
    80006220:	00f73c23          	sd	a5,24(a4)
    80006224:	02c73023          	sd	a2,32(a4)
    80006228:	34071073          	csrw	mscratch,a4
    8000622c:	00000797          	auipc	a5,0x0
    80006230:	6e478793          	addi	a5,a5,1764 # 80006910 <timervec>
    80006234:	30579073          	csrw	mtvec,a5
    80006238:	300027f3          	csrr	a5,mstatus
    8000623c:	0087e793          	ori	a5,a5,8
    80006240:	30079073          	csrw	mstatus,a5
    80006244:	304027f3          	csrr	a5,mie
    80006248:	0807e793          	ori	a5,a5,128
    8000624c:	30479073          	csrw	mie,a5
    80006250:	f14027f3          	csrr	a5,mhartid
    80006254:	0007879b          	sext.w	a5,a5
    80006258:	00078213          	mv	tp,a5
    8000625c:	30200073          	mret
    80006260:	00813403          	ld	s0,8(sp)
    80006264:	01010113          	addi	sp,sp,16
    80006268:	00008067          	ret

000000008000626c <timerinit>:
    8000626c:	ff010113          	addi	sp,sp,-16
    80006270:	00813423          	sd	s0,8(sp)
    80006274:	01010413          	addi	s0,sp,16
    80006278:	f14027f3          	csrr	a5,mhartid
    8000627c:	0200c737          	lui	a4,0x200c
    80006280:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006284:	0007869b          	sext.w	a3,a5
    80006288:	00269713          	slli	a4,a3,0x2
    8000628c:	000f4637          	lui	a2,0xf4
    80006290:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006294:	00d70733          	add	a4,a4,a3
    80006298:	0037979b          	slliw	a5,a5,0x3
    8000629c:	020046b7          	lui	a3,0x2004
    800062a0:	00d787b3          	add	a5,a5,a3
    800062a4:	00c585b3          	add	a1,a1,a2
    800062a8:	00371693          	slli	a3,a4,0x3
    800062ac:	00009717          	auipc	a4,0x9
    800062b0:	7d470713          	addi	a4,a4,2004 # 8000fa80 <timer_scratch>
    800062b4:	00b7b023          	sd	a1,0(a5)
    800062b8:	00d70733          	add	a4,a4,a3
    800062bc:	00f73c23          	sd	a5,24(a4)
    800062c0:	02c73023          	sd	a2,32(a4)
    800062c4:	34071073          	csrw	mscratch,a4
    800062c8:	00000797          	auipc	a5,0x0
    800062cc:	64878793          	addi	a5,a5,1608 # 80006910 <timervec>
    800062d0:	30579073          	csrw	mtvec,a5
    800062d4:	300027f3          	csrr	a5,mstatus
    800062d8:	0087e793          	ori	a5,a5,8
    800062dc:	30079073          	csrw	mstatus,a5
    800062e0:	304027f3          	csrr	a5,mie
    800062e4:	0807e793          	ori	a5,a5,128
    800062e8:	30479073          	csrw	mie,a5
    800062ec:	00813403          	ld	s0,8(sp)
    800062f0:	01010113          	addi	sp,sp,16
    800062f4:	00008067          	ret

00000000800062f8 <system_main>:
    800062f8:	fe010113          	addi	sp,sp,-32
    800062fc:	00813823          	sd	s0,16(sp)
    80006300:	00913423          	sd	s1,8(sp)
    80006304:	00113c23          	sd	ra,24(sp)
    80006308:	02010413          	addi	s0,sp,32
    8000630c:	00000097          	auipc	ra,0x0
    80006310:	0c4080e7          	jalr	196(ra) # 800063d0 <cpuid>
    80006314:	00005497          	auipc	s1,0x5
    80006318:	67c48493          	addi	s1,s1,1660 # 8000b990 <started>
    8000631c:	02050263          	beqz	a0,80006340 <system_main+0x48>
    80006320:	0004a783          	lw	a5,0(s1)
    80006324:	0007879b          	sext.w	a5,a5
    80006328:	fe078ce3          	beqz	a5,80006320 <system_main+0x28>
    8000632c:	0ff0000f          	fence
    80006330:	00003517          	auipc	a0,0x3
    80006334:	35050513          	addi	a0,a0,848 # 80009680 <CONSOLE_STATUS+0x670>
    80006338:	00001097          	auipc	ra,0x1
    8000633c:	a74080e7          	jalr	-1420(ra) # 80006dac <panic>
    80006340:	00001097          	auipc	ra,0x1
    80006344:	9c8080e7          	jalr	-1592(ra) # 80006d08 <consoleinit>
    80006348:	00001097          	auipc	ra,0x1
    8000634c:	154080e7          	jalr	340(ra) # 8000749c <printfinit>
    80006350:	00003517          	auipc	a0,0x3
    80006354:	41050513          	addi	a0,a0,1040 # 80009760 <CONSOLE_STATUS+0x750>
    80006358:	00001097          	auipc	ra,0x1
    8000635c:	ab0080e7          	jalr	-1360(ra) # 80006e08 <__printf>
    80006360:	00003517          	auipc	a0,0x3
    80006364:	2f050513          	addi	a0,a0,752 # 80009650 <CONSOLE_STATUS+0x640>
    80006368:	00001097          	auipc	ra,0x1
    8000636c:	aa0080e7          	jalr	-1376(ra) # 80006e08 <__printf>
    80006370:	00003517          	auipc	a0,0x3
    80006374:	3f050513          	addi	a0,a0,1008 # 80009760 <CONSOLE_STATUS+0x750>
    80006378:	00001097          	auipc	ra,0x1
    8000637c:	a90080e7          	jalr	-1392(ra) # 80006e08 <__printf>
    80006380:	00001097          	auipc	ra,0x1
    80006384:	4a8080e7          	jalr	1192(ra) # 80007828 <kinit>
    80006388:	00000097          	auipc	ra,0x0
    8000638c:	148080e7          	jalr	328(ra) # 800064d0 <trapinit>
    80006390:	00000097          	auipc	ra,0x0
    80006394:	16c080e7          	jalr	364(ra) # 800064fc <trapinithart>
    80006398:	00000097          	auipc	ra,0x0
    8000639c:	5b8080e7          	jalr	1464(ra) # 80006950 <plicinit>
    800063a0:	00000097          	auipc	ra,0x0
    800063a4:	5d8080e7          	jalr	1496(ra) # 80006978 <plicinithart>
    800063a8:	00000097          	auipc	ra,0x0
    800063ac:	078080e7          	jalr	120(ra) # 80006420 <userinit>
    800063b0:	0ff0000f          	fence
    800063b4:	00100793          	li	a5,1
    800063b8:	00003517          	auipc	a0,0x3
    800063bc:	2b050513          	addi	a0,a0,688 # 80009668 <CONSOLE_STATUS+0x658>
    800063c0:	00f4a023          	sw	a5,0(s1)
    800063c4:	00001097          	auipc	ra,0x1
    800063c8:	a44080e7          	jalr	-1468(ra) # 80006e08 <__printf>
    800063cc:	0000006f          	j	800063cc <system_main+0xd4>

00000000800063d0 <cpuid>:
    800063d0:	ff010113          	addi	sp,sp,-16
    800063d4:	00813423          	sd	s0,8(sp)
    800063d8:	01010413          	addi	s0,sp,16
    800063dc:	00020513          	mv	a0,tp
    800063e0:	00813403          	ld	s0,8(sp)
    800063e4:	0005051b          	sext.w	a0,a0
    800063e8:	01010113          	addi	sp,sp,16
    800063ec:	00008067          	ret

00000000800063f0 <mycpu>:
    800063f0:	ff010113          	addi	sp,sp,-16
    800063f4:	00813423          	sd	s0,8(sp)
    800063f8:	01010413          	addi	s0,sp,16
    800063fc:	00020793          	mv	a5,tp
    80006400:	00813403          	ld	s0,8(sp)
    80006404:	0007879b          	sext.w	a5,a5
    80006408:	00779793          	slli	a5,a5,0x7
    8000640c:	0000a517          	auipc	a0,0xa
    80006410:	6a450513          	addi	a0,a0,1700 # 80010ab0 <cpus>
    80006414:	00f50533          	add	a0,a0,a5
    80006418:	01010113          	addi	sp,sp,16
    8000641c:	00008067          	ret

0000000080006420 <userinit>:
    80006420:	ff010113          	addi	sp,sp,-16
    80006424:	00813423          	sd	s0,8(sp)
    80006428:	01010413          	addi	s0,sp,16
    8000642c:	00813403          	ld	s0,8(sp)
    80006430:	01010113          	addi	sp,sp,16
    80006434:	ffffd317          	auipc	t1,0xffffd
    80006438:	5b430067          	jr	1460(t1) # 800039e8 <main>

000000008000643c <either_copyout>:
    8000643c:	ff010113          	addi	sp,sp,-16
    80006440:	00813023          	sd	s0,0(sp)
    80006444:	00113423          	sd	ra,8(sp)
    80006448:	01010413          	addi	s0,sp,16
    8000644c:	02051663          	bnez	a0,80006478 <either_copyout+0x3c>
    80006450:	00058513          	mv	a0,a1
    80006454:	00060593          	mv	a1,a2
    80006458:	0006861b          	sext.w	a2,a3
    8000645c:	00002097          	auipc	ra,0x2
    80006460:	c58080e7          	jalr	-936(ra) # 800080b4 <__memmove>
    80006464:	00813083          	ld	ra,8(sp)
    80006468:	00013403          	ld	s0,0(sp)
    8000646c:	00000513          	li	a0,0
    80006470:	01010113          	addi	sp,sp,16
    80006474:	00008067          	ret
    80006478:	00003517          	auipc	a0,0x3
    8000647c:	23050513          	addi	a0,a0,560 # 800096a8 <CONSOLE_STATUS+0x698>
    80006480:	00001097          	auipc	ra,0x1
    80006484:	92c080e7          	jalr	-1748(ra) # 80006dac <panic>

0000000080006488 <either_copyin>:
    80006488:	ff010113          	addi	sp,sp,-16
    8000648c:	00813023          	sd	s0,0(sp)
    80006490:	00113423          	sd	ra,8(sp)
    80006494:	01010413          	addi	s0,sp,16
    80006498:	02059463          	bnez	a1,800064c0 <either_copyin+0x38>
    8000649c:	00060593          	mv	a1,a2
    800064a0:	0006861b          	sext.w	a2,a3
    800064a4:	00002097          	auipc	ra,0x2
    800064a8:	c10080e7          	jalr	-1008(ra) # 800080b4 <__memmove>
    800064ac:	00813083          	ld	ra,8(sp)
    800064b0:	00013403          	ld	s0,0(sp)
    800064b4:	00000513          	li	a0,0
    800064b8:	01010113          	addi	sp,sp,16
    800064bc:	00008067          	ret
    800064c0:	00003517          	auipc	a0,0x3
    800064c4:	21050513          	addi	a0,a0,528 # 800096d0 <CONSOLE_STATUS+0x6c0>
    800064c8:	00001097          	auipc	ra,0x1
    800064cc:	8e4080e7          	jalr	-1820(ra) # 80006dac <panic>

00000000800064d0 <trapinit>:
    800064d0:	ff010113          	addi	sp,sp,-16
    800064d4:	00813423          	sd	s0,8(sp)
    800064d8:	01010413          	addi	s0,sp,16
    800064dc:	00813403          	ld	s0,8(sp)
    800064e0:	00003597          	auipc	a1,0x3
    800064e4:	21858593          	addi	a1,a1,536 # 800096f8 <CONSOLE_STATUS+0x6e8>
    800064e8:	0000a517          	auipc	a0,0xa
    800064ec:	64850513          	addi	a0,a0,1608 # 80010b30 <tickslock>
    800064f0:	01010113          	addi	sp,sp,16
    800064f4:	00001317          	auipc	t1,0x1
    800064f8:	5c430067          	jr	1476(t1) # 80007ab8 <initlock>

00000000800064fc <trapinithart>:
    800064fc:	ff010113          	addi	sp,sp,-16
    80006500:	00813423          	sd	s0,8(sp)
    80006504:	01010413          	addi	s0,sp,16
    80006508:	00000797          	auipc	a5,0x0
    8000650c:	2f878793          	addi	a5,a5,760 # 80006800 <kernelvec>
    80006510:	10579073          	csrw	stvec,a5
    80006514:	00813403          	ld	s0,8(sp)
    80006518:	01010113          	addi	sp,sp,16
    8000651c:	00008067          	ret

0000000080006520 <usertrap>:
    80006520:	ff010113          	addi	sp,sp,-16
    80006524:	00813423          	sd	s0,8(sp)
    80006528:	01010413          	addi	s0,sp,16
    8000652c:	00813403          	ld	s0,8(sp)
    80006530:	01010113          	addi	sp,sp,16
    80006534:	00008067          	ret

0000000080006538 <usertrapret>:
    80006538:	ff010113          	addi	sp,sp,-16
    8000653c:	00813423          	sd	s0,8(sp)
    80006540:	01010413          	addi	s0,sp,16
    80006544:	00813403          	ld	s0,8(sp)
    80006548:	01010113          	addi	sp,sp,16
    8000654c:	00008067          	ret

0000000080006550 <kerneltrap>:
    80006550:	fe010113          	addi	sp,sp,-32
    80006554:	00813823          	sd	s0,16(sp)
    80006558:	00113c23          	sd	ra,24(sp)
    8000655c:	00913423          	sd	s1,8(sp)
    80006560:	02010413          	addi	s0,sp,32
    80006564:	142025f3          	csrr	a1,scause
    80006568:	100027f3          	csrr	a5,sstatus
    8000656c:	0027f793          	andi	a5,a5,2
    80006570:	10079c63          	bnez	a5,80006688 <kerneltrap+0x138>
    80006574:	142027f3          	csrr	a5,scause
    80006578:	0207ce63          	bltz	a5,800065b4 <kerneltrap+0x64>
    8000657c:	00003517          	auipc	a0,0x3
    80006580:	1c450513          	addi	a0,a0,452 # 80009740 <CONSOLE_STATUS+0x730>
    80006584:	00001097          	auipc	ra,0x1
    80006588:	884080e7          	jalr	-1916(ra) # 80006e08 <__printf>
    8000658c:	141025f3          	csrr	a1,sepc
    80006590:	14302673          	csrr	a2,stval
    80006594:	00003517          	auipc	a0,0x3
    80006598:	1bc50513          	addi	a0,a0,444 # 80009750 <CONSOLE_STATUS+0x740>
    8000659c:	00001097          	auipc	ra,0x1
    800065a0:	86c080e7          	jalr	-1940(ra) # 80006e08 <__printf>
    800065a4:	00003517          	auipc	a0,0x3
    800065a8:	1c450513          	addi	a0,a0,452 # 80009768 <CONSOLE_STATUS+0x758>
    800065ac:	00001097          	auipc	ra,0x1
    800065b0:	800080e7          	jalr	-2048(ra) # 80006dac <panic>
    800065b4:	0ff7f713          	andi	a4,a5,255
    800065b8:	00900693          	li	a3,9
    800065bc:	04d70063          	beq	a4,a3,800065fc <kerneltrap+0xac>
    800065c0:	fff00713          	li	a4,-1
    800065c4:	03f71713          	slli	a4,a4,0x3f
    800065c8:	00170713          	addi	a4,a4,1
    800065cc:	fae798e3          	bne	a5,a4,8000657c <kerneltrap+0x2c>
    800065d0:	00000097          	auipc	ra,0x0
    800065d4:	e00080e7          	jalr	-512(ra) # 800063d0 <cpuid>
    800065d8:	06050663          	beqz	a0,80006644 <kerneltrap+0xf4>
    800065dc:	144027f3          	csrr	a5,sip
    800065e0:	ffd7f793          	andi	a5,a5,-3
    800065e4:	14479073          	csrw	sip,a5
    800065e8:	01813083          	ld	ra,24(sp)
    800065ec:	01013403          	ld	s0,16(sp)
    800065f0:	00813483          	ld	s1,8(sp)
    800065f4:	02010113          	addi	sp,sp,32
    800065f8:	00008067          	ret
    800065fc:	00000097          	auipc	ra,0x0
    80006600:	3c8080e7          	jalr	968(ra) # 800069c4 <plic_claim>
    80006604:	00a00793          	li	a5,10
    80006608:	00050493          	mv	s1,a0
    8000660c:	06f50863          	beq	a0,a5,8000667c <kerneltrap+0x12c>
    80006610:	fc050ce3          	beqz	a0,800065e8 <kerneltrap+0x98>
    80006614:	00050593          	mv	a1,a0
    80006618:	00003517          	auipc	a0,0x3
    8000661c:	10850513          	addi	a0,a0,264 # 80009720 <CONSOLE_STATUS+0x710>
    80006620:	00000097          	auipc	ra,0x0
    80006624:	7e8080e7          	jalr	2024(ra) # 80006e08 <__printf>
    80006628:	01013403          	ld	s0,16(sp)
    8000662c:	01813083          	ld	ra,24(sp)
    80006630:	00048513          	mv	a0,s1
    80006634:	00813483          	ld	s1,8(sp)
    80006638:	02010113          	addi	sp,sp,32
    8000663c:	00000317          	auipc	t1,0x0
    80006640:	3c030067          	jr	960(t1) # 800069fc <plic_complete>
    80006644:	0000a517          	auipc	a0,0xa
    80006648:	4ec50513          	addi	a0,a0,1260 # 80010b30 <tickslock>
    8000664c:	00001097          	auipc	ra,0x1
    80006650:	490080e7          	jalr	1168(ra) # 80007adc <acquire>
    80006654:	00005717          	auipc	a4,0x5
    80006658:	34070713          	addi	a4,a4,832 # 8000b994 <ticks>
    8000665c:	00072783          	lw	a5,0(a4)
    80006660:	0000a517          	auipc	a0,0xa
    80006664:	4d050513          	addi	a0,a0,1232 # 80010b30 <tickslock>
    80006668:	0017879b          	addiw	a5,a5,1
    8000666c:	00f72023          	sw	a5,0(a4)
    80006670:	00001097          	auipc	ra,0x1
    80006674:	538080e7          	jalr	1336(ra) # 80007ba8 <release>
    80006678:	f65ff06f          	j	800065dc <kerneltrap+0x8c>
    8000667c:	00001097          	auipc	ra,0x1
    80006680:	094080e7          	jalr	148(ra) # 80007710 <uartintr>
    80006684:	fa5ff06f          	j	80006628 <kerneltrap+0xd8>
    80006688:	00003517          	auipc	a0,0x3
    8000668c:	07850513          	addi	a0,a0,120 # 80009700 <CONSOLE_STATUS+0x6f0>
    80006690:	00000097          	auipc	ra,0x0
    80006694:	71c080e7          	jalr	1820(ra) # 80006dac <panic>

0000000080006698 <clockintr>:
    80006698:	fe010113          	addi	sp,sp,-32
    8000669c:	00813823          	sd	s0,16(sp)
    800066a0:	00913423          	sd	s1,8(sp)
    800066a4:	00113c23          	sd	ra,24(sp)
    800066a8:	02010413          	addi	s0,sp,32
    800066ac:	0000a497          	auipc	s1,0xa
    800066b0:	48448493          	addi	s1,s1,1156 # 80010b30 <tickslock>
    800066b4:	00048513          	mv	a0,s1
    800066b8:	00001097          	auipc	ra,0x1
    800066bc:	424080e7          	jalr	1060(ra) # 80007adc <acquire>
    800066c0:	00005717          	auipc	a4,0x5
    800066c4:	2d470713          	addi	a4,a4,724 # 8000b994 <ticks>
    800066c8:	00072783          	lw	a5,0(a4)
    800066cc:	01013403          	ld	s0,16(sp)
    800066d0:	01813083          	ld	ra,24(sp)
    800066d4:	00048513          	mv	a0,s1
    800066d8:	0017879b          	addiw	a5,a5,1
    800066dc:	00813483          	ld	s1,8(sp)
    800066e0:	00f72023          	sw	a5,0(a4)
    800066e4:	02010113          	addi	sp,sp,32
    800066e8:	00001317          	auipc	t1,0x1
    800066ec:	4c030067          	jr	1216(t1) # 80007ba8 <release>

00000000800066f0 <devintr>:
    800066f0:	142027f3          	csrr	a5,scause
    800066f4:	00000513          	li	a0,0
    800066f8:	0007c463          	bltz	a5,80006700 <devintr+0x10>
    800066fc:	00008067          	ret
    80006700:	fe010113          	addi	sp,sp,-32
    80006704:	00813823          	sd	s0,16(sp)
    80006708:	00113c23          	sd	ra,24(sp)
    8000670c:	00913423          	sd	s1,8(sp)
    80006710:	02010413          	addi	s0,sp,32
    80006714:	0ff7f713          	andi	a4,a5,255
    80006718:	00900693          	li	a3,9
    8000671c:	04d70c63          	beq	a4,a3,80006774 <devintr+0x84>
    80006720:	fff00713          	li	a4,-1
    80006724:	03f71713          	slli	a4,a4,0x3f
    80006728:	00170713          	addi	a4,a4,1
    8000672c:	00e78c63          	beq	a5,a4,80006744 <devintr+0x54>
    80006730:	01813083          	ld	ra,24(sp)
    80006734:	01013403          	ld	s0,16(sp)
    80006738:	00813483          	ld	s1,8(sp)
    8000673c:	02010113          	addi	sp,sp,32
    80006740:	00008067          	ret
    80006744:	00000097          	auipc	ra,0x0
    80006748:	c8c080e7          	jalr	-884(ra) # 800063d0 <cpuid>
    8000674c:	06050663          	beqz	a0,800067b8 <devintr+0xc8>
    80006750:	144027f3          	csrr	a5,sip
    80006754:	ffd7f793          	andi	a5,a5,-3
    80006758:	14479073          	csrw	sip,a5
    8000675c:	01813083          	ld	ra,24(sp)
    80006760:	01013403          	ld	s0,16(sp)
    80006764:	00813483          	ld	s1,8(sp)
    80006768:	00200513          	li	a0,2
    8000676c:	02010113          	addi	sp,sp,32
    80006770:	00008067          	ret
    80006774:	00000097          	auipc	ra,0x0
    80006778:	250080e7          	jalr	592(ra) # 800069c4 <plic_claim>
    8000677c:	00a00793          	li	a5,10
    80006780:	00050493          	mv	s1,a0
    80006784:	06f50663          	beq	a0,a5,800067f0 <devintr+0x100>
    80006788:	00100513          	li	a0,1
    8000678c:	fa0482e3          	beqz	s1,80006730 <devintr+0x40>
    80006790:	00048593          	mv	a1,s1
    80006794:	00003517          	auipc	a0,0x3
    80006798:	f8c50513          	addi	a0,a0,-116 # 80009720 <CONSOLE_STATUS+0x710>
    8000679c:	00000097          	auipc	ra,0x0
    800067a0:	66c080e7          	jalr	1644(ra) # 80006e08 <__printf>
    800067a4:	00048513          	mv	a0,s1
    800067a8:	00000097          	auipc	ra,0x0
    800067ac:	254080e7          	jalr	596(ra) # 800069fc <plic_complete>
    800067b0:	00100513          	li	a0,1
    800067b4:	f7dff06f          	j	80006730 <devintr+0x40>
    800067b8:	0000a517          	auipc	a0,0xa
    800067bc:	37850513          	addi	a0,a0,888 # 80010b30 <tickslock>
    800067c0:	00001097          	auipc	ra,0x1
    800067c4:	31c080e7          	jalr	796(ra) # 80007adc <acquire>
    800067c8:	00005717          	auipc	a4,0x5
    800067cc:	1cc70713          	addi	a4,a4,460 # 8000b994 <ticks>
    800067d0:	00072783          	lw	a5,0(a4)
    800067d4:	0000a517          	auipc	a0,0xa
    800067d8:	35c50513          	addi	a0,a0,860 # 80010b30 <tickslock>
    800067dc:	0017879b          	addiw	a5,a5,1
    800067e0:	00f72023          	sw	a5,0(a4)
    800067e4:	00001097          	auipc	ra,0x1
    800067e8:	3c4080e7          	jalr	964(ra) # 80007ba8 <release>
    800067ec:	f65ff06f          	j	80006750 <devintr+0x60>
    800067f0:	00001097          	auipc	ra,0x1
    800067f4:	f20080e7          	jalr	-224(ra) # 80007710 <uartintr>
    800067f8:	fadff06f          	j	800067a4 <devintr+0xb4>
    800067fc:	0000                	unimp
	...

0000000080006800 <kernelvec>:
    80006800:	f0010113          	addi	sp,sp,-256
    80006804:	00113023          	sd	ra,0(sp)
    80006808:	00213423          	sd	sp,8(sp)
    8000680c:	00313823          	sd	gp,16(sp)
    80006810:	00413c23          	sd	tp,24(sp)
    80006814:	02513023          	sd	t0,32(sp)
    80006818:	02613423          	sd	t1,40(sp)
    8000681c:	02713823          	sd	t2,48(sp)
    80006820:	02813c23          	sd	s0,56(sp)
    80006824:	04913023          	sd	s1,64(sp)
    80006828:	04a13423          	sd	a0,72(sp)
    8000682c:	04b13823          	sd	a1,80(sp)
    80006830:	04c13c23          	sd	a2,88(sp)
    80006834:	06d13023          	sd	a3,96(sp)
    80006838:	06e13423          	sd	a4,104(sp)
    8000683c:	06f13823          	sd	a5,112(sp)
    80006840:	07013c23          	sd	a6,120(sp)
    80006844:	09113023          	sd	a7,128(sp)
    80006848:	09213423          	sd	s2,136(sp)
    8000684c:	09313823          	sd	s3,144(sp)
    80006850:	09413c23          	sd	s4,152(sp)
    80006854:	0b513023          	sd	s5,160(sp)
    80006858:	0b613423          	sd	s6,168(sp)
    8000685c:	0b713823          	sd	s7,176(sp)
    80006860:	0b813c23          	sd	s8,184(sp)
    80006864:	0d913023          	sd	s9,192(sp)
    80006868:	0da13423          	sd	s10,200(sp)
    8000686c:	0db13823          	sd	s11,208(sp)
    80006870:	0dc13c23          	sd	t3,216(sp)
    80006874:	0fd13023          	sd	t4,224(sp)
    80006878:	0fe13423          	sd	t5,232(sp)
    8000687c:	0ff13823          	sd	t6,240(sp)
    80006880:	cd1ff0ef          	jal	ra,80006550 <kerneltrap>
    80006884:	00013083          	ld	ra,0(sp)
    80006888:	00813103          	ld	sp,8(sp)
    8000688c:	01013183          	ld	gp,16(sp)
    80006890:	02013283          	ld	t0,32(sp)
    80006894:	02813303          	ld	t1,40(sp)
    80006898:	03013383          	ld	t2,48(sp)
    8000689c:	03813403          	ld	s0,56(sp)
    800068a0:	04013483          	ld	s1,64(sp)
    800068a4:	04813503          	ld	a0,72(sp)
    800068a8:	05013583          	ld	a1,80(sp)
    800068ac:	05813603          	ld	a2,88(sp)
    800068b0:	06013683          	ld	a3,96(sp)
    800068b4:	06813703          	ld	a4,104(sp)
    800068b8:	07013783          	ld	a5,112(sp)
    800068bc:	07813803          	ld	a6,120(sp)
    800068c0:	08013883          	ld	a7,128(sp)
    800068c4:	08813903          	ld	s2,136(sp)
    800068c8:	09013983          	ld	s3,144(sp)
    800068cc:	09813a03          	ld	s4,152(sp)
    800068d0:	0a013a83          	ld	s5,160(sp)
    800068d4:	0a813b03          	ld	s6,168(sp)
    800068d8:	0b013b83          	ld	s7,176(sp)
    800068dc:	0b813c03          	ld	s8,184(sp)
    800068e0:	0c013c83          	ld	s9,192(sp)
    800068e4:	0c813d03          	ld	s10,200(sp)
    800068e8:	0d013d83          	ld	s11,208(sp)
    800068ec:	0d813e03          	ld	t3,216(sp)
    800068f0:	0e013e83          	ld	t4,224(sp)
    800068f4:	0e813f03          	ld	t5,232(sp)
    800068f8:	0f013f83          	ld	t6,240(sp)
    800068fc:	10010113          	addi	sp,sp,256
    80006900:	10200073          	sret
    80006904:	00000013          	nop
    80006908:	00000013          	nop
    8000690c:	00000013          	nop

0000000080006910 <timervec>:
    80006910:	34051573          	csrrw	a0,mscratch,a0
    80006914:	00b53023          	sd	a1,0(a0)
    80006918:	00c53423          	sd	a2,8(a0)
    8000691c:	00d53823          	sd	a3,16(a0)
    80006920:	01853583          	ld	a1,24(a0)
    80006924:	02053603          	ld	a2,32(a0)
    80006928:	0005b683          	ld	a3,0(a1)
    8000692c:	00c686b3          	add	a3,a3,a2
    80006930:	00d5b023          	sd	a3,0(a1)
    80006934:	00200593          	li	a1,2
    80006938:	14459073          	csrw	sip,a1
    8000693c:	01053683          	ld	a3,16(a0)
    80006940:	00853603          	ld	a2,8(a0)
    80006944:	00053583          	ld	a1,0(a0)
    80006948:	34051573          	csrrw	a0,mscratch,a0
    8000694c:	30200073          	mret

0000000080006950 <plicinit>:
    80006950:	ff010113          	addi	sp,sp,-16
    80006954:	00813423          	sd	s0,8(sp)
    80006958:	01010413          	addi	s0,sp,16
    8000695c:	00813403          	ld	s0,8(sp)
    80006960:	0c0007b7          	lui	a5,0xc000
    80006964:	00100713          	li	a4,1
    80006968:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000696c:	00e7a223          	sw	a4,4(a5)
    80006970:	01010113          	addi	sp,sp,16
    80006974:	00008067          	ret

0000000080006978 <plicinithart>:
    80006978:	ff010113          	addi	sp,sp,-16
    8000697c:	00813023          	sd	s0,0(sp)
    80006980:	00113423          	sd	ra,8(sp)
    80006984:	01010413          	addi	s0,sp,16
    80006988:	00000097          	auipc	ra,0x0
    8000698c:	a48080e7          	jalr	-1464(ra) # 800063d0 <cpuid>
    80006990:	0085171b          	slliw	a4,a0,0x8
    80006994:	0c0027b7          	lui	a5,0xc002
    80006998:	00e787b3          	add	a5,a5,a4
    8000699c:	40200713          	li	a4,1026
    800069a0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800069a4:	00813083          	ld	ra,8(sp)
    800069a8:	00013403          	ld	s0,0(sp)
    800069ac:	00d5151b          	slliw	a0,a0,0xd
    800069b0:	0c2017b7          	lui	a5,0xc201
    800069b4:	00a78533          	add	a0,a5,a0
    800069b8:	00052023          	sw	zero,0(a0)
    800069bc:	01010113          	addi	sp,sp,16
    800069c0:	00008067          	ret

00000000800069c4 <plic_claim>:
    800069c4:	ff010113          	addi	sp,sp,-16
    800069c8:	00813023          	sd	s0,0(sp)
    800069cc:	00113423          	sd	ra,8(sp)
    800069d0:	01010413          	addi	s0,sp,16
    800069d4:	00000097          	auipc	ra,0x0
    800069d8:	9fc080e7          	jalr	-1540(ra) # 800063d0 <cpuid>
    800069dc:	00813083          	ld	ra,8(sp)
    800069e0:	00013403          	ld	s0,0(sp)
    800069e4:	00d5151b          	slliw	a0,a0,0xd
    800069e8:	0c2017b7          	lui	a5,0xc201
    800069ec:	00a78533          	add	a0,a5,a0
    800069f0:	00452503          	lw	a0,4(a0)
    800069f4:	01010113          	addi	sp,sp,16
    800069f8:	00008067          	ret

00000000800069fc <plic_complete>:
    800069fc:	fe010113          	addi	sp,sp,-32
    80006a00:	00813823          	sd	s0,16(sp)
    80006a04:	00913423          	sd	s1,8(sp)
    80006a08:	00113c23          	sd	ra,24(sp)
    80006a0c:	02010413          	addi	s0,sp,32
    80006a10:	00050493          	mv	s1,a0
    80006a14:	00000097          	auipc	ra,0x0
    80006a18:	9bc080e7          	jalr	-1604(ra) # 800063d0 <cpuid>
    80006a1c:	01813083          	ld	ra,24(sp)
    80006a20:	01013403          	ld	s0,16(sp)
    80006a24:	00d5179b          	slliw	a5,a0,0xd
    80006a28:	0c201737          	lui	a4,0xc201
    80006a2c:	00f707b3          	add	a5,a4,a5
    80006a30:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006a34:	00813483          	ld	s1,8(sp)
    80006a38:	02010113          	addi	sp,sp,32
    80006a3c:	00008067          	ret

0000000080006a40 <consolewrite>:
    80006a40:	fb010113          	addi	sp,sp,-80
    80006a44:	04813023          	sd	s0,64(sp)
    80006a48:	04113423          	sd	ra,72(sp)
    80006a4c:	02913c23          	sd	s1,56(sp)
    80006a50:	03213823          	sd	s2,48(sp)
    80006a54:	03313423          	sd	s3,40(sp)
    80006a58:	03413023          	sd	s4,32(sp)
    80006a5c:	01513c23          	sd	s5,24(sp)
    80006a60:	05010413          	addi	s0,sp,80
    80006a64:	06c05c63          	blez	a2,80006adc <consolewrite+0x9c>
    80006a68:	00060993          	mv	s3,a2
    80006a6c:	00050a13          	mv	s4,a0
    80006a70:	00058493          	mv	s1,a1
    80006a74:	00000913          	li	s2,0
    80006a78:	fff00a93          	li	s5,-1
    80006a7c:	01c0006f          	j	80006a98 <consolewrite+0x58>
    80006a80:	fbf44503          	lbu	a0,-65(s0)
    80006a84:	0019091b          	addiw	s2,s2,1
    80006a88:	00148493          	addi	s1,s1,1
    80006a8c:	00001097          	auipc	ra,0x1
    80006a90:	a9c080e7          	jalr	-1380(ra) # 80007528 <uartputc>
    80006a94:	03298063          	beq	s3,s2,80006ab4 <consolewrite+0x74>
    80006a98:	00048613          	mv	a2,s1
    80006a9c:	00100693          	li	a3,1
    80006aa0:	000a0593          	mv	a1,s4
    80006aa4:	fbf40513          	addi	a0,s0,-65
    80006aa8:	00000097          	auipc	ra,0x0
    80006aac:	9e0080e7          	jalr	-1568(ra) # 80006488 <either_copyin>
    80006ab0:	fd5518e3          	bne	a0,s5,80006a80 <consolewrite+0x40>
    80006ab4:	04813083          	ld	ra,72(sp)
    80006ab8:	04013403          	ld	s0,64(sp)
    80006abc:	03813483          	ld	s1,56(sp)
    80006ac0:	02813983          	ld	s3,40(sp)
    80006ac4:	02013a03          	ld	s4,32(sp)
    80006ac8:	01813a83          	ld	s5,24(sp)
    80006acc:	00090513          	mv	a0,s2
    80006ad0:	03013903          	ld	s2,48(sp)
    80006ad4:	05010113          	addi	sp,sp,80
    80006ad8:	00008067          	ret
    80006adc:	00000913          	li	s2,0
    80006ae0:	fd5ff06f          	j	80006ab4 <consolewrite+0x74>

0000000080006ae4 <consoleread>:
    80006ae4:	f9010113          	addi	sp,sp,-112
    80006ae8:	06813023          	sd	s0,96(sp)
    80006aec:	04913c23          	sd	s1,88(sp)
    80006af0:	05213823          	sd	s2,80(sp)
    80006af4:	05313423          	sd	s3,72(sp)
    80006af8:	05413023          	sd	s4,64(sp)
    80006afc:	03513c23          	sd	s5,56(sp)
    80006b00:	03613823          	sd	s6,48(sp)
    80006b04:	03713423          	sd	s7,40(sp)
    80006b08:	03813023          	sd	s8,32(sp)
    80006b0c:	06113423          	sd	ra,104(sp)
    80006b10:	01913c23          	sd	s9,24(sp)
    80006b14:	07010413          	addi	s0,sp,112
    80006b18:	00060b93          	mv	s7,a2
    80006b1c:	00050913          	mv	s2,a0
    80006b20:	00058c13          	mv	s8,a1
    80006b24:	00060b1b          	sext.w	s6,a2
    80006b28:	0000a497          	auipc	s1,0xa
    80006b2c:	03048493          	addi	s1,s1,48 # 80010b58 <cons>
    80006b30:	00400993          	li	s3,4
    80006b34:	fff00a13          	li	s4,-1
    80006b38:	00a00a93          	li	s5,10
    80006b3c:	05705e63          	blez	s7,80006b98 <consoleread+0xb4>
    80006b40:	09c4a703          	lw	a4,156(s1)
    80006b44:	0984a783          	lw	a5,152(s1)
    80006b48:	0007071b          	sext.w	a4,a4
    80006b4c:	08e78463          	beq	a5,a4,80006bd4 <consoleread+0xf0>
    80006b50:	07f7f713          	andi	a4,a5,127
    80006b54:	00e48733          	add	a4,s1,a4
    80006b58:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006b5c:	0017869b          	addiw	a3,a5,1
    80006b60:	08d4ac23          	sw	a3,152(s1)
    80006b64:	00070c9b          	sext.w	s9,a4
    80006b68:	0b370663          	beq	a4,s3,80006c14 <consoleread+0x130>
    80006b6c:	00100693          	li	a3,1
    80006b70:	f9f40613          	addi	a2,s0,-97
    80006b74:	000c0593          	mv	a1,s8
    80006b78:	00090513          	mv	a0,s2
    80006b7c:	f8e40fa3          	sb	a4,-97(s0)
    80006b80:	00000097          	auipc	ra,0x0
    80006b84:	8bc080e7          	jalr	-1860(ra) # 8000643c <either_copyout>
    80006b88:	01450863          	beq	a0,s4,80006b98 <consoleread+0xb4>
    80006b8c:	001c0c13          	addi	s8,s8,1
    80006b90:	fffb8b9b          	addiw	s7,s7,-1
    80006b94:	fb5c94e3          	bne	s9,s5,80006b3c <consoleread+0x58>
    80006b98:	000b851b          	sext.w	a0,s7
    80006b9c:	06813083          	ld	ra,104(sp)
    80006ba0:	06013403          	ld	s0,96(sp)
    80006ba4:	05813483          	ld	s1,88(sp)
    80006ba8:	05013903          	ld	s2,80(sp)
    80006bac:	04813983          	ld	s3,72(sp)
    80006bb0:	04013a03          	ld	s4,64(sp)
    80006bb4:	03813a83          	ld	s5,56(sp)
    80006bb8:	02813b83          	ld	s7,40(sp)
    80006bbc:	02013c03          	ld	s8,32(sp)
    80006bc0:	01813c83          	ld	s9,24(sp)
    80006bc4:	40ab053b          	subw	a0,s6,a0
    80006bc8:	03013b03          	ld	s6,48(sp)
    80006bcc:	07010113          	addi	sp,sp,112
    80006bd0:	00008067          	ret
    80006bd4:	00001097          	auipc	ra,0x1
    80006bd8:	1d8080e7          	jalr	472(ra) # 80007dac <push_on>
    80006bdc:	0984a703          	lw	a4,152(s1)
    80006be0:	09c4a783          	lw	a5,156(s1)
    80006be4:	0007879b          	sext.w	a5,a5
    80006be8:	fef70ce3          	beq	a4,a5,80006be0 <consoleread+0xfc>
    80006bec:	00001097          	auipc	ra,0x1
    80006bf0:	234080e7          	jalr	564(ra) # 80007e20 <pop_on>
    80006bf4:	0984a783          	lw	a5,152(s1)
    80006bf8:	07f7f713          	andi	a4,a5,127
    80006bfc:	00e48733          	add	a4,s1,a4
    80006c00:	01874703          	lbu	a4,24(a4)
    80006c04:	0017869b          	addiw	a3,a5,1
    80006c08:	08d4ac23          	sw	a3,152(s1)
    80006c0c:	00070c9b          	sext.w	s9,a4
    80006c10:	f5371ee3          	bne	a4,s3,80006b6c <consoleread+0x88>
    80006c14:	000b851b          	sext.w	a0,s7
    80006c18:	f96bf2e3          	bgeu	s7,s6,80006b9c <consoleread+0xb8>
    80006c1c:	08f4ac23          	sw	a5,152(s1)
    80006c20:	f7dff06f          	j	80006b9c <consoleread+0xb8>

0000000080006c24 <consputc>:
    80006c24:	10000793          	li	a5,256
    80006c28:	00f50663          	beq	a0,a5,80006c34 <consputc+0x10>
    80006c2c:	00001317          	auipc	t1,0x1
    80006c30:	9f430067          	jr	-1548(t1) # 80007620 <uartputc_sync>
    80006c34:	ff010113          	addi	sp,sp,-16
    80006c38:	00113423          	sd	ra,8(sp)
    80006c3c:	00813023          	sd	s0,0(sp)
    80006c40:	01010413          	addi	s0,sp,16
    80006c44:	00800513          	li	a0,8
    80006c48:	00001097          	auipc	ra,0x1
    80006c4c:	9d8080e7          	jalr	-1576(ra) # 80007620 <uartputc_sync>
    80006c50:	02000513          	li	a0,32
    80006c54:	00001097          	auipc	ra,0x1
    80006c58:	9cc080e7          	jalr	-1588(ra) # 80007620 <uartputc_sync>
    80006c5c:	00013403          	ld	s0,0(sp)
    80006c60:	00813083          	ld	ra,8(sp)
    80006c64:	00800513          	li	a0,8
    80006c68:	01010113          	addi	sp,sp,16
    80006c6c:	00001317          	auipc	t1,0x1
    80006c70:	9b430067          	jr	-1612(t1) # 80007620 <uartputc_sync>

0000000080006c74 <consoleintr>:
    80006c74:	fe010113          	addi	sp,sp,-32
    80006c78:	00813823          	sd	s0,16(sp)
    80006c7c:	00913423          	sd	s1,8(sp)
    80006c80:	01213023          	sd	s2,0(sp)
    80006c84:	00113c23          	sd	ra,24(sp)
    80006c88:	02010413          	addi	s0,sp,32
    80006c8c:	0000a917          	auipc	s2,0xa
    80006c90:	ecc90913          	addi	s2,s2,-308 # 80010b58 <cons>
    80006c94:	00050493          	mv	s1,a0
    80006c98:	00090513          	mv	a0,s2
    80006c9c:	00001097          	auipc	ra,0x1
    80006ca0:	e40080e7          	jalr	-448(ra) # 80007adc <acquire>
    80006ca4:	02048c63          	beqz	s1,80006cdc <consoleintr+0x68>
    80006ca8:	0a092783          	lw	a5,160(s2)
    80006cac:	09892703          	lw	a4,152(s2)
    80006cb0:	07f00693          	li	a3,127
    80006cb4:	40e7873b          	subw	a4,a5,a4
    80006cb8:	02e6e263          	bltu	a3,a4,80006cdc <consoleintr+0x68>
    80006cbc:	00d00713          	li	a4,13
    80006cc0:	04e48063          	beq	s1,a4,80006d00 <consoleintr+0x8c>
    80006cc4:	07f7f713          	andi	a4,a5,127
    80006cc8:	00e90733          	add	a4,s2,a4
    80006ccc:	0017879b          	addiw	a5,a5,1
    80006cd0:	0af92023          	sw	a5,160(s2)
    80006cd4:	00970c23          	sb	s1,24(a4)
    80006cd8:	08f92e23          	sw	a5,156(s2)
    80006cdc:	01013403          	ld	s0,16(sp)
    80006ce0:	01813083          	ld	ra,24(sp)
    80006ce4:	00813483          	ld	s1,8(sp)
    80006ce8:	00013903          	ld	s2,0(sp)
    80006cec:	0000a517          	auipc	a0,0xa
    80006cf0:	e6c50513          	addi	a0,a0,-404 # 80010b58 <cons>
    80006cf4:	02010113          	addi	sp,sp,32
    80006cf8:	00001317          	auipc	t1,0x1
    80006cfc:	eb030067          	jr	-336(t1) # 80007ba8 <release>
    80006d00:	00a00493          	li	s1,10
    80006d04:	fc1ff06f          	j	80006cc4 <consoleintr+0x50>

0000000080006d08 <consoleinit>:
    80006d08:	fe010113          	addi	sp,sp,-32
    80006d0c:	00113c23          	sd	ra,24(sp)
    80006d10:	00813823          	sd	s0,16(sp)
    80006d14:	00913423          	sd	s1,8(sp)
    80006d18:	02010413          	addi	s0,sp,32
    80006d1c:	0000a497          	auipc	s1,0xa
    80006d20:	e3c48493          	addi	s1,s1,-452 # 80010b58 <cons>
    80006d24:	00048513          	mv	a0,s1
    80006d28:	00003597          	auipc	a1,0x3
    80006d2c:	a5058593          	addi	a1,a1,-1456 # 80009778 <CONSOLE_STATUS+0x768>
    80006d30:	00001097          	auipc	ra,0x1
    80006d34:	d88080e7          	jalr	-632(ra) # 80007ab8 <initlock>
    80006d38:	00000097          	auipc	ra,0x0
    80006d3c:	7ac080e7          	jalr	1964(ra) # 800074e4 <uartinit>
    80006d40:	01813083          	ld	ra,24(sp)
    80006d44:	01013403          	ld	s0,16(sp)
    80006d48:	00000797          	auipc	a5,0x0
    80006d4c:	d9c78793          	addi	a5,a5,-612 # 80006ae4 <consoleread>
    80006d50:	0af4bc23          	sd	a5,184(s1)
    80006d54:	00000797          	auipc	a5,0x0
    80006d58:	cec78793          	addi	a5,a5,-788 # 80006a40 <consolewrite>
    80006d5c:	0cf4b023          	sd	a5,192(s1)
    80006d60:	00813483          	ld	s1,8(sp)
    80006d64:	02010113          	addi	sp,sp,32
    80006d68:	00008067          	ret

0000000080006d6c <console_read>:
    80006d6c:	ff010113          	addi	sp,sp,-16
    80006d70:	00813423          	sd	s0,8(sp)
    80006d74:	01010413          	addi	s0,sp,16
    80006d78:	00813403          	ld	s0,8(sp)
    80006d7c:	0000a317          	auipc	t1,0xa
    80006d80:	e9433303          	ld	t1,-364(t1) # 80010c10 <devsw+0x10>
    80006d84:	01010113          	addi	sp,sp,16
    80006d88:	00030067          	jr	t1

0000000080006d8c <console_write>:
    80006d8c:	ff010113          	addi	sp,sp,-16
    80006d90:	00813423          	sd	s0,8(sp)
    80006d94:	01010413          	addi	s0,sp,16
    80006d98:	00813403          	ld	s0,8(sp)
    80006d9c:	0000a317          	auipc	t1,0xa
    80006da0:	e7c33303          	ld	t1,-388(t1) # 80010c18 <devsw+0x18>
    80006da4:	01010113          	addi	sp,sp,16
    80006da8:	00030067          	jr	t1

0000000080006dac <panic>:
    80006dac:	fe010113          	addi	sp,sp,-32
    80006db0:	00113c23          	sd	ra,24(sp)
    80006db4:	00813823          	sd	s0,16(sp)
    80006db8:	00913423          	sd	s1,8(sp)
    80006dbc:	02010413          	addi	s0,sp,32
    80006dc0:	00050493          	mv	s1,a0
    80006dc4:	00003517          	auipc	a0,0x3
    80006dc8:	9bc50513          	addi	a0,a0,-1604 # 80009780 <CONSOLE_STATUS+0x770>
    80006dcc:	0000a797          	auipc	a5,0xa
    80006dd0:	ee07a623          	sw	zero,-276(a5) # 80010cb8 <pr+0x18>
    80006dd4:	00000097          	auipc	ra,0x0
    80006dd8:	034080e7          	jalr	52(ra) # 80006e08 <__printf>
    80006ddc:	00048513          	mv	a0,s1
    80006de0:	00000097          	auipc	ra,0x0
    80006de4:	028080e7          	jalr	40(ra) # 80006e08 <__printf>
    80006de8:	00003517          	auipc	a0,0x3
    80006dec:	97850513          	addi	a0,a0,-1672 # 80009760 <CONSOLE_STATUS+0x750>
    80006df0:	00000097          	auipc	ra,0x0
    80006df4:	018080e7          	jalr	24(ra) # 80006e08 <__printf>
    80006df8:	00100793          	li	a5,1
    80006dfc:	00005717          	auipc	a4,0x5
    80006e00:	b8f72e23          	sw	a5,-1124(a4) # 8000b998 <panicked>
    80006e04:	0000006f          	j	80006e04 <panic+0x58>

0000000080006e08 <__printf>:
    80006e08:	f3010113          	addi	sp,sp,-208
    80006e0c:	08813023          	sd	s0,128(sp)
    80006e10:	07313423          	sd	s3,104(sp)
    80006e14:	09010413          	addi	s0,sp,144
    80006e18:	05813023          	sd	s8,64(sp)
    80006e1c:	08113423          	sd	ra,136(sp)
    80006e20:	06913c23          	sd	s1,120(sp)
    80006e24:	07213823          	sd	s2,112(sp)
    80006e28:	07413023          	sd	s4,96(sp)
    80006e2c:	05513c23          	sd	s5,88(sp)
    80006e30:	05613823          	sd	s6,80(sp)
    80006e34:	05713423          	sd	s7,72(sp)
    80006e38:	03913c23          	sd	s9,56(sp)
    80006e3c:	03a13823          	sd	s10,48(sp)
    80006e40:	03b13423          	sd	s11,40(sp)
    80006e44:	0000a317          	auipc	t1,0xa
    80006e48:	e5c30313          	addi	t1,t1,-420 # 80010ca0 <pr>
    80006e4c:	01832c03          	lw	s8,24(t1)
    80006e50:	00b43423          	sd	a1,8(s0)
    80006e54:	00c43823          	sd	a2,16(s0)
    80006e58:	00d43c23          	sd	a3,24(s0)
    80006e5c:	02e43023          	sd	a4,32(s0)
    80006e60:	02f43423          	sd	a5,40(s0)
    80006e64:	03043823          	sd	a6,48(s0)
    80006e68:	03143c23          	sd	a7,56(s0)
    80006e6c:	00050993          	mv	s3,a0
    80006e70:	4a0c1663          	bnez	s8,8000731c <__printf+0x514>
    80006e74:	60098c63          	beqz	s3,8000748c <__printf+0x684>
    80006e78:	0009c503          	lbu	a0,0(s3)
    80006e7c:	00840793          	addi	a5,s0,8
    80006e80:	f6f43c23          	sd	a5,-136(s0)
    80006e84:	00000493          	li	s1,0
    80006e88:	22050063          	beqz	a0,800070a8 <__printf+0x2a0>
    80006e8c:	00002a37          	lui	s4,0x2
    80006e90:	00018ab7          	lui	s5,0x18
    80006e94:	000f4b37          	lui	s6,0xf4
    80006e98:	00989bb7          	lui	s7,0x989
    80006e9c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006ea0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006ea4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006ea8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006eac:	00148c9b          	addiw	s9,s1,1
    80006eb0:	02500793          	li	a5,37
    80006eb4:	01998933          	add	s2,s3,s9
    80006eb8:	38f51263          	bne	a0,a5,8000723c <__printf+0x434>
    80006ebc:	00094783          	lbu	a5,0(s2)
    80006ec0:	00078c9b          	sext.w	s9,a5
    80006ec4:	1e078263          	beqz	a5,800070a8 <__printf+0x2a0>
    80006ec8:	0024849b          	addiw	s1,s1,2
    80006ecc:	07000713          	li	a4,112
    80006ed0:	00998933          	add	s2,s3,s1
    80006ed4:	38e78a63          	beq	a5,a4,80007268 <__printf+0x460>
    80006ed8:	20f76863          	bltu	a4,a5,800070e8 <__printf+0x2e0>
    80006edc:	42a78863          	beq	a5,a0,8000730c <__printf+0x504>
    80006ee0:	06400713          	li	a4,100
    80006ee4:	40e79663          	bne	a5,a4,800072f0 <__printf+0x4e8>
    80006ee8:	f7843783          	ld	a5,-136(s0)
    80006eec:	0007a603          	lw	a2,0(a5)
    80006ef0:	00878793          	addi	a5,a5,8
    80006ef4:	f6f43c23          	sd	a5,-136(s0)
    80006ef8:	42064a63          	bltz	a2,8000732c <__printf+0x524>
    80006efc:	00a00713          	li	a4,10
    80006f00:	02e677bb          	remuw	a5,a2,a4
    80006f04:	00003d97          	auipc	s11,0x3
    80006f08:	8a4d8d93          	addi	s11,s11,-1884 # 800097a8 <digits>
    80006f0c:	00900593          	li	a1,9
    80006f10:	0006051b          	sext.w	a0,a2
    80006f14:	00000c93          	li	s9,0
    80006f18:	02079793          	slli	a5,a5,0x20
    80006f1c:	0207d793          	srli	a5,a5,0x20
    80006f20:	00fd87b3          	add	a5,s11,a5
    80006f24:	0007c783          	lbu	a5,0(a5)
    80006f28:	02e656bb          	divuw	a3,a2,a4
    80006f2c:	f8f40023          	sb	a5,-128(s0)
    80006f30:	14c5d863          	bge	a1,a2,80007080 <__printf+0x278>
    80006f34:	06300593          	li	a1,99
    80006f38:	00100c93          	li	s9,1
    80006f3c:	02e6f7bb          	remuw	a5,a3,a4
    80006f40:	02079793          	slli	a5,a5,0x20
    80006f44:	0207d793          	srli	a5,a5,0x20
    80006f48:	00fd87b3          	add	a5,s11,a5
    80006f4c:	0007c783          	lbu	a5,0(a5)
    80006f50:	02e6d73b          	divuw	a4,a3,a4
    80006f54:	f8f400a3          	sb	a5,-127(s0)
    80006f58:	12a5f463          	bgeu	a1,a0,80007080 <__printf+0x278>
    80006f5c:	00a00693          	li	a3,10
    80006f60:	00900593          	li	a1,9
    80006f64:	02d777bb          	remuw	a5,a4,a3
    80006f68:	02079793          	slli	a5,a5,0x20
    80006f6c:	0207d793          	srli	a5,a5,0x20
    80006f70:	00fd87b3          	add	a5,s11,a5
    80006f74:	0007c503          	lbu	a0,0(a5)
    80006f78:	02d757bb          	divuw	a5,a4,a3
    80006f7c:	f8a40123          	sb	a0,-126(s0)
    80006f80:	48e5f263          	bgeu	a1,a4,80007404 <__printf+0x5fc>
    80006f84:	06300513          	li	a0,99
    80006f88:	02d7f5bb          	remuw	a1,a5,a3
    80006f8c:	02059593          	slli	a1,a1,0x20
    80006f90:	0205d593          	srli	a1,a1,0x20
    80006f94:	00bd85b3          	add	a1,s11,a1
    80006f98:	0005c583          	lbu	a1,0(a1)
    80006f9c:	02d7d7bb          	divuw	a5,a5,a3
    80006fa0:	f8b401a3          	sb	a1,-125(s0)
    80006fa4:	48e57263          	bgeu	a0,a4,80007428 <__printf+0x620>
    80006fa8:	3e700513          	li	a0,999
    80006fac:	02d7f5bb          	remuw	a1,a5,a3
    80006fb0:	02059593          	slli	a1,a1,0x20
    80006fb4:	0205d593          	srli	a1,a1,0x20
    80006fb8:	00bd85b3          	add	a1,s11,a1
    80006fbc:	0005c583          	lbu	a1,0(a1)
    80006fc0:	02d7d7bb          	divuw	a5,a5,a3
    80006fc4:	f8b40223          	sb	a1,-124(s0)
    80006fc8:	46e57663          	bgeu	a0,a4,80007434 <__printf+0x62c>
    80006fcc:	02d7f5bb          	remuw	a1,a5,a3
    80006fd0:	02059593          	slli	a1,a1,0x20
    80006fd4:	0205d593          	srli	a1,a1,0x20
    80006fd8:	00bd85b3          	add	a1,s11,a1
    80006fdc:	0005c583          	lbu	a1,0(a1)
    80006fe0:	02d7d7bb          	divuw	a5,a5,a3
    80006fe4:	f8b402a3          	sb	a1,-123(s0)
    80006fe8:	46ea7863          	bgeu	s4,a4,80007458 <__printf+0x650>
    80006fec:	02d7f5bb          	remuw	a1,a5,a3
    80006ff0:	02059593          	slli	a1,a1,0x20
    80006ff4:	0205d593          	srli	a1,a1,0x20
    80006ff8:	00bd85b3          	add	a1,s11,a1
    80006ffc:	0005c583          	lbu	a1,0(a1)
    80007000:	02d7d7bb          	divuw	a5,a5,a3
    80007004:	f8b40323          	sb	a1,-122(s0)
    80007008:	3eeaf863          	bgeu	s5,a4,800073f8 <__printf+0x5f0>
    8000700c:	02d7f5bb          	remuw	a1,a5,a3
    80007010:	02059593          	slli	a1,a1,0x20
    80007014:	0205d593          	srli	a1,a1,0x20
    80007018:	00bd85b3          	add	a1,s11,a1
    8000701c:	0005c583          	lbu	a1,0(a1)
    80007020:	02d7d7bb          	divuw	a5,a5,a3
    80007024:	f8b403a3          	sb	a1,-121(s0)
    80007028:	42eb7e63          	bgeu	s6,a4,80007464 <__printf+0x65c>
    8000702c:	02d7f5bb          	remuw	a1,a5,a3
    80007030:	02059593          	slli	a1,a1,0x20
    80007034:	0205d593          	srli	a1,a1,0x20
    80007038:	00bd85b3          	add	a1,s11,a1
    8000703c:	0005c583          	lbu	a1,0(a1)
    80007040:	02d7d7bb          	divuw	a5,a5,a3
    80007044:	f8b40423          	sb	a1,-120(s0)
    80007048:	42ebfc63          	bgeu	s7,a4,80007480 <__printf+0x678>
    8000704c:	02079793          	slli	a5,a5,0x20
    80007050:	0207d793          	srli	a5,a5,0x20
    80007054:	00fd8db3          	add	s11,s11,a5
    80007058:	000dc703          	lbu	a4,0(s11)
    8000705c:	00a00793          	li	a5,10
    80007060:	00900c93          	li	s9,9
    80007064:	f8e404a3          	sb	a4,-119(s0)
    80007068:	00065c63          	bgez	a2,80007080 <__printf+0x278>
    8000706c:	f9040713          	addi	a4,s0,-112
    80007070:	00f70733          	add	a4,a4,a5
    80007074:	02d00693          	li	a3,45
    80007078:	fed70823          	sb	a3,-16(a4)
    8000707c:	00078c93          	mv	s9,a5
    80007080:	f8040793          	addi	a5,s0,-128
    80007084:	01978cb3          	add	s9,a5,s9
    80007088:	f7f40d13          	addi	s10,s0,-129
    8000708c:	000cc503          	lbu	a0,0(s9)
    80007090:	fffc8c93          	addi	s9,s9,-1
    80007094:	00000097          	auipc	ra,0x0
    80007098:	b90080e7          	jalr	-1136(ra) # 80006c24 <consputc>
    8000709c:	ffac98e3          	bne	s9,s10,8000708c <__printf+0x284>
    800070a0:	00094503          	lbu	a0,0(s2)
    800070a4:	e00514e3          	bnez	a0,80006eac <__printf+0xa4>
    800070a8:	1a0c1663          	bnez	s8,80007254 <__printf+0x44c>
    800070ac:	08813083          	ld	ra,136(sp)
    800070b0:	08013403          	ld	s0,128(sp)
    800070b4:	07813483          	ld	s1,120(sp)
    800070b8:	07013903          	ld	s2,112(sp)
    800070bc:	06813983          	ld	s3,104(sp)
    800070c0:	06013a03          	ld	s4,96(sp)
    800070c4:	05813a83          	ld	s5,88(sp)
    800070c8:	05013b03          	ld	s6,80(sp)
    800070cc:	04813b83          	ld	s7,72(sp)
    800070d0:	04013c03          	ld	s8,64(sp)
    800070d4:	03813c83          	ld	s9,56(sp)
    800070d8:	03013d03          	ld	s10,48(sp)
    800070dc:	02813d83          	ld	s11,40(sp)
    800070e0:	0d010113          	addi	sp,sp,208
    800070e4:	00008067          	ret
    800070e8:	07300713          	li	a4,115
    800070ec:	1ce78a63          	beq	a5,a4,800072c0 <__printf+0x4b8>
    800070f0:	07800713          	li	a4,120
    800070f4:	1ee79e63          	bne	a5,a4,800072f0 <__printf+0x4e8>
    800070f8:	f7843783          	ld	a5,-136(s0)
    800070fc:	0007a703          	lw	a4,0(a5)
    80007100:	00878793          	addi	a5,a5,8
    80007104:	f6f43c23          	sd	a5,-136(s0)
    80007108:	28074263          	bltz	a4,8000738c <__printf+0x584>
    8000710c:	00002d97          	auipc	s11,0x2
    80007110:	69cd8d93          	addi	s11,s11,1692 # 800097a8 <digits>
    80007114:	00f77793          	andi	a5,a4,15
    80007118:	00fd87b3          	add	a5,s11,a5
    8000711c:	0007c683          	lbu	a3,0(a5)
    80007120:	00f00613          	li	a2,15
    80007124:	0007079b          	sext.w	a5,a4
    80007128:	f8d40023          	sb	a3,-128(s0)
    8000712c:	0047559b          	srliw	a1,a4,0x4
    80007130:	0047569b          	srliw	a3,a4,0x4
    80007134:	00000c93          	li	s9,0
    80007138:	0ee65063          	bge	a2,a4,80007218 <__printf+0x410>
    8000713c:	00f6f693          	andi	a3,a3,15
    80007140:	00dd86b3          	add	a3,s11,a3
    80007144:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007148:	0087d79b          	srliw	a5,a5,0x8
    8000714c:	00100c93          	li	s9,1
    80007150:	f8d400a3          	sb	a3,-127(s0)
    80007154:	0cb67263          	bgeu	a2,a1,80007218 <__printf+0x410>
    80007158:	00f7f693          	andi	a3,a5,15
    8000715c:	00dd86b3          	add	a3,s11,a3
    80007160:	0006c583          	lbu	a1,0(a3)
    80007164:	00f00613          	li	a2,15
    80007168:	0047d69b          	srliw	a3,a5,0x4
    8000716c:	f8b40123          	sb	a1,-126(s0)
    80007170:	0047d593          	srli	a1,a5,0x4
    80007174:	28f67e63          	bgeu	a2,a5,80007410 <__printf+0x608>
    80007178:	00f6f693          	andi	a3,a3,15
    8000717c:	00dd86b3          	add	a3,s11,a3
    80007180:	0006c503          	lbu	a0,0(a3)
    80007184:	0087d813          	srli	a6,a5,0x8
    80007188:	0087d69b          	srliw	a3,a5,0x8
    8000718c:	f8a401a3          	sb	a0,-125(s0)
    80007190:	28b67663          	bgeu	a2,a1,8000741c <__printf+0x614>
    80007194:	00f6f693          	andi	a3,a3,15
    80007198:	00dd86b3          	add	a3,s11,a3
    8000719c:	0006c583          	lbu	a1,0(a3)
    800071a0:	00c7d513          	srli	a0,a5,0xc
    800071a4:	00c7d69b          	srliw	a3,a5,0xc
    800071a8:	f8b40223          	sb	a1,-124(s0)
    800071ac:	29067a63          	bgeu	a2,a6,80007440 <__printf+0x638>
    800071b0:	00f6f693          	andi	a3,a3,15
    800071b4:	00dd86b3          	add	a3,s11,a3
    800071b8:	0006c583          	lbu	a1,0(a3)
    800071bc:	0107d813          	srli	a6,a5,0x10
    800071c0:	0107d69b          	srliw	a3,a5,0x10
    800071c4:	f8b402a3          	sb	a1,-123(s0)
    800071c8:	28a67263          	bgeu	a2,a0,8000744c <__printf+0x644>
    800071cc:	00f6f693          	andi	a3,a3,15
    800071d0:	00dd86b3          	add	a3,s11,a3
    800071d4:	0006c683          	lbu	a3,0(a3)
    800071d8:	0147d79b          	srliw	a5,a5,0x14
    800071dc:	f8d40323          	sb	a3,-122(s0)
    800071e0:	21067663          	bgeu	a2,a6,800073ec <__printf+0x5e4>
    800071e4:	02079793          	slli	a5,a5,0x20
    800071e8:	0207d793          	srli	a5,a5,0x20
    800071ec:	00fd8db3          	add	s11,s11,a5
    800071f0:	000dc683          	lbu	a3,0(s11)
    800071f4:	00800793          	li	a5,8
    800071f8:	00700c93          	li	s9,7
    800071fc:	f8d403a3          	sb	a3,-121(s0)
    80007200:	00075c63          	bgez	a4,80007218 <__printf+0x410>
    80007204:	f9040713          	addi	a4,s0,-112
    80007208:	00f70733          	add	a4,a4,a5
    8000720c:	02d00693          	li	a3,45
    80007210:	fed70823          	sb	a3,-16(a4)
    80007214:	00078c93          	mv	s9,a5
    80007218:	f8040793          	addi	a5,s0,-128
    8000721c:	01978cb3          	add	s9,a5,s9
    80007220:	f7f40d13          	addi	s10,s0,-129
    80007224:	000cc503          	lbu	a0,0(s9)
    80007228:	fffc8c93          	addi	s9,s9,-1
    8000722c:	00000097          	auipc	ra,0x0
    80007230:	9f8080e7          	jalr	-1544(ra) # 80006c24 <consputc>
    80007234:	ff9d18e3          	bne	s10,s9,80007224 <__printf+0x41c>
    80007238:	0100006f          	j	80007248 <__printf+0x440>
    8000723c:	00000097          	auipc	ra,0x0
    80007240:	9e8080e7          	jalr	-1560(ra) # 80006c24 <consputc>
    80007244:	000c8493          	mv	s1,s9
    80007248:	00094503          	lbu	a0,0(s2)
    8000724c:	c60510e3          	bnez	a0,80006eac <__printf+0xa4>
    80007250:	e40c0ee3          	beqz	s8,800070ac <__printf+0x2a4>
    80007254:	0000a517          	auipc	a0,0xa
    80007258:	a4c50513          	addi	a0,a0,-1460 # 80010ca0 <pr>
    8000725c:	00001097          	auipc	ra,0x1
    80007260:	94c080e7          	jalr	-1716(ra) # 80007ba8 <release>
    80007264:	e49ff06f          	j	800070ac <__printf+0x2a4>
    80007268:	f7843783          	ld	a5,-136(s0)
    8000726c:	03000513          	li	a0,48
    80007270:	01000d13          	li	s10,16
    80007274:	00878713          	addi	a4,a5,8
    80007278:	0007bc83          	ld	s9,0(a5)
    8000727c:	f6e43c23          	sd	a4,-136(s0)
    80007280:	00000097          	auipc	ra,0x0
    80007284:	9a4080e7          	jalr	-1628(ra) # 80006c24 <consputc>
    80007288:	07800513          	li	a0,120
    8000728c:	00000097          	auipc	ra,0x0
    80007290:	998080e7          	jalr	-1640(ra) # 80006c24 <consputc>
    80007294:	00002d97          	auipc	s11,0x2
    80007298:	514d8d93          	addi	s11,s11,1300 # 800097a8 <digits>
    8000729c:	03ccd793          	srli	a5,s9,0x3c
    800072a0:	00fd87b3          	add	a5,s11,a5
    800072a4:	0007c503          	lbu	a0,0(a5)
    800072a8:	fffd0d1b          	addiw	s10,s10,-1
    800072ac:	004c9c93          	slli	s9,s9,0x4
    800072b0:	00000097          	auipc	ra,0x0
    800072b4:	974080e7          	jalr	-1676(ra) # 80006c24 <consputc>
    800072b8:	fe0d12e3          	bnez	s10,8000729c <__printf+0x494>
    800072bc:	f8dff06f          	j	80007248 <__printf+0x440>
    800072c0:	f7843783          	ld	a5,-136(s0)
    800072c4:	0007bc83          	ld	s9,0(a5)
    800072c8:	00878793          	addi	a5,a5,8
    800072cc:	f6f43c23          	sd	a5,-136(s0)
    800072d0:	000c9a63          	bnez	s9,800072e4 <__printf+0x4dc>
    800072d4:	1080006f          	j	800073dc <__printf+0x5d4>
    800072d8:	001c8c93          	addi	s9,s9,1
    800072dc:	00000097          	auipc	ra,0x0
    800072e0:	948080e7          	jalr	-1720(ra) # 80006c24 <consputc>
    800072e4:	000cc503          	lbu	a0,0(s9)
    800072e8:	fe0518e3          	bnez	a0,800072d8 <__printf+0x4d0>
    800072ec:	f5dff06f          	j	80007248 <__printf+0x440>
    800072f0:	02500513          	li	a0,37
    800072f4:	00000097          	auipc	ra,0x0
    800072f8:	930080e7          	jalr	-1744(ra) # 80006c24 <consputc>
    800072fc:	000c8513          	mv	a0,s9
    80007300:	00000097          	auipc	ra,0x0
    80007304:	924080e7          	jalr	-1756(ra) # 80006c24 <consputc>
    80007308:	f41ff06f          	j	80007248 <__printf+0x440>
    8000730c:	02500513          	li	a0,37
    80007310:	00000097          	auipc	ra,0x0
    80007314:	914080e7          	jalr	-1772(ra) # 80006c24 <consputc>
    80007318:	f31ff06f          	j	80007248 <__printf+0x440>
    8000731c:	00030513          	mv	a0,t1
    80007320:	00000097          	auipc	ra,0x0
    80007324:	7bc080e7          	jalr	1980(ra) # 80007adc <acquire>
    80007328:	b4dff06f          	j	80006e74 <__printf+0x6c>
    8000732c:	40c0053b          	negw	a0,a2
    80007330:	00a00713          	li	a4,10
    80007334:	02e576bb          	remuw	a3,a0,a4
    80007338:	00002d97          	auipc	s11,0x2
    8000733c:	470d8d93          	addi	s11,s11,1136 # 800097a8 <digits>
    80007340:	ff700593          	li	a1,-9
    80007344:	02069693          	slli	a3,a3,0x20
    80007348:	0206d693          	srli	a3,a3,0x20
    8000734c:	00dd86b3          	add	a3,s11,a3
    80007350:	0006c683          	lbu	a3,0(a3)
    80007354:	02e557bb          	divuw	a5,a0,a4
    80007358:	f8d40023          	sb	a3,-128(s0)
    8000735c:	10b65e63          	bge	a2,a1,80007478 <__printf+0x670>
    80007360:	06300593          	li	a1,99
    80007364:	02e7f6bb          	remuw	a3,a5,a4
    80007368:	02069693          	slli	a3,a3,0x20
    8000736c:	0206d693          	srli	a3,a3,0x20
    80007370:	00dd86b3          	add	a3,s11,a3
    80007374:	0006c683          	lbu	a3,0(a3)
    80007378:	02e7d73b          	divuw	a4,a5,a4
    8000737c:	00200793          	li	a5,2
    80007380:	f8d400a3          	sb	a3,-127(s0)
    80007384:	bca5ece3          	bltu	a1,a0,80006f5c <__printf+0x154>
    80007388:	ce5ff06f          	j	8000706c <__printf+0x264>
    8000738c:	40e007bb          	negw	a5,a4
    80007390:	00002d97          	auipc	s11,0x2
    80007394:	418d8d93          	addi	s11,s11,1048 # 800097a8 <digits>
    80007398:	00f7f693          	andi	a3,a5,15
    8000739c:	00dd86b3          	add	a3,s11,a3
    800073a0:	0006c583          	lbu	a1,0(a3)
    800073a4:	ff100613          	li	a2,-15
    800073a8:	0047d69b          	srliw	a3,a5,0x4
    800073ac:	f8b40023          	sb	a1,-128(s0)
    800073b0:	0047d59b          	srliw	a1,a5,0x4
    800073b4:	0ac75e63          	bge	a4,a2,80007470 <__printf+0x668>
    800073b8:	00f6f693          	andi	a3,a3,15
    800073bc:	00dd86b3          	add	a3,s11,a3
    800073c0:	0006c603          	lbu	a2,0(a3)
    800073c4:	00f00693          	li	a3,15
    800073c8:	0087d79b          	srliw	a5,a5,0x8
    800073cc:	f8c400a3          	sb	a2,-127(s0)
    800073d0:	d8b6e4e3          	bltu	a3,a1,80007158 <__printf+0x350>
    800073d4:	00200793          	li	a5,2
    800073d8:	e2dff06f          	j	80007204 <__printf+0x3fc>
    800073dc:	00002c97          	auipc	s9,0x2
    800073e0:	3acc8c93          	addi	s9,s9,940 # 80009788 <CONSOLE_STATUS+0x778>
    800073e4:	02800513          	li	a0,40
    800073e8:	ef1ff06f          	j	800072d8 <__printf+0x4d0>
    800073ec:	00700793          	li	a5,7
    800073f0:	00600c93          	li	s9,6
    800073f4:	e0dff06f          	j	80007200 <__printf+0x3f8>
    800073f8:	00700793          	li	a5,7
    800073fc:	00600c93          	li	s9,6
    80007400:	c69ff06f          	j	80007068 <__printf+0x260>
    80007404:	00300793          	li	a5,3
    80007408:	00200c93          	li	s9,2
    8000740c:	c5dff06f          	j	80007068 <__printf+0x260>
    80007410:	00300793          	li	a5,3
    80007414:	00200c93          	li	s9,2
    80007418:	de9ff06f          	j	80007200 <__printf+0x3f8>
    8000741c:	00400793          	li	a5,4
    80007420:	00300c93          	li	s9,3
    80007424:	dddff06f          	j	80007200 <__printf+0x3f8>
    80007428:	00400793          	li	a5,4
    8000742c:	00300c93          	li	s9,3
    80007430:	c39ff06f          	j	80007068 <__printf+0x260>
    80007434:	00500793          	li	a5,5
    80007438:	00400c93          	li	s9,4
    8000743c:	c2dff06f          	j	80007068 <__printf+0x260>
    80007440:	00500793          	li	a5,5
    80007444:	00400c93          	li	s9,4
    80007448:	db9ff06f          	j	80007200 <__printf+0x3f8>
    8000744c:	00600793          	li	a5,6
    80007450:	00500c93          	li	s9,5
    80007454:	dadff06f          	j	80007200 <__printf+0x3f8>
    80007458:	00600793          	li	a5,6
    8000745c:	00500c93          	li	s9,5
    80007460:	c09ff06f          	j	80007068 <__printf+0x260>
    80007464:	00800793          	li	a5,8
    80007468:	00700c93          	li	s9,7
    8000746c:	bfdff06f          	j	80007068 <__printf+0x260>
    80007470:	00100793          	li	a5,1
    80007474:	d91ff06f          	j	80007204 <__printf+0x3fc>
    80007478:	00100793          	li	a5,1
    8000747c:	bf1ff06f          	j	8000706c <__printf+0x264>
    80007480:	00900793          	li	a5,9
    80007484:	00800c93          	li	s9,8
    80007488:	be1ff06f          	j	80007068 <__printf+0x260>
    8000748c:	00002517          	auipc	a0,0x2
    80007490:	30450513          	addi	a0,a0,772 # 80009790 <CONSOLE_STATUS+0x780>
    80007494:	00000097          	auipc	ra,0x0
    80007498:	918080e7          	jalr	-1768(ra) # 80006dac <panic>

000000008000749c <printfinit>:
    8000749c:	fe010113          	addi	sp,sp,-32
    800074a0:	00813823          	sd	s0,16(sp)
    800074a4:	00913423          	sd	s1,8(sp)
    800074a8:	00113c23          	sd	ra,24(sp)
    800074ac:	02010413          	addi	s0,sp,32
    800074b0:	00009497          	auipc	s1,0x9
    800074b4:	7f048493          	addi	s1,s1,2032 # 80010ca0 <pr>
    800074b8:	00048513          	mv	a0,s1
    800074bc:	00002597          	auipc	a1,0x2
    800074c0:	2e458593          	addi	a1,a1,740 # 800097a0 <CONSOLE_STATUS+0x790>
    800074c4:	00000097          	auipc	ra,0x0
    800074c8:	5f4080e7          	jalr	1524(ra) # 80007ab8 <initlock>
    800074cc:	01813083          	ld	ra,24(sp)
    800074d0:	01013403          	ld	s0,16(sp)
    800074d4:	0004ac23          	sw	zero,24(s1)
    800074d8:	00813483          	ld	s1,8(sp)
    800074dc:	02010113          	addi	sp,sp,32
    800074e0:	00008067          	ret

00000000800074e4 <uartinit>:
    800074e4:	ff010113          	addi	sp,sp,-16
    800074e8:	00813423          	sd	s0,8(sp)
    800074ec:	01010413          	addi	s0,sp,16
    800074f0:	100007b7          	lui	a5,0x10000
    800074f4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800074f8:	f8000713          	li	a4,-128
    800074fc:	00e781a3          	sb	a4,3(a5)
    80007500:	00300713          	li	a4,3
    80007504:	00e78023          	sb	a4,0(a5)
    80007508:	000780a3          	sb	zero,1(a5)
    8000750c:	00e781a3          	sb	a4,3(a5)
    80007510:	00700693          	li	a3,7
    80007514:	00d78123          	sb	a3,2(a5)
    80007518:	00e780a3          	sb	a4,1(a5)
    8000751c:	00813403          	ld	s0,8(sp)
    80007520:	01010113          	addi	sp,sp,16
    80007524:	00008067          	ret

0000000080007528 <uartputc>:
    80007528:	00004797          	auipc	a5,0x4
    8000752c:	4707a783          	lw	a5,1136(a5) # 8000b998 <panicked>
    80007530:	00078463          	beqz	a5,80007538 <uartputc+0x10>
    80007534:	0000006f          	j	80007534 <uartputc+0xc>
    80007538:	fd010113          	addi	sp,sp,-48
    8000753c:	02813023          	sd	s0,32(sp)
    80007540:	00913c23          	sd	s1,24(sp)
    80007544:	01213823          	sd	s2,16(sp)
    80007548:	01313423          	sd	s3,8(sp)
    8000754c:	02113423          	sd	ra,40(sp)
    80007550:	03010413          	addi	s0,sp,48
    80007554:	00004917          	auipc	s2,0x4
    80007558:	44c90913          	addi	s2,s2,1100 # 8000b9a0 <uart_tx_r>
    8000755c:	00093783          	ld	a5,0(s2)
    80007560:	00004497          	auipc	s1,0x4
    80007564:	44848493          	addi	s1,s1,1096 # 8000b9a8 <uart_tx_w>
    80007568:	0004b703          	ld	a4,0(s1)
    8000756c:	02078693          	addi	a3,a5,32
    80007570:	00050993          	mv	s3,a0
    80007574:	02e69c63          	bne	a3,a4,800075ac <uartputc+0x84>
    80007578:	00001097          	auipc	ra,0x1
    8000757c:	834080e7          	jalr	-1996(ra) # 80007dac <push_on>
    80007580:	00093783          	ld	a5,0(s2)
    80007584:	0004b703          	ld	a4,0(s1)
    80007588:	02078793          	addi	a5,a5,32
    8000758c:	00e79463          	bne	a5,a4,80007594 <uartputc+0x6c>
    80007590:	0000006f          	j	80007590 <uartputc+0x68>
    80007594:	00001097          	auipc	ra,0x1
    80007598:	88c080e7          	jalr	-1908(ra) # 80007e20 <pop_on>
    8000759c:	00093783          	ld	a5,0(s2)
    800075a0:	0004b703          	ld	a4,0(s1)
    800075a4:	02078693          	addi	a3,a5,32
    800075a8:	fce688e3          	beq	a3,a4,80007578 <uartputc+0x50>
    800075ac:	01f77693          	andi	a3,a4,31
    800075b0:	00009597          	auipc	a1,0x9
    800075b4:	71058593          	addi	a1,a1,1808 # 80010cc0 <uart_tx_buf>
    800075b8:	00d586b3          	add	a3,a1,a3
    800075bc:	00170713          	addi	a4,a4,1
    800075c0:	01368023          	sb	s3,0(a3)
    800075c4:	00e4b023          	sd	a4,0(s1)
    800075c8:	10000637          	lui	a2,0x10000
    800075cc:	02f71063          	bne	a4,a5,800075ec <uartputc+0xc4>
    800075d0:	0340006f          	j	80007604 <uartputc+0xdc>
    800075d4:	00074703          	lbu	a4,0(a4)
    800075d8:	00f93023          	sd	a5,0(s2)
    800075dc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800075e0:	00093783          	ld	a5,0(s2)
    800075e4:	0004b703          	ld	a4,0(s1)
    800075e8:	00f70e63          	beq	a4,a5,80007604 <uartputc+0xdc>
    800075ec:	00564683          	lbu	a3,5(a2)
    800075f0:	01f7f713          	andi	a4,a5,31
    800075f4:	00e58733          	add	a4,a1,a4
    800075f8:	0206f693          	andi	a3,a3,32
    800075fc:	00178793          	addi	a5,a5,1
    80007600:	fc069ae3          	bnez	a3,800075d4 <uartputc+0xac>
    80007604:	02813083          	ld	ra,40(sp)
    80007608:	02013403          	ld	s0,32(sp)
    8000760c:	01813483          	ld	s1,24(sp)
    80007610:	01013903          	ld	s2,16(sp)
    80007614:	00813983          	ld	s3,8(sp)
    80007618:	03010113          	addi	sp,sp,48
    8000761c:	00008067          	ret

0000000080007620 <uartputc_sync>:
    80007620:	ff010113          	addi	sp,sp,-16
    80007624:	00813423          	sd	s0,8(sp)
    80007628:	01010413          	addi	s0,sp,16
    8000762c:	00004717          	auipc	a4,0x4
    80007630:	36c72703          	lw	a4,876(a4) # 8000b998 <panicked>
    80007634:	02071663          	bnez	a4,80007660 <uartputc_sync+0x40>
    80007638:	00050793          	mv	a5,a0
    8000763c:	100006b7          	lui	a3,0x10000
    80007640:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007644:	02077713          	andi	a4,a4,32
    80007648:	fe070ce3          	beqz	a4,80007640 <uartputc_sync+0x20>
    8000764c:	0ff7f793          	andi	a5,a5,255
    80007650:	00f68023          	sb	a5,0(a3)
    80007654:	00813403          	ld	s0,8(sp)
    80007658:	01010113          	addi	sp,sp,16
    8000765c:	00008067          	ret
    80007660:	0000006f          	j	80007660 <uartputc_sync+0x40>

0000000080007664 <uartstart>:
    80007664:	ff010113          	addi	sp,sp,-16
    80007668:	00813423          	sd	s0,8(sp)
    8000766c:	01010413          	addi	s0,sp,16
    80007670:	00004617          	auipc	a2,0x4
    80007674:	33060613          	addi	a2,a2,816 # 8000b9a0 <uart_tx_r>
    80007678:	00004517          	auipc	a0,0x4
    8000767c:	33050513          	addi	a0,a0,816 # 8000b9a8 <uart_tx_w>
    80007680:	00063783          	ld	a5,0(a2)
    80007684:	00053703          	ld	a4,0(a0)
    80007688:	04f70263          	beq	a4,a5,800076cc <uartstart+0x68>
    8000768c:	100005b7          	lui	a1,0x10000
    80007690:	00009817          	auipc	a6,0x9
    80007694:	63080813          	addi	a6,a6,1584 # 80010cc0 <uart_tx_buf>
    80007698:	01c0006f          	j	800076b4 <uartstart+0x50>
    8000769c:	0006c703          	lbu	a4,0(a3)
    800076a0:	00f63023          	sd	a5,0(a2)
    800076a4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800076a8:	00063783          	ld	a5,0(a2)
    800076ac:	00053703          	ld	a4,0(a0)
    800076b0:	00f70e63          	beq	a4,a5,800076cc <uartstart+0x68>
    800076b4:	01f7f713          	andi	a4,a5,31
    800076b8:	00e806b3          	add	a3,a6,a4
    800076bc:	0055c703          	lbu	a4,5(a1)
    800076c0:	00178793          	addi	a5,a5,1
    800076c4:	02077713          	andi	a4,a4,32
    800076c8:	fc071ae3          	bnez	a4,8000769c <uartstart+0x38>
    800076cc:	00813403          	ld	s0,8(sp)
    800076d0:	01010113          	addi	sp,sp,16
    800076d4:	00008067          	ret

00000000800076d8 <uartgetc>:
    800076d8:	ff010113          	addi	sp,sp,-16
    800076dc:	00813423          	sd	s0,8(sp)
    800076e0:	01010413          	addi	s0,sp,16
    800076e4:	10000737          	lui	a4,0x10000
    800076e8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800076ec:	0017f793          	andi	a5,a5,1
    800076f0:	00078c63          	beqz	a5,80007708 <uartgetc+0x30>
    800076f4:	00074503          	lbu	a0,0(a4)
    800076f8:	0ff57513          	andi	a0,a0,255
    800076fc:	00813403          	ld	s0,8(sp)
    80007700:	01010113          	addi	sp,sp,16
    80007704:	00008067          	ret
    80007708:	fff00513          	li	a0,-1
    8000770c:	ff1ff06f          	j	800076fc <uartgetc+0x24>

0000000080007710 <uartintr>:
    80007710:	100007b7          	lui	a5,0x10000
    80007714:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007718:	0017f793          	andi	a5,a5,1
    8000771c:	0a078463          	beqz	a5,800077c4 <uartintr+0xb4>
    80007720:	fe010113          	addi	sp,sp,-32
    80007724:	00813823          	sd	s0,16(sp)
    80007728:	00913423          	sd	s1,8(sp)
    8000772c:	00113c23          	sd	ra,24(sp)
    80007730:	02010413          	addi	s0,sp,32
    80007734:	100004b7          	lui	s1,0x10000
    80007738:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000773c:	0ff57513          	andi	a0,a0,255
    80007740:	fffff097          	auipc	ra,0xfffff
    80007744:	534080e7          	jalr	1332(ra) # 80006c74 <consoleintr>
    80007748:	0054c783          	lbu	a5,5(s1)
    8000774c:	0017f793          	andi	a5,a5,1
    80007750:	fe0794e3          	bnez	a5,80007738 <uartintr+0x28>
    80007754:	00004617          	auipc	a2,0x4
    80007758:	24c60613          	addi	a2,a2,588 # 8000b9a0 <uart_tx_r>
    8000775c:	00004517          	auipc	a0,0x4
    80007760:	24c50513          	addi	a0,a0,588 # 8000b9a8 <uart_tx_w>
    80007764:	00063783          	ld	a5,0(a2)
    80007768:	00053703          	ld	a4,0(a0)
    8000776c:	04f70263          	beq	a4,a5,800077b0 <uartintr+0xa0>
    80007770:	100005b7          	lui	a1,0x10000
    80007774:	00009817          	auipc	a6,0x9
    80007778:	54c80813          	addi	a6,a6,1356 # 80010cc0 <uart_tx_buf>
    8000777c:	01c0006f          	j	80007798 <uartintr+0x88>
    80007780:	0006c703          	lbu	a4,0(a3)
    80007784:	00f63023          	sd	a5,0(a2)
    80007788:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000778c:	00063783          	ld	a5,0(a2)
    80007790:	00053703          	ld	a4,0(a0)
    80007794:	00f70e63          	beq	a4,a5,800077b0 <uartintr+0xa0>
    80007798:	01f7f713          	andi	a4,a5,31
    8000779c:	00e806b3          	add	a3,a6,a4
    800077a0:	0055c703          	lbu	a4,5(a1)
    800077a4:	00178793          	addi	a5,a5,1
    800077a8:	02077713          	andi	a4,a4,32
    800077ac:	fc071ae3          	bnez	a4,80007780 <uartintr+0x70>
    800077b0:	01813083          	ld	ra,24(sp)
    800077b4:	01013403          	ld	s0,16(sp)
    800077b8:	00813483          	ld	s1,8(sp)
    800077bc:	02010113          	addi	sp,sp,32
    800077c0:	00008067          	ret
    800077c4:	00004617          	auipc	a2,0x4
    800077c8:	1dc60613          	addi	a2,a2,476 # 8000b9a0 <uart_tx_r>
    800077cc:	00004517          	auipc	a0,0x4
    800077d0:	1dc50513          	addi	a0,a0,476 # 8000b9a8 <uart_tx_w>
    800077d4:	00063783          	ld	a5,0(a2)
    800077d8:	00053703          	ld	a4,0(a0)
    800077dc:	04f70263          	beq	a4,a5,80007820 <uartintr+0x110>
    800077e0:	100005b7          	lui	a1,0x10000
    800077e4:	00009817          	auipc	a6,0x9
    800077e8:	4dc80813          	addi	a6,a6,1244 # 80010cc0 <uart_tx_buf>
    800077ec:	01c0006f          	j	80007808 <uartintr+0xf8>
    800077f0:	0006c703          	lbu	a4,0(a3)
    800077f4:	00f63023          	sd	a5,0(a2)
    800077f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800077fc:	00063783          	ld	a5,0(a2)
    80007800:	00053703          	ld	a4,0(a0)
    80007804:	02f70063          	beq	a4,a5,80007824 <uartintr+0x114>
    80007808:	01f7f713          	andi	a4,a5,31
    8000780c:	00e806b3          	add	a3,a6,a4
    80007810:	0055c703          	lbu	a4,5(a1)
    80007814:	00178793          	addi	a5,a5,1
    80007818:	02077713          	andi	a4,a4,32
    8000781c:	fc071ae3          	bnez	a4,800077f0 <uartintr+0xe0>
    80007820:	00008067          	ret
    80007824:	00008067          	ret

0000000080007828 <kinit>:
    80007828:	fc010113          	addi	sp,sp,-64
    8000782c:	02913423          	sd	s1,40(sp)
    80007830:	fffff7b7          	lui	a5,0xfffff
    80007834:	0000a497          	auipc	s1,0xa
    80007838:	4ab48493          	addi	s1,s1,1195 # 80011cdf <end+0xfff>
    8000783c:	02813823          	sd	s0,48(sp)
    80007840:	01313c23          	sd	s3,24(sp)
    80007844:	00f4f4b3          	and	s1,s1,a5
    80007848:	02113c23          	sd	ra,56(sp)
    8000784c:	03213023          	sd	s2,32(sp)
    80007850:	01413823          	sd	s4,16(sp)
    80007854:	01513423          	sd	s5,8(sp)
    80007858:	04010413          	addi	s0,sp,64
    8000785c:	000017b7          	lui	a5,0x1
    80007860:	01100993          	li	s3,17
    80007864:	00f487b3          	add	a5,s1,a5
    80007868:	01b99993          	slli	s3,s3,0x1b
    8000786c:	06f9e063          	bltu	s3,a5,800078cc <kinit+0xa4>
    80007870:	00009a97          	auipc	s5,0x9
    80007874:	470a8a93          	addi	s5,s5,1136 # 80010ce0 <end>
    80007878:	0754ec63          	bltu	s1,s5,800078f0 <kinit+0xc8>
    8000787c:	0734fa63          	bgeu	s1,s3,800078f0 <kinit+0xc8>
    80007880:	00088a37          	lui	s4,0x88
    80007884:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007888:	00004917          	auipc	s2,0x4
    8000788c:	12890913          	addi	s2,s2,296 # 8000b9b0 <kmem>
    80007890:	00ca1a13          	slli	s4,s4,0xc
    80007894:	0140006f          	j	800078a8 <kinit+0x80>
    80007898:	000017b7          	lui	a5,0x1
    8000789c:	00f484b3          	add	s1,s1,a5
    800078a0:	0554e863          	bltu	s1,s5,800078f0 <kinit+0xc8>
    800078a4:	0534f663          	bgeu	s1,s3,800078f0 <kinit+0xc8>
    800078a8:	00001637          	lui	a2,0x1
    800078ac:	00100593          	li	a1,1
    800078b0:	00048513          	mv	a0,s1
    800078b4:	00000097          	auipc	ra,0x0
    800078b8:	5e4080e7          	jalr	1508(ra) # 80007e98 <__memset>
    800078bc:	00093783          	ld	a5,0(s2)
    800078c0:	00f4b023          	sd	a5,0(s1)
    800078c4:	00993023          	sd	s1,0(s2)
    800078c8:	fd4498e3          	bne	s1,s4,80007898 <kinit+0x70>
    800078cc:	03813083          	ld	ra,56(sp)
    800078d0:	03013403          	ld	s0,48(sp)
    800078d4:	02813483          	ld	s1,40(sp)
    800078d8:	02013903          	ld	s2,32(sp)
    800078dc:	01813983          	ld	s3,24(sp)
    800078e0:	01013a03          	ld	s4,16(sp)
    800078e4:	00813a83          	ld	s5,8(sp)
    800078e8:	04010113          	addi	sp,sp,64
    800078ec:	00008067          	ret
    800078f0:	00002517          	auipc	a0,0x2
    800078f4:	ed050513          	addi	a0,a0,-304 # 800097c0 <digits+0x18>
    800078f8:	fffff097          	auipc	ra,0xfffff
    800078fc:	4b4080e7          	jalr	1204(ra) # 80006dac <panic>

0000000080007900 <freerange>:
    80007900:	fc010113          	addi	sp,sp,-64
    80007904:	000017b7          	lui	a5,0x1
    80007908:	02913423          	sd	s1,40(sp)
    8000790c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007910:	009504b3          	add	s1,a0,s1
    80007914:	fffff537          	lui	a0,0xfffff
    80007918:	02813823          	sd	s0,48(sp)
    8000791c:	02113c23          	sd	ra,56(sp)
    80007920:	03213023          	sd	s2,32(sp)
    80007924:	01313c23          	sd	s3,24(sp)
    80007928:	01413823          	sd	s4,16(sp)
    8000792c:	01513423          	sd	s5,8(sp)
    80007930:	01613023          	sd	s6,0(sp)
    80007934:	04010413          	addi	s0,sp,64
    80007938:	00a4f4b3          	and	s1,s1,a0
    8000793c:	00f487b3          	add	a5,s1,a5
    80007940:	06f5e463          	bltu	a1,a5,800079a8 <freerange+0xa8>
    80007944:	00009a97          	auipc	s5,0x9
    80007948:	39ca8a93          	addi	s5,s5,924 # 80010ce0 <end>
    8000794c:	0954e263          	bltu	s1,s5,800079d0 <freerange+0xd0>
    80007950:	01100993          	li	s3,17
    80007954:	01b99993          	slli	s3,s3,0x1b
    80007958:	0734fc63          	bgeu	s1,s3,800079d0 <freerange+0xd0>
    8000795c:	00058a13          	mv	s4,a1
    80007960:	00004917          	auipc	s2,0x4
    80007964:	05090913          	addi	s2,s2,80 # 8000b9b0 <kmem>
    80007968:	00002b37          	lui	s6,0x2
    8000796c:	0140006f          	j	80007980 <freerange+0x80>
    80007970:	000017b7          	lui	a5,0x1
    80007974:	00f484b3          	add	s1,s1,a5
    80007978:	0554ec63          	bltu	s1,s5,800079d0 <freerange+0xd0>
    8000797c:	0534fa63          	bgeu	s1,s3,800079d0 <freerange+0xd0>
    80007980:	00001637          	lui	a2,0x1
    80007984:	00100593          	li	a1,1
    80007988:	00048513          	mv	a0,s1
    8000798c:	00000097          	auipc	ra,0x0
    80007990:	50c080e7          	jalr	1292(ra) # 80007e98 <__memset>
    80007994:	00093703          	ld	a4,0(s2)
    80007998:	016487b3          	add	a5,s1,s6
    8000799c:	00e4b023          	sd	a4,0(s1)
    800079a0:	00993023          	sd	s1,0(s2)
    800079a4:	fcfa76e3          	bgeu	s4,a5,80007970 <freerange+0x70>
    800079a8:	03813083          	ld	ra,56(sp)
    800079ac:	03013403          	ld	s0,48(sp)
    800079b0:	02813483          	ld	s1,40(sp)
    800079b4:	02013903          	ld	s2,32(sp)
    800079b8:	01813983          	ld	s3,24(sp)
    800079bc:	01013a03          	ld	s4,16(sp)
    800079c0:	00813a83          	ld	s5,8(sp)
    800079c4:	00013b03          	ld	s6,0(sp)
    800079c8:	04010113          	addi	sp,sp,64
    800079cc:	00008067          	ret
    800079d0:	00002517          	auipc	a0,0x2
    800079d4:	df050513          	addi	a0,a0,-528 # 800097c0 <digits+0x18>
    800079d8:	fffff097          	auipc	ra,0xfffff
    800079dc:	3d4080e7          	jalr	980(ra) # 80006dac <panic>

00000000800079e0 <kfree>:
    800079e0:	fe010113          	addi	sp,sp,-32
    800079e4:	00813823          	sd	s0,16(sp)
    800079e8:	00113c23          	sd	ra,24(sp)
    800079ec:	00913423          	sd	s1,8(sp)
    800079f0:	02010413          	addi	s0,sp,32
    800079f4:	03451793          	slli	a5,a0,0x34
    800079f8:	04079c63          	bnez	a5,80007a50 <kfree+0x70>
    800079fc:	00009797          	auipc	a5,0x9
    80007a00:	2e478793          	addi	a5,a5,740 # 80010ce0 <end>
    80007a04:	00050493          	mv	s1,a0
    80007a08:	04f56463          	bltu	a0,a5,80007a50 <kfree+0x70>
    80007a0c:	01100793          	li	a5,17
    80007a10:	01b79793          	slli	a5,a5,0x1b
    80007a14:	02f57e63          	bgeu	a0,a5,80007a50 <kfree+0x70>
    80007a18:	00001637          	lui	a2,0x1
    80007a1c:	00100593          	li	a1,1
    80007a20:	00000097          	auipc	ra,0x0
    80007a24:	478080e7          	jalr	1144(ra) # 80007e98 <__memset>
    80007a28:	00004797          	auipc	a5,0x4
    80007a2c:	f8878793          	addi	a5,a5,-120 # 8000b9b0 <kmem>
    80007a30:	0007b703          	ld	a4,0(a5)
    80007a34:	01813083          	ld	ra,24(sp)
    80007a38:	01013403          	ld	s0,16(sp)
    80007a3c:	00e4b023          	sd	a4,0(s1)
    80007a40:	0097b023          	sd	s1,0(a5)
    80007a44:	00813483          	ld	s1,8(sp)
    80007a48:	02010113          	addi	sp,sp,32
    80007a4c:	00008067          	ret
    80007a50:	00002517          	auipc	a0,0x2
    80007a54:	d7050513          	addi	a0,a0,-656 # 800097c0 <digits+0x18>
    80007a58:	fffff097          	auipc	ra,0xfffff
    80007a5c:	354080e7          	jalr	852(ra) # 80006dac <panic>

0000000080007a60 <kalloc>:
    80007a60:	fe010113          	addi	sp,sp,-32
    80007a64:	00813823          	sd	s0,16(sp)
    80007a68:	00913423          	sd	s1,8(sp)
    80007a6c:	00113c23          	sd	ra,24(sp)
    80007a70:	02010413          	addi	s0,sp,32
    80007a74:	00004797          	auipc	a5,0x4
    80007a78:	f3c78793          	addi	a5,a5,-196 # 8000b9b0 <kmem>
    80007a7c:	0007b483          	ld	s1,0(a5)
    80007a80:	02048063          	beqz	s1,80007aa0 <kalloc+0x40>
    80007a84:	0004b703          	ld	a4,0(s1)
    80007a88:	00001637          	lui	a2,0x1
    80007a8c:	00500593          	li	a1,5
    80007a90:	00048513          	mv	a0,s1
    80007a94:	00e7b023          	sd	a4,0(a5)
    80007a98:	00000097          	auipc	ra,0x0
    80007a9c:	400080e7          	jalr	1024(ra) # 80007e98 <__memset>
    80007aa0:	01813083          	ld	ra,24(sp)
    80007aa4:	01013403          	ld	s0,16(sp)
    80007aa8:	00048513          	mv	a0,s1
    80007aac:	00813483          	ld	s1,8(sp)
    80007ab0:	02010113          	addi	sp,sp,32
    80007ab4:	00008067          	ret

0000000080007ab8 <initlock>:
    80007ab8:	ff010113          	addi	sp,sp,-16
    80007abc:	00813423          	sd	s0,8(sp)
    80007ac0:	01010413          	addi	s0,sp,16
    80007ac4:	00813403          	ld	s0,8(sp)
    80007ac8:	00b53423          	sd	a1,8(a0)
    80007acc:	00052023          	sw	zero,0(a0)
    80007ad0:	00053823          	sd	zero,16(a0)
    80007ad4:	01010113          	addi	sp,sp,16
    80007ad8:	00008067          	ret

0000000080007adc <acquire>:
    80007adc:	fe010113          	addi	sp,sp,-32
    80007ae0:	00813823          	sd	s0,16(sp)
    80007ae4:	00913423          	sd	s1,8(sp)
    80007ae8:	00113c23          	sd	ra,24(sp)
    80007aec:	01213023          	sd	s2,0(sp)
    80007af0:	02010413          	addi	s0,sp,32
    80007af4:	00050493          	mv	s1,a0
    80007af8:	10002973          	csrr	s2,sstatus
    80007afc:	100027f3          	csrr	a5,sstatus
    80007b00:	ffd7f793          	andi	a5,a5,-3
    80007b04:	10079073          	csrw	sstatus,a5
    80007b08:	fffff097          	auipc	ra,0xfffff
    80007b0c:	8e8080e7          	jalr	-1816(ra) # 800063f0 <mycpu>
    80007b10:	07852783          	lw	a5,120(a0)
    80007b14:	06078e63          	beqz	a5,80007b90 <acquire+0xb4>
    80007b18:	fffff097          	auipc	ra,0xfffff
    80007b1c:	8d8080e7          	jalr	-1832(ra) # 800063f0 <mycpu>
    80007b20:	07852783          	lw	a5,120(a0)
    80007b24:	0004a703          	lw	a4,0(s1)
    80007b28:	0017879b          	addiw	a5,a5,1
    80007b2c:	06f52c23          	sw	a5,120(a0)
    80007b30:	04071063          	bnez	a4,80007b70 <acquire+0x94>
    80007b34:	00100713          	li	a4,1
    80007b38:	00070793          	mv	a5,a4
    80007b3c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007b40:	0007879b          	sext.w	a5,a5
    80007b44:	fe079ae3          	bnez	a5,80007b38 <acquire+0x5c>
    80007b48:	0ff0000f          	fence
    80007b4c:	fffff097          	auipc	ra,0xfffff
    80007b50:	8a4080e7          	jalr	-1884(ra) # 800063f0 <mycpu>
    80007b54:	01813083          	ld	ra,24(sp)
    80007b58:	01013403          	ld	s0,16(sp)
    80007b5c:	00a4b823          	sd	a0,16(s1)
    80007b60:	00013903          	ld	s2,0(sp)
    80007b64:	00813483          	ld	s1,8(sp)
    80007b68:	02010113          	addi	sp,sp,32
    80007b6c:	00008067          	ret
    80007b70:	0104b903          	ld	s2,16(s1)
    80007b74:	fffff097          	auipc	ra,0xfffff
    80007b78:	87c080e7          	jalr	-1924(ra) # 800063f0 <mycpu>
    80007b7c:	faa91ce3          	bne	s2,a0,80007b34 <acquire+0x58>
    80007b80:	00002517          	auipc	a0,0x2
    80007b84:	c4850513          	addi	a0,a0,-952 # 800097c8 <digits+0x20>
    80007b88:	fffff097          	auipc	ra,0xfffff
    80007b8c:	224080e7          	jalr	548(ra) # 80006dac <panic>
    80007b90:	00195913          	srli	s2,s2,0x1
    80007b94:	fffff097          	auipc	ra,0xfffff
    80007b98:	85c080e7          	jalr	-1956(ra) # 800063f0 <mycpu>
    80007b9c:	00197913          	andi	s2,s2,1
    80007ba0:	07252e23          	sw	s2,124(a0)
    80007ba4:	f75ff06f          	j	80007b18 <acquire+0x3c>

0000000080007ba8 <release>:
    80007ba8:	fe010113          	addi	sp,sp,-32
    80007bac:	00813823          	sd	s0,16(sp)
    80007bb0:	00113c23          	sd	ra,24(sp)
    80007bb4:	00913423          	sd	s1,8(sp)
    80007bb8:	01213023          	sd	s2,0(sp)
    80007bbc:	02010413          	addi	s0,sp,32
    80007bc0:	00052783          	lw	a5,0(a0)
    80007bc4:	00079a63          	bnez	a5,80007bd8 <release+0x30>
    80007bc8:	00002517          	auipc	a0,0x2
    80007bcc:	c0850513          	addi	a0,a0,-1016 # 800097d0 <digits+0x28>
    80007bd0:	fffff097          	auipc	ra,0xfffff
    80007bd4:	1dc080e7          	jalr	476(ra) # 80006dac <panic>
    80007bd8:	01053903          	ld	s2,16(a0)
    80007bdc:	00050493          	mv	s1,a0
    80007be0:	fffff097          	auipc	ra,0xfffff
    80007be4:	810080e7          	jalr	-2032(ra) # 800063f0 <mycpu>
    80007be8:	fea910e3          	bne	s2,a0,80007bc8 <release+0x20>
    80007bec:	0004b823          	sd	zero,16(s1)
    80007bf0:	0ff0000f          	fence
    80007bf4:	0f50000f          	fence	iorw,ow
    80007bf8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007bfc:	ffffe097          	auipc	ra,0xffffe
    80007c00:	7f4080e7          	jalr	2036(ra) # 800063f0 <mycpu>
    80007c04:	100027f3          	csrr	a5,sstatus
    80007c08:	0027f793          	andi	a5,a5,2
    80007c0c:	04079a63          	bnez	a5,80007c60 <release+0xb8>
    80007c10:	07852783          	lw	a5,120(a0)
    80007c14:	02f05e63          	blez	a5,80007c50 <release+0xa8>
    80007c18:	fff7871b          	addiw	a4,a5,-1
    80007c1c:	06e52c23          	sw	a4,120(a0)
    80007c20:	00071c63          	bnez	a4,80007c38 <release+0x90>
    80007c24:	07c52783          	lw	a5,124(a0)
    80007c28:	00078863          	beqz	a5,80007c38 <release+0x90>
    80007c2c:	100027f3          	csrr	a5,sstatus
    80007c30:	0027e793          	ori	a5,a5,2
    80007c34:	10079073          	csrw	sstatus,a5
    80007c38:	01813083          	ld	ra,24(sp)
    80007c3c:	01013403          	ld	s0,16(sp)
    80007c40:	00813483          	ld	s1,8(sp)
    80007c44:	00013903          	ld	s2,0(sp)
    80007c48:	02010113          	addi	sp,sp,32
    80007c4c:	00008067          	ret
    80007c50:	00002517          	auipc	a0,0x2
    80007c54:	ba050513          	addi	a0,a0,-1120 # 800097f0 <digits+0x48>
    80007c58:	fffff097          	auipc	ra,0xfffff
    80007c5c:	154080e7          	jalr	340(ra) # 80006dac <panic>
    80007c60:	00002517          	auipc	a0,0x2
    80007c64:	b7850513          	addi	a0,a0,-1160 # 800097d8 <digits+0x30>
    80007c68:	fffff097          	auipc	ra,0xfffff
    80007c6c:	144080e7          	jalr	324(ra) # 80006dac <panic>

0000000080007c70 <holding>:
    80007c70:	00052783          	lw	a5,0(a0)
    80007c74:	00079663          	bnez	a5,80007c80 <holding+0x10>
    80007c78:	00000513          	li	a0,0
    80007c7c:	00008067          	ret
    80007c80:	fe010113          	addi	sp,sp,-32
    80007c84:	00813823          	sd	s0,16(sp)
    80007c88:	00913423          	sd	s1,8(sp)
    80007c8c:	00113c23          	sd	ra,24(sp)
    80007c90:	02010413          	addi	s0,sp,32
    80007c94:	01053483          	ld	s1,16(a0)
    80007c98:	ffffe097          	auipc	ra,0xffffe
    80007c9c:	758080e7          	jalr	1880(ra) # 800063f0 <mycpu>
    80007ca0:	01813083          	ld	ra,24(sp)
    80007ca4:	01013403          	ld	s0,16(sp)
    80007ca8:	40a48533          	sub	a0,s1,a0
    80007cac:	00153513          	seqz	a0,a0
    80007cb0:	00813483          	ld	s1,8(sp)
    80007cb4:	02010113          	addi	sp,sp,32
    80007cb8:	00008067          	ret

0000000080007cbc <push_off>:
    80007cbc:	fe010113          	addi	sp,sp,-32
    80007cc0:	00813823          	sd	s0,16(sp)
    80007cc4:	00113c23          	sd	ra,24(sp)
    80007cc8:	00913423          	sd	s1,8(sp)
    80007ccc:	02010413          	addi	s0,sp,32
    80007cd0:	100024f3          	csrr	s1,sstatus
    80007cd4:	100027f3          	csrr	a5,sstatus
    80007cd8:	ffd7f793          	andi	a5,a5,-3
    80007cdc:	10079073          	csrw	sstatus,a5
    80007ce0:	ffffe097          	auipc	ra,0xffffe
    80007ce4:	710080e7          	jalr	1808(ra) # 800063f0 <mycpu>
    80007ce8:	07852783          	lw	a5,120(a0)
    80007cec:	02078663          	beqz	a5,80007d18 <push_off+0x5c>
    80007cf0:	ffffe097          	auipc	ra,0xffffe
    80007cf4:	700080e7          	jalr	1792(ra) # 800063f0 <mycpu>
    80007cf8:	07852783          	lw	a5,120(a0)
    80007cfc:	01813083          	ld	ra,24(sp)
    80007d00:	01013403          	ld	s0,16(sp)
    80007d04:	0017879b          	addiw	a5,a5,1
    80007d08:	06f52c23          	sw	a5,120(a0)
    80007d0c:	00813483          	ld	s1,8(sp)
    80007d10:	02010113          	addi	sp,sp,32
    80007d14:	00008067          	ret
    80007d18:	0014d493          	srli	s1,s1,0x1
    80007d1c:	ffffe097          	auipc	ra,0xffffe
    80007d20:	6d4080e7          	jalr	1748(ra) # 800063f0 <mycpu>
    80007d24:	0014f493          	andi	s1,s1,1
    80007d28:	06952e23          	sw	s1,124(a0)
    80007d2c:	fc5ff06f          	j	80007cf0 <push_off+0x34>

0000000080007d30 <pop_off>:
    80007d30:	ff010113          	addi	sp,sp,-16
    80007d34:	00813023          	sd	s0,0(sp)
    80007d38:	00113423          	sd	ra,8(sp)
    80007d3c:	01010413          	addi	s0,sp,16
    80007d40:	ffffe097          	auipc	ra,0xffffe
    80007d44:	6b0080e7          	jalr	1712(ra) # 800063f0 <mycpu>
    80007d48:	100027f3          	csrr	a5,sstatus
    80007d4c:	0027f793          	andi	a5,a5,2
    80007d50:	04079663          	bnez	a5,80007d9c <pop_off+0x6c>
    80007d54:	07852783          	lw	a5,120(a0)
    80007d58:	02f05a63          	blez	a5,80007d8c <pop_off+0x5c>
    80007d5c:	fff7871b          	addiw	a4,a5,-1
    80007d60:	06e52c23          	sw	a4,120(a0)
    80007d64:	00071c63          	bnez	a4,80007d7c <pop_off+0x4c>
    80007d68:	07c52783          	lw	a5,124(a0)
    80007d6c:	00078863          	beqz	a5,80007d7c <pop_off+0x4c>
    80007d70:	100027f3          	csrr	a5,sstatus
    80007d74:	0027e793          	ori	a5,a5,2
    80007d78:	10079073          	csrw	sstatus,a5
    80007d7c:	00813083          	ld	ra,8(sp)
    80007d80:	00013403          	ld	s0,0(sp)
    80007d84:	01010113          	addi	sp,sp,16
    80007d88:	00008067          	ret
    80007d8c:	00002517          	auipc	a0,0x2
    80007d90:	a6450513          	addi	a0,a0,-1436 # 800097f0 <digits+0x48>
    80007d94:	fffff097          	auipc	ra,0xfffff
    80007d98:	018080e7          	jalr	24(ra) # 80006dac <panic>
    80007d9c:	00002517          	auipc	a0,0x2
    80007da0:	a3c50513          	addi	a0,a0,-1476 # 800097d8 <digits+0x30>
    80007da4:	fffff097          	auipc	ra,0xfffff
    80007da8:	008080e7          	jalr	8(ra) # 80006dac <panic>

0000000080007dac <push_on>:
    80007dac:	fe010113          	addi	sp,sp,-32
    80007db0:	00813823          	sd	s0,16(sp)
    80007db4:	00113c23          	sd	ra,24(sp)
    80007db8:	00913423          	sd	s1,8(sp)
    80007dbc:	02010413          	addi	s0,sp,32
    80007dc0:	100024f3          	csrr	s1,sstatus
    80007dc4:	100027f3          	csrr	a5,sstatus
    80007dc8:	0027e793          	ori	a5,a5,2
    80007dcc:	10079073          	csrw	sstatus,a5
    80007dd0:	ffffe097          	auipc	ra,0xffffe
    80007dd4:	620080e7          	jalr	1568(ra) # 800063f0 <mycpu>
    80007dd8:	07852783          	lw	a5,120(a0)
    80007ddc:	02078663          	beqz	a5,80007e08 <push_on+0x5c>
    80007de0:	ffffe097          	auipc	ra,0xffffe
    80007de4:	610080e7          	jalr	1552(ra) # 800063f0 <mycpu>
    80007de8:	07852783          	lw	a5,120(a0)
    80007dec:	01813083          	ld	ra,24(sp)
    80007df0:	01013403          	ld	s0,16(sp)
    80007df4:	0017879b          	addiw	a5,a5,1
    80007df8:	06f52c23          	sw	a5,120(a0)
    80007dfc:	00813483          	ld	s1,8(sp)
    80007e00:	02010113          	addi	sp,sp,32
    80007e04:	00008067          	ret
    80007e08:	0014d493          	srli	s1,s1,0x1
    80007e0c:	ffffe097          	auipc	ra,0xffffe
    80007e10:	5e4080e7          	jalr	1508(ra) # 800063f0 <mycpu>
    80007e14:	0014f493          	andi	s1,s1,1
    80007e18:	06952e23          	sw	s1,124(a0)
    80007e1c:	fc5ff06f          	j	80007de0 <push_on+0x34>

0000000080007e20 <pop_on>:
    80007e20:	ff010113          	addi	sp,sp,-16
    80007e24:	00813023          	sd	s0,0(sp)
    80007e28:	00113423          	sd	ra,8(sp)
    80007e2c:	01010413          	addi	s0,sp,16
    80007e30:	ffffe097          	auipc	ra,0xffffe
    80007e34:	5c0080e7          	jalr	1472(ra) # 800063f0 <mycpu>
    80007e38:	100027f3          	csrr	a5,sstatus
    80007e3c:	0027f793          	andi	a5,a5,2
    80007e40:	04078463          	beqz	a5,80007e88 <pop_on+0x68>
    80007e44:	07852783          	lw	a5,120(a0)
    80007e48:	02f05863          	blez	a5,80007e78 <pop_on+0x58>
    80007e4c:	fff7879b          	addiw	a5,a5,-1
    80007e50:	06f52c23          	sw	a5,120(a0)
    80007e54:	07853783          	ld	a5,120(a0)
    80007e58:	00079863          	bnez	a5,80007e68 <pop_on+0x48>
    80007e5c:	100027f3          	csrr	a5,sstatus
    80007e60:	ffd7f793          	andi	a5,a5,-3
    80007e64:	10079073          	csrw	sstatus,a5
    80007e68:	00813083          	ld	ra,8(sp)
    80007e6c:	00013403          	ld	s0,0(sp)
    80007e70:	01010113          	addi	sp,sp,16
    80007e74:	00008067          	ret
    80007e78:	00002517          	auipc	a0,0x2
    80007e7c:	9a050513          	addi	a0,a0,-1632 # 80009818 <digits+0x70>
    80007e80:	fffff097          	auipc	ra,0xfffff
    80007e84:	f2c080e7          	jalr	-212(ra) # 80006dac <panic>
    80007e88:	00002517          	auipc	a0,0x2
    80007e8c:	97050513          	addi	a0,a0,-1680 # 800097f8 <digits+0x50>
    80007e90:	fffff097          	auipc	ra,0xfffff
    80007e94:	f1c080e7          	jalr	-228(ra) # 80006dac <panic>

0000000080007e98 <__memset>:
    80007e98:	ff010113          	addi	sp,sp,-16
    80007e9c:	00813423          	sd	s0,8(sp)
    80007ea0:	01010413          	addi	s0,sp,16
    80007ea4:	1a060e63          	beqz	a2,80008060 <__memset+0x1c8>
    80007ea8:	40a007b3          	neg	a5,a0
    80007eac:	0077f793          	andi	a5,a5,7
    80007eb0:	00778693          	addi	a3,a5,7
    80007eb4:	00b00813          	li	a6,11
    80007eb8:	0ff5f593          	andi	a1,a1,255
    80007ebc:	fff6071b          	addiw	a4,a2,-1
    80007ec0:	1b06e663          	bltu	a3,a6,8000806c <__memset+0x1d4>
    80007ec4:	1cd76463          	bltu	a4,a3,8000808c <__memset+0x1f4>
    80007ec8:	1a078e63          	beqz	a5,80008084 <__memset+0x1ec>
    80007ecc:	00b50023          	sb	a1,0(a0)
    80007ed0:	00100713          	li	a4,1
    80007ed4:	1ae78463          	beq	a5,a4,8000807c <__memset+0x1e4>
    80007ed8:	00b500a3          	sb	a1,1(a0)
    80007edc:	00200713          	li	a4,2
    80007ee0:	1ae78a63          	beq	a5,a4,80008094 <__memset+0x1fc>
    80007ee4:	00b50123          	sb	a1,2(a0)
    80007ee8:	00300713          	li	a4,3
    80007eec:	18e78463          	beq	a5,a4,80008074 <__memset+0x1dc>
    80007ef0:	00b501a3          	sb	a1,3(a0)
    80007ef4:	00400713          	li	a4,4
    80007ef8:	1ae78263          	beq	a5,a4,8000809c <__memset+0x204>
    80007efc:	00b50223          	sb	a1,4(a0)
    80007f00:	00500713          	li	a4,5
    80007f04:	1ae78063          	beq	a5,a4,800080a4 <__memset+0x20c>
    80007f08:	00b502a3          	sb	a1,5(a0)
    80007f0c:	00700713          	li	a4,7
    80007f10:	18e79e63          	bne	a5,a4,800080ac <__memset+0x214>
    80007f14:	00b50323          	sb	a1,6(a0)
    80007f18:	00700e93          	li	t4,7
    80007f1c:	00859713          	slli	a4,a1,0x8
    80007f20:	00e5e733          	or	a4,a1,a4
    80007f24:	01059e13          	slli	t3,a1,0x10
    80007f28:	01c76e33          	or	t3,a4,t3
    80007f2c:	01859313          	slli	t1,a1,0x18
    80007f30:	006e6333          	or	t1,t3,t1
    80007f34:	02059893          	slli	a7,a1,0x20
    80007f38:	40f60e3b          	subw	t3,a2,a5
    80007f3c:	011368b3          	or	a7,t1,a7
    80007f40:	02859813          	slli	a6,a1,0x28
    80007f44:	0108e833          	or	a6,a7,a6
    80007f48:	03059693          	slli	a3,a1,0x30
    80007f4c:	003e589b          	srliw	a7,t3,0x3
    80007f50:	00d866b3          	or	a3,a6,a3
    80007f54:	03859713          	slli	a4,a1,0x38
    80007f58:	00389813          	slli	a6,a7,0x3
    80007f5c:	00f507b3          	add	a5,a0,a5
    80007f60:	00e6e733          	or	a4,a3,a4
    80007f64:	000e089b          	sext.w	a7,t3
    80007f68:	00f806b3          	add	a3,a6,a5
    80007f6c:	00e7b023          	sd	a4,0(a5)
    80007f70:	00878793          	addi	a5,a5,8
    80007f74:	fed79ce3          	bne	a5,a3,80007f6c <__memset+0xd4>
    80007f78:	ff8e7793          	andi	a5,t3,-8
    80007f7c:	0007871b          	sext.w	a4,a5
    80007f80:	01d787bb          	addw	a5,a5,t4
    80007f84:	0ce88e63          	beq	a7,a4,80008060 <__memset+0x1c8>
    80007f88:	00f50733          	add	a4,a0,a5
    80007f8c:	00b70023          	sb	a1,0(a4)
    80007f90:	0017871b          	addiw	a4,a5,1
    80007f94:	0cc77663          	bgeu	a4,a2,80008060 <__memset+0x1c8>
    80007f98:	00e50733          	add	a4,a0,a4
    80007f9c:	00b70023          	sb	a1,0(a4)
    80007fa0:	0027871b          	addiw	a4,a5,2
    80007fa4:	0ac77e63          	bgeu	a4,a2,80008060 <__memset+0x1c8>
    80007fa8:	00e50733          	add	a4,a0,a4
    80007fac:	00b70023          	sb	a1,0(a4)
    80007fb0:	0037871b          	addiw	a4,a5,3
    80007fb4:	0ac77663          	bgeu	a4,a2,80008060 <__memset+0x1c8>
    80007fb8:	00e50733          	add	a4,a0,a4
    80007fbc:	00b70023          	sb	a1,0(a4)
    80007fc0:	0047871b          	addiw	a4,a5,4
    80007fc4:	08c77e63          	bgeu	a4,a2,80008060 <__memset+0x1c8>
    80007fc8:	00e50733          	add	a4,a0,a4
    80007fcc:	00b70023          	sb	a1,0(a4)
    80007fd0:	0057871b          	addiw	a4,a5,5
    80007fd4:	08c77663          	bgeu	a4,a2,80008060 <__memset+0x1c8>
    80007fd8:	00e50733          	add	a4,a0,a4
    80007fdc:	00b70023          	sb	a1,0(a4)
    80007fe0:	0067871b          	addiw	a4,a5,6
    80007fe4:	06c77e63          	bgeu	a4,a2,80008060 <__memset+0x1c8>
    80007fe8:	00e50733          	add	a4,a0,a4
    80007fec:	00b70023          	sb	a1,0(a4)
    80007ff0:	0077871b          	addiw	a4,a5,7
    80007ff4:	06c77663          	bgeu	a4,a2,80008060 <__memset+0x1c8>
    80007ff8:	00e50733          	add	a4,a0,a4
    80007ffc:	00b70023          	sb	a1,0(a4)
    80008000:	0087871b          	addiw	a4,a5,8
    80008004:	04c77e63          	bgeu	a4,a2,80008060 <__memset+0x1c8>
    80008008:	00e50733          	add	a4,a0,a4
    8000800c:	00b70023          	sb	a1,0(a4)
    80008010:	0097871b          	addiw	a4,a5,9
    80008014:	04c77663          	bgeu	a4,a2,80008060 <__memset+0x1c8>
    80008018:	00e50733          	add	a4,a0,a4
    8000801c:	00b70023          	sb	a1,0(a4)
    80008020:	00a7871b          	addiw	a4,a5,10
    80008024:	02c77e63          	bgeu	a4,a2,80008060 <__memset+0x1c8>
    80008028:	00e50733          	add	a4,a0,a4
    8000802c:	00b70023          	sb	a1,0(a4)
    80008030:	00b7871b          	addiw	a4,a5,11
    80008034:	02c77663          	bgeu	a4,a2,80008060 <__memset+0x1c8>
    80008038:	00e50733          	add	a4,a0,a4
    8000803c:	00b70023          	sb	a1,0(a4)
    80008040:	00c7871b          	addiw	a4,a5,12
    80008044:	00c77e63          	bgeu	a4,a2,80008060 <__memset+0x1c8>
    80008048:	00e50733          	add	a4,a0,a4
    8000804c:	00b70023          	sb	a1,0(a4)
    80008050:	00d7879b          	addiw	a5,a5,13
    80008054:	00c7f663          	bgeu	a5,a2,80008060 <__memset+0x1c8>
    80008058:	00f507b3          	add	a5,a0,a5
    8000805c:	00b78023          	sb	a1,0(a5)
    80008060:	00813403          	ld	s0,8(sp)
    80008064:	01010113          	addi	sp,sp,16
    80008068:	00008067          	ret
    8000806c:	00b00693          	li	a3,11
    80008070:	e55ff06f          	j	80007ec4 <__memset+0x2c>
    80008074:	00300e93          	li	t4,3
    80008078:	ea5ff06f          	j	80007f1c <__memset+0x84>
    8000807c:	00100e93          	li	t4,1
    80008080:	e9dff06f          	j	80007f1c <__memset+0x84>
    80008084:	00000e93          	li	t4,0
    80008088:	e95ff06f          	j	80007f1c <__memset+0x84>
    8000808c:	00000793          	li	a5,0
    80008090:	ef9ff06f          	j	80007f88 <__memset+0xf0>
    80008094:	00200e93          	li	t4,2
    80008098:	e85ff06f          	j	80007f1c <__memset+0x84>
    8000809c:	00400e93          	li	t4,4
    800080a0:	e7dff06f          	j	80007f1c <__memset+0x84>
    800080a4:	00500e93          	li	t4,5
    800080a8:	e75ff06f          	j	80007f1c <__memset+0x84>
    800080ac:	00600e93          	li	t4,6
    800080b0:	e6dff06f          	j	80007f1c <__memset+0x84>

00000000800080b4 <__memmove>:
    800080b4:	ff010113          	addi	sp,sp,-16
    800080b8:	00813423          	sd	s0,8(sp)
    800080bc:	01010413          	addi	s0,sp,16
    800080c0:	0e060863          	beqz	a2,800081b0 <__memmove+0xfc>
    800080c4:	fff6069b          	addiw	a3,a2,-1
    800080c8:	0006881b          	sext.w	a6,a3
    800080cc:	0ea5e863          	bltu	a1,a0,800081bc <__memmove+0x108>
    800080d0:	00758713          	addi	a4,a1,7
    800080d4:	00a5e7b3          	or	a5,a1,a0
    800080d8:	40a70733          	sub	a4,a4,a0
    800080dc:	0077f793          	andi	a5,a5,7
    800080e0:	00f73713          	sltiu	a4,a4,15
    800080e4:	00174713          	xori	a4,a4,1
    800080e8:	0017b793          	seqz	a5,a5
    800080ec:	00e7f7b3          	and	a5,a5,a4
    800080f0:	10078863          	beqz	a5,80008200 <__memmove+0x14c>
    800080f4:	00900793          	li	a5,9
    800080f8:	1107f463          	bgeu	a5,a6,80008200 <__memmove+0x14c>
    800080fc:	0036581b          	srliw	a6,a2,0x3
    80008100:	fff8081b          	addiw	a6,a6,-1
    80008104:	02081813          	slli	a6,a6,0x20
    80008108:	01d85893          	srli	a7,a6,0x1d
    8000810c:	00858813          	addi	a6,a1,8
    80008110:	00058793          	mv	a5,a1
    80008114:	00050713          	mv	a4,a0
    80008118:	01088833          	add	a6,a7,a6
    8000811c:	0007b883          	ld	a7,0(a5)
    80008120:	00878793          	addi	a5,a5,8
    80008124:	00870713          	addi	a4,a4,8
    80008128:	ff173c23          	sd	a7,-8(a4)
    8000812c:	ff0798e3          	bne	a5,a6,8000811c <__memmove+0x68>
    80008130:	ff867713          	andi	a4,a2,-8
    80008134:	02071793          	slli	a5,a4,0x20
    80008138:	0207d793          	srli	a5,a5,0x20
    8000813c:	00f585b3          	add	a1,a1,a5
    80008140:	40e686bb          	subw	a3,a3,a4
    80008144:	00f507b3          	add	a5,a0,a5
    80008148:	06e60463          	beq	a2,a4,800081b0 <__memmove+0xfc>
    8000814c:	0005c703          	lbu	a4,0(a1)
    80008150:	00e78023          	sb	a4,0(a5)
    80008154:	04068e63          	beqz	a3,800081b0 <__memmove+0xfc>
    80008158:	0015c603          	lbu	a2,1(a1)
    8000815c:	00100713          	li	a4,1
    80008160:	00c780a3          	sb	a2,1(a5)
    80008164:	04e68663          	beq	a3,a4,800081b0 <__memmove+0xfc>
    80008168:	0025c603          	lbu	a2,2(a1)
    8000816c:	00200713          	li	a4,2
    80008170:	00c78123          	sb	a2,2(a5)
    80008174:	02e68e63          	beq	a3,a4,800081b0 <__memmove+0xfc>
    80008178:	0035c603          	lbu	a2,3(a1)
    8000817c:	00300713          	li	a4,3
    80008180:	00c781a3          	sb	a2,3(a5)
    80008184:	02e68663          	beq	a3,a4,800081b0 <__memmove+0xfc>
    80008188:	0045c603          	lbu	a2,4(a1)
    8000818c:	00400713          	li	a4,4
    80008190:	00c78223          	sb	a2,4(a5)
    80008194:	00e68e63          	beq	a3,a4,800081b0 <__memmove+0xfc>
    80008198:	0055c603          	lbu	a2,5(a1)
    8000819c:	00500713          	li	a4,5
    800081a0:	00c782a3          	sb	a2,5(a5)
    800081a4:	00e68663          	beq	a3,a4,800081b0 <__memmove+0xfc>
    800081a8:	0065c703          	lbu	a4,6(a1)
    800081ac:	00e78323          	sb	a4,6(a5)
    800081b0:	00813403          	ld	s0,8(sp)
    800081b4:	01010113          	addi	sp,sp,16
    800081b8:	00008067          	ret
    800081bc:	02061713          	slli	a4,a2,0x20
    800081c0:	02075713          	srli	a4,a4,0x20
    800081c4:	00e587b3          	add	a5,a1,a4
    800081c8:	f0f574e3          	bgeu	a0,a5,800080d0 <__memmove+0x1c>
    800081cc:	02069613          	slli	a2,a3,0x20
    800081d0:	02065613          	srli	a2,a2,0x20
    800081d4:	fff64613          	not	a2,a2
    800081d8:	00e50733          	add	a4,a0,a4
    800081dc:	00c78633          	add	a2,a5,a2
    800081e0:	fff7c683          	lbu	a3,-1(a5)
    800081e4:	fff78793          	addi	a5,a5,-1
    800081e8:	fff70713          	addi	a4,a4,-1
    800081ec:	00d70023          	sb	a3,0(a4)
    800081f0:	fec798e3          	bne	a5,a2,800081e0 <__memmove+0x12c>
    800081f4:	00813403          	ld	s0,8(sp)
    800081f8:	01010113          	addi	sp,sp,16
    800081fc:	00008067          	ret
    80008200:	02069713          	slli	a4,a3,0x20
    80008204:	02075713          	srli	a4,a4,0x20
    80008208:	00170713          	addi	a4,a4,1
    8000820c:	00e50733          	add	a4,a0,a4
    80008210:	00050793          	mv	a5,a0
    80008214:	0005c683          	lbu	a3,0(a1)
    80008218:	00178793          	addi	a5,a5,1
    8000821c:	00158593          	addi	a1,a1,1
    80008220:	fed78fa3          	sb	a3,-1(a5)
    80008224:	fee798e3          	bne	a5,a4,80008214 <__memmove+0x160>
    80008228:	f89ff06f          	j	800081b0 <__memmove+0xfc>
	...
