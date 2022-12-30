
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	82013103          	ld	sp,-2016(sp) # 8000a820 <_GLOBAL_OFFSET_TABLE_+0x48>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	6f9050ef          	jal	ra,80005f14 <start>

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
    80001088:	188030ef          	jal	ra,80004210 <_ZN5Riscv20handleSupervisorTrapEv>

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
        src++; dst++;
    80001270:	00150513          	addi	a0,a0,1
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
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    800012b0:	00000793          	li	a5,0
    800012b4:	0140006f          	j	800012c8 <_Z19slab_allocator_initP14buddyAllocator+0x3c>
        slabAllocatorLocal->cachesBuffers[i] = nullptr;
    800012b8:	00379713          	slli	a4,a5,0x3
    800012bc:	00e48733          	add	a4,s1,a4
    800012c0:	0e073423          	sd	zero,232(a4)
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    800012c4:	00178793          	addi	a5,a5,1
    800012c8:	00c00713          	li	a4,12
    800012cc:	fef776e3          	bgeu	a4,a5,800012b8 <_Z19slab_allocator_initP14buddyAllocator+0x2c>

    strcpy("Cache of caches", slabAllocatorLocal->cacheOfCaches.cacheName);
    800012d0:	15048593          	addi	a1,s1,336
    800012d4:	00007517          	auipc	a0,0x7
    800012d8:	d4c50513          	addi	a0,a0,-692 # 80008020 <CONSOLE_STATUS+0x10>
    800012dc:	00000097          	auipc	ra,0x0
    800012e0:	f7c080e7          	jalr	-132(ra) # 80001258 <_Z6strcpyPKcPc>
    slabAllocatorLocal->cacheOfCaches.ctor = nullptr;
    800012e4:	1a04bc23          	sd	zero,440(s1)
    slabAllocatorLocal->cacheOfCaches.dtor = nullptr;
    800012e8:	1c04b023          	sd	zero,448(s1)
    slabAllocatorLocal->cacheOfCaches.slabs_empty = nullptr;
    800012ec:	1804b823          	sd	zero,400(s1)
    slabAllocatorLocal->cacheOfCaches.slabs_full = nullptr;
    800012f0:	1804bc23          	sd	zero,408(s1)
    slabAllocatorLocal->cacheOfCaches.slabs_partial = nullptr;
    800012f4:	1a04b023          	sd	zero,416(s1)
    slabAllocatorLocal->cacheOfCaches.slab_size = CACHE_OF_CACHES_SLAB_SIZE;
    800012f8:	00200793          	li	a5,2
    800012fc:	1af4b423          	sd	a5,424(s1)
    slabAllocatorLocal->cacheOfCaches.obj_size = sizeof(kmem_cache_t);
    80001300:	07800793          	li	a5,120
    80001304:	1af4b823          	sd	a5,432(s1)
    return slabAllocatorLocal;
}
    80001308:	00090513          	mv	a0,s2
    8000130c:	01813083          	ld	ra,24(sp)
    80001310:	01013403          	ld	s0,16(sp)
    80001314:	00813483          	ld	s1,8(sp)
    80001318:	00013903          	ld	s2,0(sp)
    8000131c:	02010113          	addi	sp,sp,32
    80001320:	00008067          	ret

0000000080001324 <_Z14allocateObjectP6slab_s>:

void* allocateObject(slab_t* slab)
{
    80001324:	ff010113          	addi	sp,sp,-16
    80001328:	00813423          	sd	s0,8(sp)
    8000132c:	01010413          	addi	s0,sp,16
    80001330:	00050593          	mv	a1,a0
    int index = -1;
    void* addr = nullptr;
    for(size_t i = 0;i < slab->numOfObjects;i++)
    80001334:	00000793          	li	a5,0
    80001338:	0185b703          	ld	a4,24(a1)
    8000133c:	04e7f463          	bgeu	a5,a4,80001384 <_Z14allocateObjectP6slab_s+0x60>
    {
        size_t mask = 1 << (i%8);
    80001340:	0077f713          	andi	a4,a5,7
    80001344:	00100613          	li	a2,1
    80001348:	00e616bb          	sllw	a3,a2,a4
        if(!((uint8)slab->allocated[i/8] & mask))
    8000134c:	0037d713          	srli	a4,a5,0x3
    80001350:	00e58733          	add	a4,a1,a4
    80001354:	02874703          	lbu	a4,40(a4)
    80001358:	00d77733          	and	a4,a4,a3
    8000135c:	00070663          	beqz	a4,80001368 <_Z14allocateObjectP6slab_s+0x44>
    for(size_t i = 0;i < slab->numOfObjects;i++)
    80001360:	00178793          	addi	a5,a5,1
    80001364:	fd5ff06f          	j	80001338 <_Z14allocateObjectP6slab_s+0x14>
        {
            addr = (void*)((size_t)slab + sizeof(slab_t)+ i*slab->owner->obj_size);
    80001368:	0105b703          	ld	a4,16(a1)
    8000136c:	06073503          	ld	a0,96(a4)
    80001370:	02f50533          	mul	a0,a0,a5
    80001374:	00a58533          	add	a0,a1,a0
    80001378:	04850513          	addi	a0,a0,72
            index = i;
    8000137c:	0007879b          	sext.w	a5,a5
            break;
    80001380:	00c0006f          	j	8000138c <_Z14allocateObjectP6slab_s+0x68>
    void* addr = nullptr;
    80001384:	00000513          	li	a0,0
    int index = -1;
    80001388:	fff00793          	li	a5,-1
        }
    }
    if(addr == nullptr)
    8000138c:	04050063          	beqz	a0,800013cc <_Z14allocateObjectP6slab_s+0xa8>

    //KConsole::trapPrintStringInt("Allocated index ",index);

    //TODO
    //implement functions to set bit and check it
    slab->allocated[index/8]=(uint8)slab->allocated[index/8] | (1 << (index%8));
    80001390:	41f7d69b          	sraiw	a3,a5,0x1f
    80001394:	01d6d69b          	srliw	a3,a3,0x1d
    80001398:	00f687bb          	addw	a5,a3,a5
    8000139c:	4037d71b          	sraiw	a4,a5,0x3
    800013a0:	00e58733          	add	a4,a1,a4
    800013a4:	02870603          	lb	a2,40(a4)
    800013a8:	0077f793          	andi	a5,a5,7
    800013ac:	40d787bb          	subw	a5,a5,a3
    800013b0:	00100693          	li	a3,1
    800013b4:	00f697bb          	sllw	a5,a3,a5
    800013b8:	00f667b3          	or	a5,a2,a5
    800013bc:	02f70423          	sb	a5,40(a4)
    slab->numOfAllocatedObjects++;
    800013c0:	0205b783          	ld	a5,32(a1)
    800013c4:	00178793          	addi	a5,a5,1
    800013c8:	02f5b023          	sd	a5,32(a1)

    return addr;
}
    800013cc:	00813403          	ld	s0,8(sp)
    800013d0:	01010113          	addi	sp,sp,16
    800013d4:	00008067          	ret

00000000800013d8 <_Z4fullP6slab_s>:

bool full(slab_t* slab)
{
    800013d8:	ff010113          	addi	sp,sp,-16
    800013dc:	00813423          	sd	s0,8(sp)
    800013e0:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == slab->numOfObjects;
    800013e4:	02053783          	ld	a5,32(a0)
    800013e8:	01853503          	ld	a0,24(a0)
    800013ec:	40f50533          	sub	a0,a0,a5
}
    800013f0:	00153513          	seqz	a0,a0
    800013f4:	00813403          	ld	s0,8(sp)
    800013f8:	01010113          	addi	sp,sp,16
    800013fc:	00008067          	ret

0000000080001400 <_Z5emptyP6slab_s>:

bool empty(slab_t* slab)
{
    80001400:	ff010113          	addi	sp,sp,-16
    80001404:	00813423          	sd	s0,8(sp)
    80001408:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == 0;
    8000140c:	02053503          	ld	a0,32(a0)
}
    80001410:	00153513          	seqz	a0,a0
    80001414:	00813403          	ld	s0,8(sp)
    80001418:	01010113          	addi	sp,sp,16
    8000141c:	00008067          	ret

0000000080001420 <_Z18insertIntoSlabListP6slab_sPS0_>:

void insertIntoSlabList(slab_t* slab, slab_t** slab_head)
{
    80001420:	ff010113          	addi	sp,sp,-16
    80001424:	00813423          	sd	s0,8(sp)
    80001428:	01010413          	addi	s0,sp,16
    slab->prev = nullptr;
    8000142c:	00053023          	sd	zero,0(a0)
    slab->next = *slab_head;
    80001430:	0005b783          	ld	a5,0(a1)
    80001434:	00f53423          	sd	a5,8(a0)
    if(*slab_head != nullptr)
    80001438:	00078463          	beqz	a5,80001440 <_Z18insertIntoSlabListP6slab_sPS0_+0x20>
        (*slab_head)->prev = slab;
    8000143c:	00a7b023          	sd	a0,0(a5)
    *slab_head = slab;
    80001440:	00a5b023          	sd	a0,0(a1)
}
    80001444:	00813403          	ld	s0,8(sp)
    80001448:	01010113          	addi	sp,sp,16
    8000144c:	00008067          	ret

0000000080001450 <_Z18removeFromSlabListP6slab_sPS0_>:

void removeFromSlabList(slab_t* slab, slab_t** slab_head)
{
    80001450:	ff010113          	addi	sp,sp,-16
    80001454:	00813423          	sd	s0,8(sp)
    80001458:	01010413          	addi	s0,sp,16
    if(slab->prev == nullptr) //same as slab == *slab_head
    8000145c:	00053783          	ld	a5,0(a0)
    80001460:	02078663          	beqz	a5,8000148c <_Z18removeFromSlabListP6slab_sPS0_+0x3c>
        (*slab_head) = slab->next;
        slab->next = slab->prev = nullptr;
    }
    else
    {
        slab->prev->next = slab->next;
    80001464:	00853703          	ld	a4,8(a0)
    80001468:	00e7b423          	sd	a4,8(a5)
        if(slab->next) slab->next->prev = slab->prev;
    8000146c:	00070663          	beqz	a4,80001478 <_Z18removeFromSlabListP6slab_sPS0_+0x28>
    80001470:	00053783          	ld	a5,0(a0)
    80001474:	00f73023          	sd	a5,0(a4)
        slab->next = slab->prev = nullptr;
    80001478:	00053023          	sd	zero,0(a0)
    8000147c:	00053423          	sd	zero,8(a0)
    }
}
    80001480:	00813403          	ld	s0,8(sp)
    80001484:	01010113          	addi	sp,sp,16
    80001488:	00008067          	ret
        if(slab->next) slab->next->prev = nullptr;
    8000148c:	00853783          	ld	a5,8(a0)
    80001490:	00078463          	beqz	a5,80001498 <_Z18removeFromSlabListP6slab_sPS0_+0x48>
    80001494:	0007b023          	sd	zero,0(a5)
        (*slab_head) = slab->next;
    80001498:	00853783          	ld	a5,8(a0)
    8000149c:	00f5b023          	sd	a5,0(a1)
        slab->next = slab->prev = nullptr;
    800014a0:	00053023          	sd	zero,0(a0)
    800014a4:	00053423          	sd	zero,8(a0)
    800014a8:	fd9ff06f          	j	80001480 <_Z18removeFromSlabListP6slab_sPS0_+0x30>

00000000800014ac <_Z16putPartialToFullP12kmem_cache_s>:

void putPartialToFull(kmem_cache_t* cachep)
{
    800014ac:	fe010113          	addi	sp,sp,-32
    800014b0:	00113c23          	sd	ra,24(sp)
    800014b4:	00813823          	sd	s0,16(sp)
    800014b8:	00913423          	sd	s1,8(sp)
    800014bc:	01213023          	sd	s2,0(sp)
    800014c0:	02010413          	addi	s0,sp,32
    800014c4:	00050493          	mv	s1,a0
    slab_t* slab = cachep->slabs_partial;
    800014c8:	05053903          	ld	s2,80(a0)
    removeFromSlabList(slab, &cachep->slabs_partial);
    800014cc:	05050593          	addi	a1,a0,80
    800014d0:	00090513          	mv	a0,s2
    800014d4:	00000097          	auipc	ra,0x0
    800014d8:	f7c080e7          	jalr	-132(ra) # 80001450 <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_full);
    800014dc:	04848593          	addi	a1,s1,72
    800014e0:	00090513          	mv	a0,s2
    800014e4:	00000097          	auipc	ra,0x0
    800014e8:	f3c080e7          	jalr	-196(ra) # 80001420 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    800014ec:	01813083          	ld	ra,24(sp)
    800014f0:	01013403          	ld	s0,16(sp)
    800014f4:	00813483          	ld	s1,8(sp)
    800014f8:	00013903          	ld	s2,0(sp)
    800014fc:	02010113          	addi	sp,sp,32
    80001500:	00008067          	ret

0000000080001504 <_Z17putEmptyToPartialP12kmem_cache_s>:

void putEmptyToPartial(kmem_cache_t* cachep)
{
    80001504:	fe010113          	addi	sp,sp,-32
    80001508:	00113c23          	sd	ra,24(sp)
    8000150c:	00813823          	sd	s0,16(sp)
    80001510:	00913423          	sd	s1,8(sp)
    80001514:	01213023          	sd	s2,0(sp)
    80001518:	02010413          	addi	s0,sp,32
    8000151c:	00050493          	mv	s1,a0
    slab_t* slab = cachep->slabs_empty;
    80001520:	04053903          	ld	s2,64(a0)
    removeFromSlabList(slab, &cachep->slabs_empty);
    80001524:	04050593          	addi	a1,a0,64
    80001528:	00090513          	mv	a0,s2
    8000152c:	00000097          	auipc	ra,0x0
    80001530:	f24080e7          	jalr	-220(ra) # 80001450 <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_partial);
    80001534:	05048593          	addi	a1,s1,80
    80001538:	00090513          	mv	a0,s2
    8000153c:	00000097          	auipc	ra,0x0
    80001540:	ee4080e7          	jalr	-284(ra) # 80001420 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    80001544:	01813083          	ld	ra,24(sp)
    80001548:	01013403          	ld	s0,16(sp)
    8000154c:	00813483          	ld	s1,8(sp)
    80001550:	00013903          	ld	s2,0(sp)
    80001554:	02010113          	addi	sp,sp,32
    80001558:	00008067          	ret

000000008000155c <_Z14removeFullSlabP12kmem_cache_sP6slab_s>:

void removeFullSlab(kmem_cache_t* cachep, slab_t* slab)
{
    8000155c:	fe010113          	addi	sp,sp,-32
    80001560:	00113c23          	sd	ra,24(sp)
    80001564:	00813823          	sd	s0,16(sp)
    80001568:	00913423          	sd	s1,8(sp)
    8000156c:	01213023          	sd	s2,0(sp)
    80001570:	02010413          	addi	s0,sp,32
    80001574:	00050913          	mv	s2,a0
    80001578:	00058493          	mv	s1,a1
    removeFromSlabList(slab, &cachep->slabs_full);
    8000157c:	04850593          	addi	a1,a0,72
    80001580:	00048513          	mv	a0,s1
    80001584:	00000097          	auipc	ra,0x0
    80001588:	ecc080e7          	jalr	-308(ra) # 80001450 <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_partial);
    8000158c:	05090593          	addi	a1,s2,80
    80001590:	00048513          	mv	a0,s1
    80001594:	00000097          	auipc	ra,0x0
    80001598:	e8c080e7          	jalr	-372(ra) # 80001420 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    8000159c:	01813083          	ld	ra,24(sp)
    800015a0:	01013403          	ld	s0,16(sp)
    800015a4:	00813483          	ld	s1,8(sp)
    800015a8:	00013903          	ld	s2,0(sp)
    800015ac:	02010113          	addi	sp,sp,32
    800015b0:	00008067          	ret

00000000800015b4 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>:

void removePartialSlab(kmem_cache_t * cachep, slab_t* slab)
{
    800015b4:	fe010113          	addi	sp,sp,-32
    800015b8:	00113c23          	sd	ra,24(sp)
    800015bc:	00813823          	sd	s0,16(sp)
    800015c0:	00913423          	sd	s1,8(sp)
    800015c4:	01213023          	sd	s2,0(sp)
    800015c8:	02010413          	addi	s0,sp,32
    800015cc:	00050913          	mv	s2,a0
    800015d0:	00058493          	mv	s1,a1
    removeFromSlabList(slab, &cachep->slabs_partial);
    800015d4:	05050593          	addi	a1,a0,80
    800015d8:	00048513          	mv	a0,s1
    800015dc:	00000097          	auipc	ra,0x0
    800015e0:	e74080e7          	jalr	-396(ra) # 80001450 <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_empty);
    800015e4:	04090593          	addi	a1,s2,64
    800015e8:	00048513          	mv	a0,s1
    800015ec:	00000097          	auipc	ra,0x0
    800015f0:	e34080e7          	jalr	-460(ra) # 80001420 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    800015f4:	01813083          	ld	ra,24(sp)
    800015f8:	01013403          	ld	s0,16(sp)
    800015fc:	00813483          	ld	s1,8(sp)
    80001600:	00013903          	ld	s2,0(sp)
    80001604:	02010113          	addi	sp,sp,32
    80001608:	00008067          	ret

000000008000160c <_Z12allocateSlabP12kmem_cache_s>:

void allocateSlab(kmem_cache_t* cachep)
{
    8000160c:	fe010113          	addi	sp,sp,-32
    80001610:	00113c23          	sd	ra,24(sp)
    80001614:	00813823          	sd	s0,16(sp)
    80001618:	00913423          	sd	s1,8(sp)
    8000161c:	02010413          	addi	s0,sp,32
    80001620:	00050493          	mv	s1,a0
    slab_t* newSlab = (slab_t*)buddy_alloc(slabAllocator->buddy,cachep->slab_size);
    80001624:	05853583          	ld	a1,88(a0)
    80001628:	00009797          	auipc	a5,0x9
    8000162c:	2987b783          	ld	a5,664(a5) # 8000a8c0 <_ZL13slabAllocator>
    80001630:	0007b503          	ld	a0,0(a5)
    80001634:	00001097          	auipc	ra,0x1
    80001638:	494080e7          	jalr	1172(ra) # 80002ac8 <_Z11buddy_allocP14buddyAllocatorm>
    newSlab->next = cachep->slabs_empty;
    8000163c:	0404b783          	ld	a5,64(s1)
    80001640:	00f53423          	sd	a5,8(a0)
    if(cachep->slabs_empty != nullptr)
    80001644:	00078463          	beqz	a5,8000164c <_Z12allocateSlabP12kmem_cache_s+0x40>
        cachep->slabs_empty->prev = newSlab;
    80001648:	00a7b023          	sd	a0,0(a5)
    cachep->slabs_empty = newSlab;
    8000164c:	04a4b023          	sd	a0,64(s1)
    newSlab->prev = nullptr;
    80001650:	00053023          	sd	zero,0(a0)
    newSlab->numOfAllocatedObjects = 0;
    80001654:	02053023          	sd	zero,32(a0)
    newSlab->owner = cachep;
    80001658:	00953823          	sd	s1,16(a0)
    size_t sizeInBytes = cachep->slab_size*BLOCK_SIZE;
    8000165c:	0584b683          	ld	a3,88(s1)
    80001660:	00c69693          	slli	a3,a3,0xc
    newSlab->numOfObjects = (sizeInBytes - sizeof(slab_t)) / cachep->obj_size; // TODO can this param be in cache ?
    80001664:	fb868693          	addi	a3,a3,-72
    80001668:	0604b783          	ld	a5,96(s1)
    8000166c:	02f6d6b3          	divu	a3,a3,a5
    80001670:	00d53c23          	sd	a3,24(a0)
    for(size_t i = 0; i < (newSlab->numOfObjects + 7) / 8;i++)
    80001674:	00000713          	li	a4,0
    80001678:	00768793          	addi	a5,a3,7
    8000167c:	0037d793          	srli	a5,a5,0x3
    80001680:	00f77a63          	bgeu	a4,a5,80001694 <_Z12allocateSlabP12kmem_cache_s+0x88>
        newSlab->allocated[i] = 0;
    80001684:	00e507b3          	add	a5,a0,a4
    80001688:	02078423          	sb	zero,40(a5)
    for(size_t i = 0; i < (newSlab->numOfObjects + 7) / 8;i++)
    8000168c:	00170713          	addi	a4,a4,1
    80001690:	fe9ff06f          	j	80001678 <_Z12allocateSlabP12kmem_cache_s+0x6c>
}
    80001694:	01813083          	ld	ra,24(sp)
    80001698:	01013403          	ld	s0,16(sp)
    8000169c:	00813483          	ld	s1,8(sp)
    800016a0:	02010113          	addi	sp,sp,32
    800016a4:	00008067          	ret

00000000800016a8 <_Z18getOptimalSlabSizem>:

size_t getOptimalSlabSize(size_t obj_size)
{
    800016a8:	ff010113          	addi	sp,sp,-16
    800016ac:	00813423          	sd	s0,8(sp)
    800016b0:	01010413          	addi	s0,sp,16
    size_t bestSize = BLOCK_SIZE;
    800016b4:	000017b7          	lui	a5,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    800016b8:	04850713          	addi	a4,a0,72
    800016bc:	00e7f663          	bgeu	a5,a4,800016c8 <_Z18getOptimalSlabSizem+0x20>
        bestSize<<=1;
    800016c0:	00179793          	slli	a5,a5,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    800016c4:	ff5ff06f          	j	800016b8 <_Z18getOptimalSlabSizem+0x10>
    size_t optimalWaste = (bestSize - sizeof(slab_t)) % obj_size;
    800016c8:	fb878593          	addi	a1,a5,-72 # fb8 <_entry-0x7ffff048>
    800016cc:	02a5f5b3          	remu	a1,a1,a0

    for(int i = 1;i<=4;i++) //TODO change constants
    800016d0:	00100713          	li	a4,1
    800016d4:	0080006f          	j	800016dc <_Z18getOptimalSlabSizem+0x34>
    800016d8:	0017071b          	addiw	a4,a4,1
    800016dc:	00400693          	li	a3,4
    800016e0:	02e6c063          	blt	a3,a4,80001700 <_Z18getOptimalSlabSizem+0x58>
    {
        size_t newSize = bestSize << i;
    800016e4:	00e79633          	sll	a2,a5,a4
        size_t newWaste = (newSize - sizeof(slab_t)) % obj_size;
    800016e8:	fb860693          	addi	a3,a2,-72
    800016ec:	02a6f6b3          	remu	a3,a3,a0
        if(newWaste < optimalWaste)
    800016f0:	feb6f4e3          	bgeu	a3,a1,800016d8 <_Z18getOptimalSlabSizem+0x30>
        {
            optimalWaste = newWaste;
    800016f4:	00068593          	mv	a1,a3
            bestSize = newSize;
    800016f8:	00060793          	mv	a5,a2
    800016fc:	fddff06f          	j	800016d8 <_Z18getOptimalSlabSizem+0x30>
        }
    }

    return bestSize / BLOCK_SIZE;
}
    80001700:	00c7d513          	srli	a0,a5,0xc
    80001704:	00813403          	ld	s0,8(sp)
    80001708:	01010113          	addi	sp,sp,16
    8000170c:	00008067          	ret

0000000080001710 <_Z8findSlabP12kmem_cache_sPKv>:

//finds the slab where objp is
slab_t* findSlab(kmem_cache_t* cachep, const void* objp)
{
    80001710:	ff010113          	addi	sp,sp,-16
    80001714:	00813423          	sd	s0,8(sp)
    80001718:	01010413          	addi	s0,sp,16
    8000171c:	00050693          	mv	a3,a0
    slab_t* slab = cachep->slabs_full;
    80001720:	04853503          	ld	a0,72(a0)
    80001724:	0080006f          	j	8000172c <_Z8findSlabP12kmem_cache_sPKv+0x1c>
    while(slab != nullptr)
    {
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
            return slab;
        slab = slab->next;
    80001728:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    8000172c:	02050863          	beqz	a0,8000175c <_Z8findSlabP12kmem_cache_sPKv+0x4c>
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    80001730:	01853783          	ld	a5,24(a0)
    80001734:	01053703          	ld	a4,16(a0)
    80001738:	06073703          	ld	a4,96(a4)
    8000173c:	02e787b3          	mul	a5,a5,a4
    80001740:	00a787b3          	add	a5,a5,a0
    80001744:	04878793          	addi	a5,a5,72
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
    80001748:	feb570e3          	bgeu	a0,a1,80001728 <_Z8findSlabP12kmem_cache_sPKv+0x18>
    8000174c:	fcf5fee3          	bgeu	a1,a5,80001728 <_Z8findSlabP12kmem_cache_sPKv+0x18>
            return slab;
        slab = slab->next;
    }

    return nullptr;
}
    80001750:	00813403          	ld	s0,8(sp)
    80001754:	01010113          	addi	sp,sp,16
    80001758:	00008067          	ret
    slab = cachep->slabs_partial;
    8000175c:	0506b503          	ld	a0,80(a3)
    80001760:	0080006f          	j	80001768 <_Z8findSlabP12kmem_cache_sPKv+0x58>
        slab = slab->next;
    80001764:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    80001768:	fe0504e3          	beqz	a0,80001750 <_Z8findSlabP12kmem_cache_sPKv+0x40>
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    8000176c:	01853783          	ld	a5,24(a0)
    80001770:	01053703          	ld	a4,16(a0)
    80001774:	06073703          	ld	a4,96(a4)
    80001778:	02e787b3          	mul	a5,a5,a4
    8000177c:	00a787b3          	add	a5,a5,a0
    80001780:	04878793          	addi	a5,a5,72
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
    80001784:	feb570e3          	bgeu	a0,a1,80001764 <_Z8findSlabP12kmem_cache_sPKv+0x54>
    80001788:	fcf5fee3          	bgeu	a1,a5,80001764 <_Z8findSlabP12kmem_cache_sPKv+0x54>
    8000178c:	fc5ff06f          	j	80001750 <_Z8findSlabP12kmem_cache_sPKv+0x40>

0000000080001790 <_Z19resetAllocatedIndexP6slab_si>:

void resetAllocatedIndex(slab_t* slab, int index)
{
    80001790:	ff010113          	addi	sp,sp,-16
    80001794:	00813423          	sd	s0,8(sp)
    80001798:	01010413          	addi	s0,sp,16
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] & ~(1 << (index%8));
    8000179c:	41f5d79b          	sraiw	a5,a1,0x1f
    800017a0:	01d7d79b          	srliw	a5,a5,0x1d
    800017a4:	00b785bb          	addw	a1,a5,a1
    800017a8:	4035d71b          	sraiw	a4,a1,0x3
    800017ac:	00e50533          	add	a0,a0,a4
    800017b0:	02850703          	lb	a4,40(a0)
    800017b4:	0075f593          	andi	a1,a1,7
    800017b8:	40f585bb          	subw	a1,a1,a5
    800017bc:	00100793          	li	a5,1
    800017c0:	00b795bb          	sllw	a1,a5,a1
    800017c4:	fff5c593          	not	a1,a1
    800017c8:	00b775b3          	and	a1,a4,a1
    800017cc:	02b50423          	sb	a1,40(a0)
}
    800017d0:	00813403          	ld	s0,8(sp)
    800017d4:	01010113          	addi	sp,sp,16
    800017d8:	00008067          	ret

00000000800017dc <_Z13printSlabInfoP6slab_s>:

void printSlabInfo(slab_t* slab)
{
    800017dc:	fe010113          	addi	sp,sp,-32
    800017e0:	00113c23          	sd	ra,24(sp)
    800017e4:	00813823          	sd	s0,16(sp)
    800017e8:	00913423          	sd	s1,8(sp)
    800017ec:	01213023          	sd	s2,0(sp)
    800017f0:	02010413          	addi	s0,sp,32
    800017f4:	00050913          	mv	s2,a0
    KConsole::trapPrintString("One slab info---------\n");
    800017f8:	00007517          	auipc	a0,0x7
    800017fc:	83850513          	addi	a0,a0,-1992 # 80008030 <CONSOLE_STATUS+0x20>
    80001800:	00002097          	auipc	ra,0x2
    80001804:	ae0080e7          	jalr	-1312(ra) # 800032e0 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Slab address ",(size_t)slab,16);
    80001808:	01000613          	li	a2,16
    8000180c:	00090593          	mv	a1,s2
    80001810:	00007517          	auipc	a0,0x7
    80001814:	83850513          	addi	a0,a0,-1992 # 80008048 <CONSOLE_STATUS+0x38>
    80001818:	00002097          	auipc	ra,0x2
    8000181c:	ba0080e7          	jalr	-1120(ra) # 800033b8 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Number of allocated objects ",slab->numOfAllocatedObjects);
    80001820:	00a00613          	li	a2,10
    80001824:	02093583          	ld	a1,32(s2)
    80001828:	00007517          	auipc	a0,0x7
    8000182c:	83050513          	addi	a0,a0,-2000 # 80008058 <CONSOLE_STATUS+0x48>
    80001830:	00002097          	auipc	ra,0x2
    80001834:	b88080e7          	jalr	-1144(ra) # 800033b8 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Number of objects ", slab->numOfObjects);
    80001838:	00a00613          	li	a2,10
    8000183c:	01893583          	ld	a1,24(s2)
    80001840:	00007517          	auipc	a0,0x7
    80001844:	83850513          	addi	a0,a0,-1992 # 80008078 <CONSOLE_STATUS+0x68>
    80001848:	00002097          	auipc	ra,0x2
    8000184c:	b70080e7          	jalr	-1168(ra) # 800033b8 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    for(size_t i = 0;i < (slab->numOfObjects + 7) / 8;i++)
    80001850:	00000493          	li	s1,0
    80001854:	01893783          	ld	a5,24(s2)
    80001858:	00778793          	addi	a5,a5,7
    8000185c:	0037d793          	srli	a5,a5,0x3
    80001860:	02f4fa63          	bgeu	s1,a5,80001894 <_Z13printSlabInfoP6slab_s+0xb8>
    {
        KConsole::trapPrintInt((size_t)slab->allocated[i], 16);
    80001864:	009907b3          	add	a5,s2,s1
    80001868:	00000613          	li	a2,0
    8000186c:	01000593          	li	a1,16
    80001870:	0287c503          	lbu	a0,40(a5)
    80001874:	00002097          	auipc	ra,0x2
    80001878:	ab0080e7          	jalr	-1360(ra) # 80003324 <_ZN8KConsole12trapPrintIntEmii>
        KConsole::trapPrintString("\n");
    8000187c:	00007517          	auipc	a0,0x7
    80001880:	d4450513          	addi	a0,a0,-700 # 800085c0 <CONSOLE_STATUS+0x5b0>
    80001884:	00002097          	auipc	ra,0x2
    80001888:	a5c080e7          	jalr	-1444(ra) # 800032e0 <_ZN8KConsole15trapPrintStringEPKc>
    for(size_t i = 0;i < (slab->numOfObjects + 7) / 8;i++)
    8000188c:	00148493          	addi	s1,s1,1
    80001890:	fc5ff06f          	j	80001854 <_Z13printSlabInfoP6slab_s+0x78>
    }
}
    80001894:	01813083          	ld	ra,24(sp)
    80001898:	01013403          	ld	s0,16(sp)
    8000189c:	00813483          	ld	s1,8(sp)
    800018a0:	00013903          	ld	s2,0(sp)
    800018a4:	02010113          	addi	sp,sp,32
    800018a8:	00008067          	ret

00000000800018ac <_Z16free_slab_objectP6slab_sPKv>:

void free_slab_object(slab_t* slab, const void* objp)
{
    800018ac:	00058693          	mv	a3,a1
    int indexOfObject = ((size_t)objp - sizeof(slab_t) - (size_t)slab) / slab->owner->obj_size;
    800018b0:	40a58733          	sub	a4,a1,a0
    800018b4:	fb870713          	addi	a4,a4,-72
    800018b8:	01053783          	ld	a5,16(a0)
    800018bc:	0607b783          	ld	a5,96(a5)
    800018c0:	02f75733          	divu	a4,a4,a5
    800018c4:	0007059b          	sext.w	a1,a4
    if((size_t)objp != (size_t)slab + sizeof(slab_t) + indexOfObject*slab->owner->obj_size) //address not allocated, random address
    800018c8:	02b787b3          	mul	a5,a5,a1
    800018cc:	00f507b3          	add	a5,a0,a5
    800018d0:	04878793          	addi	a5,a5,72
    800018d4:	00f68463          	beq	a3,a5,800018dc <_Z16free_slab_objectP6slab_sPKv+0x30>
    800018d8:	00008067          	ret
{
    800018dc:	fe010113          	addi	sp,sp,-32
    800018e0:	00113c23          	sd	ra,24(sp)
    800018e4:	00813823          	sd	s0,16(sp)
    800018e8:	00913423          	sd	s1,8(sp)
    800018ec:	02010413          	addi	s0,sp,32
    800018f0:	00050493          	mv	s1,a0
        return;

    //TODO
    //test if the index was even marked as taken
    resetAllocatedIndex(slab, indexOfObject);
    800018f4:	00000097          	auipc	ra,0x0
    800018f8:	e9c080e7          	jalr	-356(ra) # 80001790 <_Z19resetAllocatedIndexP6slab_si>
    if(slab->numOfObjects == slab->numOfAllocatedObjects)
    800018fc:	0184b703          	ld	a4,24(s1)
    80001900:	0204b783          	ld	a5,32(s1)
    80001904:	02f70663          	beq	a4,a5,80001930 <_Z16free_slab_objectP6slab_sPKv+0x84>
        removeFullSlab(slab->owner, slab);
    else if(slab->numOfAllocatedObjects == 1)
    80001908:	00100713          	li	a4,1
    8000190c:	02e78c63          	beq	a5,a4,80001944 <_Z16free_slab_objectP6slab_sPKv+0x98>
        removePartialSlab(slab->owner, slab);
    slab->numOfAllocatedObjects--;
    80001910:	0204b783          	ld	a5,32(s1)
    80001914:	fff78793          	addi	a5,a5,-1
    80001918:	02f4b023          	sd	a5,32(s1)
}
    8000191c:	01813083          	ld	ra,24(sp)
    80001920:	01013403          	ld	s0,16(sp)
    80001924:	00813483          	ld	s1,8(sp)
    80001928:	02010113          	addi	sp,sp,32
    8000192c:	00008067          	ret
        removeFullSlab(slab->owner, slab);
    80001930:	00048593          	mv	a1,s1
    80001934:	0104b503          	ld	a0,16(s1)
    80001938:	00000097          	auipc	ra,0x0
    8000193c:	c24080e7          	jalr	-988(ra) # 8000155c <_Z14removeFullSlabP12kmem_cache_sP6slab_s>
    80001940:	fd1ff06f          	j	80001910 <_Z16free_slab_objectP6slab_sPKv+0x64>
        removePartialSlab(slab->owner, slab);
    80001944:	00048593          	mv	a1,s1
    80001948:	0104b503          	ld	a0,16(s1)
    8000194c:	00000097          	auipc	ra,0x0
    80001950:	c68080e7          	jalr	-920(ra) # 800015b4 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
    80001954:	fbdff06f          	j	80001910 <_Z16free_slab_objectP6slab_sPKv+0x64>

0000000080001958 <_Z9kmem_initPvi>:
    }
}

//slab allocator public interface-----------------------------------------------------------------------------
void kmem_init(void *space, int block_num)
{
    80001958:	ff010113          	addi	sp,sp,-16
    8000195c:	00113423          	sd	ra,8(sp)
    80001960:	00813023          	sd	s0,0(sp)
    80001964:	01010413          	addi	s0,sp,16
    buddyAllocator* buddy = buddy_init(space, block_num);
    80001968:	00001097          	auipc	ra,0x1
    8000196c:	350080e7          	jalr	848(ra) # 80002cb8 <_Z10buddy_initPvm>
    slabAllocator = slab_allocator_init(buddy);
    80001970:	00000097          	auipc	ra,0x0
    80001974:	91c080e7          	jalr	-1764(ra) # 8000128c <_Z19slab_allocator_initP14buddyAllocator>
    80001978:	00009797          	auipc	a5,0x9
    8000197c:	f4a7b423          	sd	a0,-184(a5) # 8000a8c0 <_ZL13slabAllocator>
    //printSlabAllocatorInfo();
}
    80001980:	00813083          	ld	ra,8(sp)
    80001984:	00013403          	ld	s0,0(sp)
    80001988:	01010113          	addi	sp,sp,16
    8000198c:	00008067          	ret

0000000080001990 <_Z16kmem_cache_allocP12kmem_cache_s>:
    newCache->slab_size = getOptimalSlabSize(size);
    return newCache;
}

void *kmem_cache_alloc(kmem_cache_t *cachep)
{
    80001990:	fe010113          	addi	sp,sp,-32
    80001994:	00113c23          	sd	ra,24(sp)
    80001998:	00813823          	sd	s0,16(sp)
    8000199c:	00913423          	sd	s1,8(sp)
    800019a0:	01213023          	sd	s2,0(sp)
    800019a4:	02010413          	addi	s0,sp,32
    800019a8:	00050493          	mv	s1,a0
    if(cachep->slabs_partial != nullptr)
    800019ac:	05053503          	ld	a0,80(a0)
    800019b0:	02051c63          	bnez	a0,800019e8 <_Z16kmem_cache_allocP12kmem_cache_s+0x58>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
        if(full(cachep->slabs_partial))
            putPartialToFull(cachep);
        return allocatedAddr;
    }
    else if(cachep->slabs_empty != nullptr)
    800019b4:	0404b503          	ld	a0,64(s1)
    800019b8:	06050c63          	beqz	a0,80001a30 <_Z16kmem_cache_allocP12kmem_cache_s+0xa0>
    {
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    800019bc:	00000097          	auipc	ra,0x0
    800019c0:	968080e7          	jalr	-1688(ra) # 80001324 <_Z14allocateObjectP6slab_s>
    800019c4:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    800019c8:	0404b503          	ld	a0,64(s1)
    800019cc:	00000097          	auipc	ra,0x0
    800019d0:	a34080e7          	jalr	-1484(ra) # 80001400 <_Z5emptyP6slab_s>
    800019d4:	02051863          	bnez	a0,80001a04 <_Z16kmem_cache_allocP12kmem_cache_s+0x74>
            putEmptyToPartial(cachep);
    800019d8:	00048513          	mv	a0,s1
    800019dc:	00000097          	auipc	ra,0x0
    800019e0:	b28080e7          	jalr	-1240(ra) # 80001504 <_Z17putEmptyToPartialP12kmem_cache_s>
        return allocatedAddr;
    800019e4:	0200006f          	j	80001a04 <_Z16kmem_cache_allocP12kmem_cache_s+0x74>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
    800019e8:	00000097          	auipc	ra,0x0
    800019ec:	93c080e7          	jalr	-1732(ra) # 80001324 <_Z14allocateObjectP6slab_s>
    800019f0:	00050913          	mv	s2,a0
        if(full(cachep->slabs_partial))
    800019f4:	0504b503          	ld	a0,80(s1)
    800019f8:	00000097          	auipc	ra,0x0
    800019fc:	9e0080e7          	jalr	-1568(ra) # 800013d8 <_Z4fullP6slab_s>
    80001a00:	02051063          	bnez	a0,80001a20 <_Z16kmem_cache_allocP12kmem_cache_s+0x90>
        if(!empty(cachep->slabs_empty))
            putEmptyToPartial(cachep);
        return allocatedAddr;
    }
    return nullptr;
}
    80001a04:	00090513          	mv	a0,s2
    80001a08:	01813083          	ld	ra,24(sp)
    80001a0c:	01013403          	ld	s0,16(sp)
    80001a10:	00813483          	ld	s1,8(sp)
    80001a14:	00013903          	ld	s2,0(sp)
    80001a18:	02010113          	addi	sp,sp,32
    80001a1c:	00008067          	ret
            putPartialToFull(cachep);
    80001a20:	00048513          	mv	a0,s1
    80001a24:	00000097          	auipc	ra,0x0
    80001a28:	a88080e7          	jalr	-1400(ra) # 800014ac <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001a2c:	fd9ff06f          	j	80001a04 <_Z16kmem_cache_allocP12kmem_cache_s+0x74>
        allocateSlab(cachep);
    80001a30:	00048513          	mv	a0,s1
    80001a34:	00000097          	auipc	ra,0x0
    80001a38:	bd8080e7          	jalr	-1064(ra) # 8000160c <_Z12allocateSlabP12kmem_cache_s>
        if(cachep->slabs_empty == nullptr)
    80001a3c:	0404b903          	ld	s2,64(s1)
    80001a40:	fc0902e3          	beqz	s2,80001a04 <_Z16kmem_cache_allocP12kmem_cache_s+0x74>
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001a44:	00090513          	mv	a0,s2
    80001a48:	00000097          	auipc	ra,0x0
    80001a4c:	8dc080e7          	jalr	-1828(ra) # 80001324 <_Z14allocateObjectP6slab_s>
    80001a50:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001a54:	0404b503          	ld	a0,64(s1)
    80001a58:	00000097          	auipc	ra,0x0
    80001a5c:	9a8080e7          	jalr	-1624(ra) # 80001400 <_Z5emptyP6slab_s>
    80001a60:	fa0512e3          	bnez	a0,80001a04 <_Z16kmem_cache_allocP12kmem_cache_s+0x74>
            putEmptyToPartial(cachep);
    80001a64:	00048513          	mv	a0,s1
    80001a68:	00000097          	auipc	ra,0x0
    80001a6c:	a9c080e7          	jalr	-1380(ra) # 80001504 <_Z17putEmptyToPartialP12kmem_cache_s>
        return allocatedAddr;
    80001a70:	f95ff06f          	j	80001a04 <_Z16kmem_cache_allocP12kmem_cache_s+0x74>

0000000080001a74 <_Z17kmem_cache_createPKcmPFvPvES3_>:
{
    80001a74:	fc010113          	addi	sp,sp,-64
    80001a78:	02113c23          	sd	ra,56(sp)
    80001a7c:	02813823          	sd	s0,48(sp)
    80001a80:	02913423          	sd	s1,40(sp)
    80001a84:	03213023          	sd	s2,32(sp)
    80001a88:	01313c23          	sd	s3,24(sp)
    80001a8c:	01413823          	sd	s4,16(sp)
    80001a90:	01513423          	sd	s5,8(sp)
    80001a94:	04010413          	addi	s0,sp,64
    80001a98:	00050993          	mv	s3,a0
    80001a9c:	00058913          	mv	s2,a1
    80001aa0:	00060a13          	mv	s4,a2
    80001aa4:	00068a93          	mv	s5,a3
    kmem_cache_t* newCache = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    80001aa8:	00009517          	auipc	a0,0x9
    80001aac:	e1853503          	ld	a0,-488(a0) # 8000a8c0 <_ZL13slabAllocator>
    80001ab0:	07050513          	addi	a0,a0,112
    80001ab4:	00000097          	auipc	ra,0x0
    80001ab8:	edc080e7          	jalr	-292(ra) # 80001990 <_Z16kmem_cache_allocP12kmem_cache_s>
    80001abc:	00050493          	mv	s1,a0
    newCache->slabs_empty = nullptr;
    80001ac0:	04053023          	sd	zero,64(a0)
    newCache->slabs_partial = nullptr;
    80001ac4:	04053823          	sd	zero,80(a0)
    newCache->slabs_full = nullptr;
    80001ac8:	04053423          	sd	zero,72(a0)
    newCache->dtor = dtor;
    80001acc:	07553823          	sd	s5,112(a0)
    newCache->ctor = ctor;
    80001ad0:	07453423          	sd	s4,104(a0)
    strcpy(name, newCache->cacheName);
    80001ad4:	00050593          	mv	a1,a0
    80001ad8:	00098513          	mv	a0,s3
    80001adc:	fffff097          	auipc	ra,0xfffff
    80001ae0:	77c080e7          	jalr	1916(ra) # 80001258 <_Z6strcpyPKcPc>
    newCache->obj_size = size;
    80001ae4:	0724b023          	sd	s2,96(s1)
    newCache->slab_size = getOptimalSlabSize(size);
    80001ae8:	00090513          	mv	a0,s2
    80001aec:	00000097          	auipc	ra,0x0
    80001af0:	bbc080e7          	jalr	-1092(ra) # 800016a8 <_Z18getOptimalSlabSizem>
    80001af4:	04a4bc23          	sd	a0,88(s1)
}
    80001af8:	00048513          	mv	a0,s1
    80001afc:	03813083          	ld	ra,56(sp)
    80001b00:	03013403          	ld	s0,48(sp)
    80001b04:	02813483          	ld	s1,40(sp)
    80001b08:	02013903          	ld	s2,32(sp)
    80001b0c:	01813983          	ld	s3,24(sp)
    80001b10:	01013a03          	ld	s4,16(sp)
    80001b14:	00813a83          	ld	s5,8(sp)
    80001b18:	04010113          	addi	sp,sp,64
    80001b1c:	00008067          	ret

0000000080001b20 <_Z15kmem_cache_freeP12kmem_cache_sPv>:

void kmem_cache_free(kmem_cache_t *cachep, void *objp)
{
    80001b20:	fe010113          	addi	sp,sp,-32
    80001b24:	00113c23          	sd	ra,24(sp)
    80001b28:	00813823          	sd	s0,16(sp)
    80001b2c:	00913423          	sd	s1,8(sp)
    80001b30:	02010413          	addi	s0,sp,32
    80001b34:	00058493          	mv	s1,a1
    slab_t* slab = findSlab(cachep, objp);
    80001b38:	00000097          	auipc	ra,0x0
    80001b3c:	bd8080e7          	jalr	-1064(ra) # 80001710 <_Z8findSlabP12kmem_cache_sPKv>
    if(slab == nullptr) return;
    80001b40:	00050863          	beqz	a0,80001b50 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x30>
    free_slab_object(slab, objp);
    80001b44:	00048593          	mv	a1,s1
    80001b48:	00000097          	auipc	ra,0x0
    80001b4c:	d64080e7          	jalr	-668(ra) # 800018ac <_Z16free_slab_objectP6slab_sPKv>
}
    80001b50:	01813083          	ld	ra,24(sp)
    80001b54:	01013403          	ld	s0,16(sp)
    80001b58:	00813483          	ld	s1,8(sp)
    80001b5c:	02010113          	addi	sp,sp,32
    80001b60:	00008067          	ret

0000000080001b64 <_Z15kmem_cache_infoP12kmem_cache_s>:

//TODO
//what needs to be printed
void kmem_cache_info(kmem_cache_t *cachep)
{
    80001b64:	fe010113          	addi	sp,sp,-32
    80001b68:	00113c23          	sd	ra,24(sp)
    80001b6c:	00813823          	sd	s0,16(sp)
    80001b70:	00913423          	sd	s1,8(sp)
    80001b74:	01213023          	sd	s2,0(sp)
    80001b78:	02010413          	addi	s0,sp,32
    80001b7c:	00050913          	mv	s2,a0
    KConsole::trapPrintString("Kmem Cache Info-------------------------------------\n");
    80001b80:	00006517          	auipc	a0,0x6
    80001b84:	51050513          	addi	a0,a0,1296 # 80008090 <CONSOLE_STATUS+0x80>
    80001b88:	00001097          	auipc	ra,0x1
    80001b8c:	758080e7          	jalr	1880(ra) # 800032e0 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Cache Name ");
    80001b90:	00006517          	auipc	a0,0x6
    80001b94:	53850513          	addi	a0,a0,1336 # 800080c8 <CONSOLE_STATUS+0xb8>
    80001b98:	00001097          	auipc	ra,0x1
    80001b9c:	748080e7          	jalr	1864(ra) # 800032e0 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString(cachep->cacheName); KConsole::trapPrintString("\n");
    80001ba0:	00090513          	mv	a0,s2
    80001ba4:	00001097          	auipc	ra,0x1
    80001ba8:	73c080e7          	jalr	1852(ra) # 800032e0 <_ZN8KConsole15trapPrintStringEPKc>
    80001bac:	00007517          	auipc	a0,0x7
    80001bb0:	a1450513          	addi	a0,a0,-1516 # 800085c0 <CONSOLE_STATUS+0x5b0>
    80001bb4:	00001097          	auipc	ra,0x1
    80001bb8:	72c080e7          	jalr	1836(ra) # 800032e0 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Cache slab size in blocks ", cachep->slab_size);
    80001bbc:	00a00613          	li	a2,10
    80001bc0:	05893583          	ld	a1,88(s2)
    80001bc4:	00006517          	auipc	a0,0x6
    80001bc8:	51450513          	addi	a0,a0,1300 # 800080d8 <CONSOLE_STATUS+0xc8>
    80001bcc:	00001097          	auipc	ra,0x1
    80001bd0:	7ec080e7          	jalr	2028(ra) # 800033b8 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Cache obj size in bytes ", cachep->obj_size);
    80001bd4:	00a00613          	li	a2,10
    80001bd8:	06093583          	ld	a1,96(s2)
    80001bdc:	00006517          	auipc	a0,0x6
    80001be0:	51c50513          	addi	a0,a0,1308 # 800080f8 <CONSOLE_STATUS+0xe8>
    80001be4:	00001097          	auipc	ra,0x1
    80001be8:	7d4080e7          	jalr	2004(ra) # 800033b8 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    
    KConsole::trapPrintString("Slabs info-------------------\n");
    80001bec:	00006517          	auipc	a0,0x6
    80001bf0:	52c50513          	addi	a0,a0,1324 # 80008118 <CONSOLE_STATUS+0x108>
    80001bf4:	00001097          	auipc	ra,0x1
    80001bf8:	6ec080e7          	jalr	1772(ra) # 800032e0 <_ZN8KConsole15trapPrintStringEPKc>

    KConsole::trapPrintString("Full slabs\n");
    80001bfc:	00006517          	auipc	a0,0x6
    80001c00:	53c50513          	addi	a0,a0,1340 # 80008138 <CONSOLE_STATUS+0x128>
    80001c04:	00001097          	auipc	ra,0x1
    80001c08:	6dc080e7          	jalr	1756(ra) # 800032e0 <_ZN8KConsole15trapPrintStringEPKc>
    slab_t* slab = cachep->slabs_full;
    80001c0c:	04893483          	ld	s1,72(s2)
    while(slab != nullptr)
    80001c10:	00048c63          	beqz	s1,80001c28 <_Z15kmem_cache_infoP12kmem_cache_s+0xc4>
    {
        printSlabInfo(slab);
    80001c14:	00048513          	mv	a0,s1
    80001c18:	00000097          	auipc	ra,0x0
    80001c1c:	bc4080e7          	jalr	-1084(ra) # 800017dc <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001c20:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001c24:	fedff06f          	j	80001c10 <_Z15kmem_cache_infoP12kmem_cache_s+0xac>
    }

    KConsole::trapPrintString("Partial slabs\n");
    80001c28:	00006517          	auipc	a0,0x6
    80001c2c:	52050513          	addi	a0,a0,1312 # 80008148 <CONSOLE_STATUS+0x138>
    80001c30:	00001097          	auipc	ra,0x1
    80001c34:	6b0080e7          	jalr	1712(ra) # 800032e0 <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_partial;
    80001c38:	05093483          	ld	s1,80(s2)
    while(slab != nullptr)
    80001c3c:	00048c63          	beqz	s1,80001c54 <_Z15kmem_cache_infoP12kmem_cache_s+0xf0>
    {
        printSlabInfo(slab);
    80001c40:	00048513          	mv	a0,s1
    80001c44:	00000097          	auipc	ra,0x0
    80001c48:	b98080e7          	jalr	-1128(ra) # 800017dc <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001c4c:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001c50:	fedff06f          	j	80001c3c <_Z15kmem_cache_infoP12kmem_cache_s+0xd8>
    }

    KConsole::trapPrintString("Empty slabs\n");
    80001c54:	00006517          	auipc	a0,0x6
    80001c58:	50450513          	addi	a0,a0,1284 # 80008158 <CONSOLE_STATUS+0x148>
    80001c5c:	00001097          	auipc	ra,0x1
    80001c60:	684080e7          	jalr	1668(ra) # 800032e0 <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_empty;
    80001c64:	04093483          	ld	s1,64(s2)
    while(slab != nullptr)
    80001c68:	00048c63          	beqz	s1,80001c80 <_Z15kmem_cache_infoP12kmem_cache_s+0x11c>
    {
        printSlabInfo(slab);
    80001c6c:	00048513          	mv	a0,s1
    80001c70:	00000097          	auipc	ra,0x0
    80001c74:	b6c080e7          	jalr	-1172(ra) # 800017dc <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001c78:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001c7c:	fedff06f          	j	80001c68 <_Z15kmem_cache_infoP12kmem_cache_s+0x104>
    }
}
    80001c80:	01813083          	ld	ra,24(sp)
    80001c84:	01013403          	ld	s0,16(sp)
    80001c88:	00813483          	ld	s1,8(sp)
    80001c8c:	00013903          	ld	s2,0(sp)
    80001c90:	02010113          	addi	sp,sp,32
    80001c94:	00008067          	ret

0000000080001c98 <_Z22printSlabAllocatorInfov>:
{
    80001c98:	fe010113          	addi	sp,sp,-32
    80001c9c:	00113c23          	sd	ra,24(sp)
    80001ca0:	00813823          	sd	s0,16(sp)
    80001ca4:	00913423          	sd	s1,8(sp)
    80001ca8:	02010413          	addi	s0,sp,32
    KConsole::trapPrintString("Slab allocator info----------------------------------------------------------\n");
    80001cac:	00006517          	auipc	a0,0x6
    80001cb0:	4bc50513          	addi	a0,a0,1212 # 80008168 <CONSOLE_STATUS+0x158>
    80001cb4:	00001097          	auipc	ra,0x1
    80001cb8:	62c080e7          	jalr	1580(ra) # 800032e0 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Slab allocator buddy address ", (size_t)slabAllocator->buddy,16);
    80001cbc:	00009497          	auipc	s1,0x9
    80001cc0:	c0448493          	addi	s1,s1,-1020 # 8000a8c0 <_ZL13slabAllocator>
    80001cc4:	0004b783          	ld	a5,0(s1)
    80001cc8:	01000613          	li	a2,16
    80001ccc:	0007b583          	ld	a1,0(a5)
    80001cd0:	00006517          	auipc	a0,0x6
    80001cd4:	4e850513          	addi	a0,a0,1256 # 800081b8 <CONSOLE_STATUS+0x1a8>
    80001cd8:	00001097          	auipc	ra,0x1
    80001cdc:	6e0080e7          	jalr	1760(ra) # 800033b8 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Slab allocator address ", (size_t)slabAllocator, 16);
    80001ce0:	01000613          	li	a2,16
    80001ce4:	0004b583          	ld	a1,0(s1)
    80001ce8:	00006517          	auipc	a0,0x6
    80001cec:	4f050513          	addi	a0,a0,1264 # 800081d8 <CONSOLE_STATUS+0x1c8>
    80001cf0:	00001097          	auipc	ra,0x1
    80001cf4:	6c8080e7          	jalr	1736(ra) # 800033b8 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintString("Cache of caches info\n");
    80001cf8:	00006517          	auipc	a0,0x6
    80001cfc:	4f850513          	addi	a0,a0,1272 # 800081f0 <CONSOLE_STATUS+0x1e0>
    80001d00:	00001097          	auipc	ra,0x1
    80001d04:	5e0080e7          	jalr	1504(ra) # 800032e0 <_ZN8KConsole15trapPrintStringEPKc>
    kmem_cache_info(&slabAllocator->cacheOfCaches);
    80001d08:	0004b503          	ld	a0,0(s1)
    80001d0c:	07050513          	addi	a0,a0,112
    80001d10:	00000097          	auipc	ra,0x0
    80001d14:	e54080e7          	jalr	-428(ra) # 80001b64 <_Z15kmem_cache_infoP12kmem_cache_s>
    KConsole::trapPrintString("Caches for buffers\n");
    80001d18:	00006517          	auipc	a0,0x6
    80001d1c:	4f050513          	addi	a0,a0,1264 # 80008208 <CONSOLE_STATUS+0x1f8>
    80001d20:	00001097          	auipc	ra,0x1
    80001d24:	5c0080e7          	jalr	1472(ra) # 800032e0 <_ZN8KConsole15trapPrintStringEPKc>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80001d28:	00000493          	li	s1,0
    80001d2c:	0100006f          	j	80001d3c <_Z22printSlabAllocatorInfov+0xa4>
            kmem_cache_info(slabAllocator->cachesBuffers[i]);
    80001d30:	00000097          	auipc	ra,0x0
    80001d34:	e34080e7          	jalr	-460(ra) # 80001b64 <_Z15kmem_cache_infoP12kmem_cache_s>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80001d38:	00148493          	addi	s1,s1,1
    80001d3c:	00c00793          	li	a5,12
    80001d40:	0297e063          	bltu	a5,s1,80001d60 <_Z22printSlabAllocatorInfov+0xc8>
        if(slabAllocator->cachesBuffers[i] != nullptr)
    80001d44:	00349793          	slli	a5,s1,0x3
    80001d48:	00009717          	auipc	a4,0x9
    80001d4c:	b7873703          	ld	a4,-1160(a4) # 8000a8c0 <_ZL13slabAllocator>
    80001d50:	00f707b3          	add	a5,a4,a5
    80001d54:	0087b503          	ld	a0,8(a5)
    80001d58:	fc051ce3          	bnez	a0,80001d30 <_Z22printSlabAllocatorInfov+0x98>
    80001d5c:	fddff06f          	j	80001d38 <_Z22printSlabAllocatorInfov+0xa0>
}
    80001d60:	01813083          	ld	ra,24(sp)
    80001d64:	01013403          	ld	s0,16(sp)
    80001d68:	00813483          	ld	s1,8(sp)
    80001d6c:	02010113          	addi	sp,sp,32
    80001d70:	00008067          	ret

0000000080001d74 <_Z7kmallocm>:

void *kmalloc(size_t size)
{
    80001d74:	fe010113          	addi	sp,sp,-32
    80001d78:	00113c23          	sd	ra,24(sp)
    80001d7c:	00813823          	sd	s0,16(sp)
    80001d80:	00913423          	sd	s1,8(sp)
    80001d84:	01213023          	sd	s2,0(sp)
    80001d88:	02010413          	addi	s0,sp,32
    size_t level = getDeg2Ceil(size);
    80001d8c:	00001097          	auipc	ra,0x1
    80001d90:	bc0080e7          	jalr	-1088(ra) # 8000294c <_Z11getDeg2Ceilm>
    if(level < CACHE_BUFFER_SMALL)
    80001d94:	00400793          	li	a5,4
    80001d98:	00a7fa63          	bgeu	a5,a0,80001dac <_Z7kmallocm+0x38>
        level = CACHE_BUFFER_SMALL;
    if(level > CACHE_BUFFER_BIG)
    80001d9c:	01100793          	li	a5,17
    80001da0:	00a7f863          	bgeu	a5,a0,80001db0 <_Z7kmallocm+0x3c>
        return nullptr;
    80001da4:	00000513          	li	a0,0
    80001da8:	0400006f          	j	80001de8 <_Z7kmallocm+0x74>
        level = CACHE_BUFFER_SMALL;
    80001dac:	00500513          	li	a0,5
    size_t index = level - CACHE_BUFFER_SMALL;
    80001db0:	ffb50493          	addi	s1,a0,-5
    if(slabAllocator->cachesBuffers[index] == nullptr)
    80001db4:	00009917          	auipc	s2,0x9
    80001db8:	b0c93903          	ld	s2,-1268(s2) # 8000a8c0 <_ZL13slabAllocator>
    80001dbc:	00349793          	slli	a5,s1,0x3
    80001dc0:	00f907b3          	add	a5,s2,a5
    80001dc4:	0087b783          	ld	a5,8(a5)
    80001dc8:	02078c63          	beqz	a5,80001e00 <_Z7kmallocm+0x8c>
        slabAllocator->cachesBuffers[index] = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);

    return kmem_cache_alloc(slabAllocator->cachesBuffers[index]);
    80001dcc:	00349513          	slli	a0,s1,0x3
    80001dd0:	00009497          	auipc	s1,0x9
    80001dd4:	af04b483          	ld	s1,-1296(s1) # 8000a8c0 <_ZL13slabAllocator>
    80001dd8:	00a48533          	add	a0,s1,a0
    80001ddc:	00853503          	ld	a0,8(a0)
    80001de0:	00000097          	auipc	ra,0x0
    80001de4:	bb0080e7          	jalr	-1104(ra) # 80001990 <_Z16kmem_cache_allocP12kmem_cache_s>
}
    80001de8:	01813083          	ld	ra,24(sp)
    80001dec:	01013403          	ld	s0,16(sp)
    80001df0:	00813483          	ld	s1,8(sp)
    80001df4:	00013903          	ld	s2,0(sp)
    80001df8:	02010113          	addi	sp,sp,32
    80001dfc:	00008067          	ret
        slabAllocator->cachesBuffers[index] = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    80001e00:	07090513          	addi	a0,s2,112
    80001e04:	00000097          	auipc	ra,0x0
    80001e08:	b8c080e7          	jalr	-1140(ra) # 80001990 <_Z16kmem_cache_allocP12kmem_cache_s>
    80001e0c:	00349793          	slli	a5,s1,0x3
    80001e10:	00f90933          	add	s2,s2,a5
    80001e14:	00a93423          	sd	a0,8(s2)
    80001e18:	fb5ff06f          	j	80001dcc <_Z7kmallocm+0x58>

0000000080001e1c <_Z5kfreePKv>:

void kfree(const void *objp)
{
    80001e1c:	fe010113          	addi	sp,sp,-32
    80001e20:	00113c23          	sd	ra,24(sp)
    80001e24:	00813823          	sd	s0,16(sp)
    80001e28:	00913423          	sd	s1,8(sp)
    80001e2c:	01213023          	sd	s2,0(sp)
    80001e30:	02010413          	addi	s0,sp,32
    80001e34:	00050913          	mv	s2,a0
    slab_t* slab = nullptr;
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80001e38:	00000493          	li	s1,0
    slab_t* slab = nullptr;
    80001e3c:	00000513          	li	a0,0
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80001e40:	00c00793          	li	a5,12
    80001e44:	0297e863          	bltu	a5,s1,80001e74 <_Z5kfreePKv+0x58>
    {
        slab = findSlab(slabAllocator->cachesBuffers[i], objp);
    80001e48:	00349793          	slli	a5,s1,0x3
    80001e4c:	00009717          	auipc	a4,0x9
    80001e50:	a7473703          	ld	a4,-1420(a4) # 8000a8c0 <_ZL13slabAllocator>
    80001e54:	00f707b3          	add	a5,a4,a5
    80001e58:	00090593          	mv	a1,s2
    80001e5c:	0087b503          	ld	a0,8(a5)
    80001e60:	00000097          	auipc	ra,0x0
    80001e64:	8b0080e7          	jalr	-1872(ra) # 80001710 <_Z8findSlabP12kmem_cache_sPKv>
        if(slab != nullptr) break;
    80001e68:	00051663          	bnez	a0,80001e74 <_Z5kfreePKv+0x58>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80001e6c:	00148493          	addi	s1,s1,1
    80001e70:	fd1ff06f          	j	80001e40 <_Z5kfreePKv+0x24>
    }
    if(slab != nullptr)
    80001e74:	00050863          	beqz	a0,80001e84 <_Z5kfreePKv+0x68>
    {
        free_slab_object(slab, objp);
    80001e78:	00090593          	mv	a1,s2
    80001e7c:	00000097          	auipc	ra,0x0
    80001e80:	a30080e7          	jalr	-1488(ra) # 800018ac <_Z16free_slab_objectP6slab_sPKv>
    }
}
    80001e84:	01813083          	ld	ra,24(sp)
    80001e88:	01013403          	ld	s0,16(sp)
    80001e8c:	00813483          	ld	s1,8(sp)
    80001e90:	00013903          	ld	s2,0(sp)
    80001e94:	02010113          	addi	sp,sp,32
    80001e98:	00008067          	ret

0000000080001e9c <_Z17destroy_slab_listP6slab_s>:

void destroy_slab_list(slab_t* slab)
{
    if(slab == nullptr) return;
    80001e9c:	06050463          	beqz	a0,80001f04 <_Z17destroy_slab_listP6slab_s+0x68>
{
    80001ea0:	fe010113          	addi	sp,sp,-32
    80001ea4:	00113c23          	sd	ra,24(sp)
    80001ea8:	00813823          	sd	s0,16(sp)
    80001eac:	00913423          	sd	s1,8(sp)
    80001eb0:	01213023          	sd	s2,0(sp)
    80001eb4:	02010413          	addi	s0,sp,32
    80001eb8:	00050593          	mv	a1,a0
    size_t sz = slab->owner->slab_size;
    80001ebc:	01053783          	ld	a5,16(a0)
    80001ec0:	0587b903          	ld	s2,88(a5)
    while(slab != nullptr)
    80001ec4:	02058463          	beqz	a1,80001eec <_Z17destroy_slab_listP6slab_s+0x50>
    {
        slab_t* nextSlab = slab->next;
    80001ec8:	0085b483          	ld	s1,8(a1)
        buddy_free(slabAllocator->buddy, slab, sz);
    80001ecc:	00090613          	mv	a2,s2
    80001ed0:	00009797          	auipc	a5,0x9
    80001ed4:	9f07b783          	ld	a5,-1552(a5) # 8000a8c0 <_ZL13slabAllocator>
    80001ed8:	0007b503          	ld	a0,0(a5)
    80001edc:	00001097          	auipc	ra,0x1
    80001ee0:	ebc080e7          	jalr	-324(ra) # 80002d98 <_Z10buddy_freeP14buddyAllocatorPvm>
        slab = nextSlab;
    80001ee4:	00048593          	mv	a1,s1
    while(slab != nullptr)
    80001ee8:	fddff06f          	j	80001ec4 <_Z17destroy_slab_listP6slab_s+0x28>
    }
}
    80001eec:	01813083          	ld	ra,24(sp)
    80001ef0:	01013403          	ld	s0,16(sp)
    80001ef4:	00813483          	ld	s1,8(sp)
    80001ef8:	00013903          	ld	s2,0(sp)
    80001efc:	02010113          	addi	sp,sp,32
    80001f00:	00008067          	ret
    80001f04:	00008067          	ret

0000000080001f08 <_Z18kmem_cache_destroyP12kmem_cache_s>:

void kmem_cache_destroy(kmem_cache_t *cachep)
{
    80001f08:	fe010113          	addi	sp,sp,-32
    80001f0c:	00113c23          	sd	ra,24(sp)
    80001f10:	00813823          	sd	s0,16(sp)
    80001f14:	00913423          	sd	s1,8(sp)
    80001f18:	02010413          	addi	s0,sp,32
    80001f1c:	00050493          	mv	s1,a0
    destroy_slab_list(cachep->slabs_empty);
    80001f20:	04053503          	ld	a0,64(a0)
    80001f24:	00000097          	auipc	ra,0x0
    80001f28:	f78080e7          	jalr	-136(ra) # 80001e9c <_Z17destroy_slab_listP6slab_s>
    destroy_slab_list(cachep->slabs_partial);
    80001f2c:	0504b503          	ld	a0,80(s1)
    80001f30:	00000097          	auipc	ra,0x0
    80001f34:	f6c080e7          	jalr	-148(ra) # 80001e9c <_Z17destroy_slab_listP6slab_s>
    destroy_slab_list(cachep->slabs_full);
    80001f38:	0484b503          	ld	a0,72(s1)
    80001f3c:	00000097          	auipc	ra,0x0
    80001f40:	f60080e7          	jalr	-160(ra) # 80001e9c <_Z17destroy_slab_listP6slab_s>
    kmem_cache_free(&slabAllocator->cacheOfCaches,cachep);
    80001f44:	00048593          	mv	a1,s1
    80001f48:	00009517          	auipc	a0,0x9
    80001f4c:	97853503          	ld	a0,-1672(a0) # 8000a8c0 <_ZL13slabAllocator>
    80001f50:	07050513          	addi	a0,a0,112
    80001f54:	00000097          	auipc	ra,0x0
    80001f58:	bcc080e7          	jalr	-1076(ra) # 80001b20 <_Z15kmem_cache_freeP12kmem_cache_sPv>
}
    80001f5c:	01813083          	ld	ra,24(sp)
    80001f60:	01013403          	ld	s0,16(sp)
    80001f64:	00813483          	ld	s1,8(sp)
    80001f68:	02010113          	addi	sp,sp,32
    80001f6c:	00008067          	ret

0000000080001f70 <_Z9mem_allocm>:
//

#include "../h/syscall_c.hpp"

void* mem_alloc(size_t size)
{
    80001f70:	ff010113          	addi	sp,sp,-16
    80001f74:	00813423          	sd	s0,8(sp)
    80001f78:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001f7c:	03f50513          	addi	a0,a0,63
    80001f80:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a1, %0" :  : "r"(numBlocks));
    80001f84:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 1");
    80001f88:	00100513          	li	a0,1

    __asm__ volatile("ecall"); // system call
    80001f8c:	00000073          	ecall

    //get the address
    uint64 allocatedAddr = 0x01;
    __asm__ volatile("mv %0, a0" : "=r"(allocatedAddr));
    80001f90:	00050513          	mv	a0,a0

    return (void*)allocatedAddr;
}
    80001f94:	00813403          	ld	s0,8(sp)
    80001f98:	01010113          	addi	sp,sp,16
    80001f9c:	00008067          	ret

0000000080001fa0 <_Z8mem_freePv>:

int mem_free(void* p)
{
    80001fa0:	ff010113          	addi	sp,sp,-16
    80001fa4:	00813423          	sd	s0,8(sp)
    80001fa8:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 addrFree = (uint64)p;
    __asm__ volatile("mv a1, %0" :  : "r"(addrFree));
    80001fac:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 2");
    80001fb0:	00200513          	li	a0,2

    __asm__ volatile("ecall"); // system call
    80001fb4:	00000073          	ecall

    //get the result of system call
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001fb8:	00050513          	mv	a0,a0

    return result;
}
    80001fbc:	0005051b          	sext.w	a0,a0
    80001fc0:	00813403          	ld	s0,8(sp)
    80001fc4:	01010113          	addi	sp,sp,16
    80001fc8:	00008067          	ret

0000000080001fcc <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* args)
{
    80001fcc:	fd010113          	addi	sp,sp,-48
    80001fd0:	02113423          	sd	ra,40(sp)
    80001fd4:	02813023          	sd	s0,32(sp)
    80001fd8:	00913c23          	sd	s1,24(sp)
    80001fdc:	01213823          	sd	s2,16(sp)
    80001fe0:	01313423          	sd	s3,8(sp)
    80001fe4:	03010413          	addi	s0,sp,48
    80001fe8:	00050493          	mv	s1,a0
    80001fec:	00058913          	mv	s2,a1
    80001ff0:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)args;
    uint64 opLocal = 0x11;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    80001ff4:	00001537          	lui	a0,0x1
    80001ff8:	00000097          	auipc	ra,0x0
    80001ffc:	f78080e7          	jalr	-136(ra) # 80001f70 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    //todo
    //handle this error
    if(stack_space == 0)
    80002000:	04050263          	beqz	a0,80002044 <_Z13thread_createPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    80002004:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    80002008:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    8000200c:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    80002010:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    80002014:	01100793          	li	a5,17
    80002018:	00078513          	mv	a0,a5


    __asm__ volatile("ecall");
    8000201c:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002020:	00050513          	mv	a0,a0

    return result;
    80002024:	0005051b          	sext.w	a0,a0
}
    80002028:	02813083          	ld	ra,40(sp)
    8000202c:	02013403          	ld	s0,32(sp)
    80002030:	01813483          	ld	s1,24(sp)
    80002034:	01013903          	ld	s2,16(sp)
    80002038:	00813983          	ld	s3,8(sp)
    8000203c:	03010113          	addi	sp,sp,48
    80002040:	00008067          	ret
        return -1;
    80002044:	fff00513          	li	a0,-1
    80002048:	fe1ff06f          	j	80002028 <_Z13thread_createPP7_threadPFvPvES2_+0x5c>

000000008000204c <_Z15thread_dispatchv>:

void thread_dispatch()
{
    8000204c:	ff010113          	addi	sp,sp,-16
    80002050:	00813423          	sd	s0,8(sp)
    80002054:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80002058:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    8000205c:	00000073          	ecall
}
    80002060:	00813403          	ld	s0,8(sp)
    80002064:	01010113          	addi	sp,sp,16
    80002068:	00008067          	ret

000000008000206c <_Z11thread_exitv>:

int thread_exit()
{
    8000206c:	ff010113          	addi	sp,sp,-16
    80002070:	00813423          	sd	s0,8(sp)
    80002074:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    80002078:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    8000207c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002080:	00050513          	mv	a0,a0
    return result;
}
    80002084:	0005051b          	sext.w	a0,a0
    80002088:	00813403          	ld	s0,8(sp)
    8000208c:	01010113          	addi	sp,sp,16
    80002090:	00008067          	ret

0000000080002094 <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned int x)
{
    80002094:	ff010113          	addi	sp,sp,-16
    80002098:	00813423          	sd	s0,8(sp)
    8000209c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)x));
    800020a0:	02059593          	slli	a1,a1,0x20
    800020a4:	0205d593          	srli	a1,a1,0x20
    800020a8:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    800020ac:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    800020b0:	02100513          	li	a0,33

    __asm__ volatile("ecall");
    800020b4:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800020b8:	00050513          	mv	a0,a0
    return result;
}
    800020bc:	0005051b          	sext.w	a0,a0
    800020c0:	00813403          	ld	s0,8(sp)
    800020c4:	01010113          	addi	sp,sp,16
    800020c8:	00008067          	ret

00000000800020cc <_Z9sem_closeP4_sem>:


int sem_close(sem_t handle)
{
    800020cc:	ff010113          	addi	sp,sp,-16
    800020d0:	00813423          	sd	s0,8(sp)
    800020d4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    800020d8:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    800020dc:	02200513          	li	a0,34

    __asm__ volatile("ecall");
    800020e0:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800020e4:	00050513          	mv	a0,a0
    return result;
}
    800020e8:	0005051b          	sext.w	a0,a0
    800020ec:	00813403          	ld	s0,8(sp)
    800020f0:	01010113          	addi	sp,sp,16
    800020f4:	00008067          	ret

00000000800020f8 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id)
{
    800020f8:	ff010113          	addi	sp,sp,-16
    800020fc:	00813423          	sd	s0,8(sp)
    80002100:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    80002104:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    80002108:	02300513          	li	a0,35

    __asm__ volatile("ecall");
    8000210c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002110:	00050513          	mv	a0,a0
    return result;
}
    80002114:	0005051b          	sext.w	a0,a0
    80002118:	00813403          	ld	s0,8(sp)
    8000211c:	01010113          	addi	sp,sp,16
    80002120:	00008067          	ret

0000000080002124 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id)
{
    80002124:	ff010113          	addi	sp,sp,-16
    80002128:	00813423          	sd	s0,8(sp)
    8000212c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    80002130:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    80002134:	02400513          	li	a0,36

    __asm__ volatile("ecall");
    80002138:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000213c:	00050513          	mv	a0,a0
    return result;
}
    80002140:	0005051b          	sext.w	a0,a0
    80002144:	00813403          	ld	s0,8(sp)
    80002148:	01010113          	addi	sp,sp,16
    8000214c:	00008067          	ret

0000000080002150 <_Z10time_sleepm>:

int time_sleep(uint64 time)
{
    80002150:	ff010113          	addi	sp,sp,-16
    80002154:	00813423          	sd	s0,8(sp)
    80002158:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)time));
    8000215c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    80002160:	03100513          	li	a0,49

    __asm__ volatile("ecall");
    80002164:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002168:	00050513          	mv	a0,a0
    return result;
}
    8000216c:	0005051b          	sext.w	a0,a0
    80002170:	00813403          	ld	s0,8(sp)
    80002174:	01010113          	addi	sp,sp,16
    80002178:	00008067          	ret

000000008000217c <_Z12thread_startPv>:

int thread_start(void* p)
{
    8000217c:	ff010113          	addi	sp,sp,-16
    80002180:	00813423          	sd	s0,8(sp)
    80002184:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)p));
    80002188:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x15");
    8000218c:	01500513          	li	a0,21

    __asm__ volatile("ecall");
    80002190:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002194:	00050513          	mv	a0,a0
    return result;
}
    80002198:	0005051b          	sext.w	a0,a0
    8000219c:	00813403          	ld	s0,8(sp)
    800021a0:	01010113          	addi	sp,sp,16
    800021a4:	00008067          	ret

00000000800021a8 <_Z15thread_make_pcbPP7_threadPFvPvES2_>:

int thread_make_pcb(thread_t* handle, void(*start_routine)(void*), void *arg)
{
    800021a8:	fd010113          	addi	sp,sp,-48
    800021ac:	02113423          	sd	ra,40(sp)
    800021b0:	02813023          	sd	s0,32(sp)
    800021b4:	00913c23          	sd	s1,24(sp)
    800021b8:	01213823          	sd	s2,16(sp)
    800021bc:	01313423          	sd	s3,8(sp)
    800021c0:	03010413          	addi	s0,sp,48
    800021c4:	00050493          	mv	s1,a0
    800021c8:	00058913          	mv	s2,a1
    800021cc:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)arg;
    uint64 opLocal = 0x14;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    800021d0:	00001537          	lui	a0,0x1
    800021d4:	00000097          	auipc	ra,0x0
    800021d8:	d9c080e7          	jalr	-612(ra) # 80001f70 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == 0)
    800021dc:	04050263          	beqz	a0,80002220 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    800021e0:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    800021e4:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    800021e8:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    800021ec:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    800021f0:	01400793          	li	a5,20
    800021f4:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800021f8:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800021fc:	00050513          	mv	a0,a0
    return result;
    80002200:	0005051b          	sext.w	a0,a0
}
    80002204:	02813083          	ld	ra,40(sp)
    80002208:	02013403          	ld	s0,32(sp)
    8000220c:	01813483          	ld	s1,24(sp)
    80002210:	01013903          	ld	s2,16(sp)
    80002214:	00813983          	ld	s3,8(sp)
    80002218:	03010113          	addi	sp,sp,48
    8000221c:	00008067          	ret
        return -1;
    80002220:	fff00513          	li	a0,-1
    80002224:	fe1ff06f          	j	80002204 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x5c>

0000000080002228 <_Z4getcv>:

char getc()
{
    80002228:	ff010113          	addi	sp,sp,-16
    8000222c:	00813423          	sd	s0,8(sp)
    80002230:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    80002234:	04100513          	li	a0,65

    __asm__ volatile("ecall");
    80002238:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000223c:	00050513          	mv	a0,a0
    return (char)result;
}
    80002240:	0ff57513          	andi	a0,a0,255
    80002244:	00813403          	ld	s0,8(sp)
    80002248:	01010113          	addi	sp,sp,16
    8000224c:	00008067          	ret

0000000080002250 <_Z4putcc>:

void putc(char c)
{
    80002250:	ff010113          	addi	sp,sp,-16
    80002254:	00813423          	sd	s0,8(sp)
    80002258:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)c));
    8000225c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    80002260:	04200513          	li	a0,66
    __asm__ volatile("ecall");
    80002264:	00000073          	ecall
}
    80002268:	00813403          	ld	s0,8(sp)
    8000226c:	01010113          	addi	sp,sp,16
    80002270:	00008067          	ret

0000000080002274 <_Z20sysCallGetCharOutputv>:

char sysCallGetCharOutput()
{
    80002274:	ff010113          	addi	sp,sp,-16
    80002278:	00813423          	sd	s0,8(sp)
    8000227c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x43");
    80002280:	04300513          	li	a0,67

    __asm__ volatile("ecall");
    80002284:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002288:	00050513          	mv	a0,a0
    return (char)result;
}
    8000228c:	0ff57513          	andi	a0,a0,255
    80002290:	00813403          	ld	s0,8(sp)
    80002294:	01010113          	addi	sp,sp,16
    80002298:	00008067          	ret

000000008000229c <_Z17thread_delete_pcbP7_thread>:

int thread_delete_pcb(thread_t handle)
{
    8000229c:	ff010113          	addi	sp,sp,-16
    800022a0:	00813423          	sd	s0,8(sp)
    800022a4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    800022a8:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x16");
    800022ac:	01600513          	li	a0,22
    __asm__ volatile("ecall");
    800022b0:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800022b4:	00050513          	mv	a0,a0
    return (char)result;
}
    800022b8:	0ff57513          	andi	a0,a0,255
    800022bc:	00813403          	ld	s0,8(sp)
    800022c0:	01010113          	addi	sp,sp,16
    800022c4:	00008067          	ret

00000000800022c8 <_ZN7_threaddlEPv>:
//

#include "../h/_thread.hpp"
#include "../h/syscall_c.hpp"

void _thread::operator delete(void *p) {
    800022c8:	ff010113          	addi	sp,sp,-16
    800022cc:	00113423          	sd	ra,8(sp)
    800022d0:	00813023          	sd	s0,0(sp)
    800022d4:	01010413          	addi	s0,sp,16
    thread_delete_pcb((thread_t)p);
    800022d8:	00000097          	auipc	ra,0x0
    800022dc:	fc4080e7          	jalr	-60(ra) # 8000229c <_Z17thread_delete_pcbP7_thread>
    800022e0:	00813083          	ld	ra,8(sp)
    800022e4:	00013403          	ld	s0,0(sp)
    800022e8:	01010113          	addi	sp,sp,16
    800022ec:	00008067          	ret

00000000800022f0 <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    800022f0:	ff010113          	addi	sp,sp,-16
    800022f4:	00113423          	sd	ra,8(sp)
    800022f8:	00813023          	sd	s0,0(sp)
    800022fc:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80002300:	00002097          	auipc	ra,0x2
    80002304:	db8080e7          	jalr	-584(ra) # 800040b8 <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    80002308:	00008797          	auipc	a5,0x8
    8000230c:	5c07b783          	ld	a5,1472(a5) # 8000a8c8 <_ZN3PCB7runningE>
    80002310:	0287b703          	ld	a4,40(a5)
    80002314:	0307b503          	ld	a0,48(a5)
    80002318:	000700e7          	jalr	a4

    thread_exit();
    8000231c:	00000097          	auipc	ra,0x0
    80002320:	d50080e7          	jalr	-688(ra) # 8000206c <_Z11thread_exitv>
}
    80002324:	00813083          	ld	ra,8(sp)
    80002328:	00013403          	ld	s0,0(sp)
    8000232c:	01010113          	addi	sp,sp,16
    80002330:	00008067          	ret

0000000080002334 <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    80002334:	ff010113          	addi	sp,sp,-16
    80002338:	00813423          	sd	s0,8(sp)
    8000233c:	01010413          	addi	s0,sp,16
    })
    80002340:	00050023          	sb	zero,0(a0) # 1000 <_entry-0x7ffff000>
    80002344:	00e53c23          	sd	a4,24(a0)
    80002348:	02053023          	sd	zero,32(a0)
    8000234c:	02b53423          	sd	a1,40(a0)
    80002350:	02c53823          	sd	a2,48(a0)
    80002354:	02d53c23          	sd	a3,56(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    80002358:	000017b7          	lui	a5,0x1
    8000235c:	00f686b3          	add	a3,a3,a5
    })
    80002360:	04d53423          	sd	a3,72(a0)
    80002364:	00000797          	auipc	a5,0x0
    80002368:	f8c78793          	addi	a5,a5,-116 # 800022f0 <_ZN3PCB6runnerEv>
    8000236c:	04f53823          	sd	a5,80(a0)
    80002370:	04050c23          	sb	zero,88(a0)
    nextPCB = 0;
    80002374:	00053423          	sd	zero,8(a0)
}
    80002378:	00813403          	ld	s0,8(sp)
    8000237c:	01010113          	addi	sp,sp,16
    80002380:	00008067          	ret

0000000080002384 <_ZN3PCB5startEv>:
{
    80002384:	ff010113          	addi	sp,sp,-16
    80002388:	00113423          	sd	ra,8(sp)
    8000238c:	00813023          	sd	s0,0(sp)
    80002390:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80002394:	00001097          	auipc	ra,0x1
    80002398:	204080e7          	jalr	516(ra) # 80003598 <_ZN9Scheduler3putEP3PCB>
}
    8000239c:	00813083          	ld	ra,8(sp)
    800023a0:	00013403          	ld	s0,0(sp)
    800023a4:	01010113          	addi	sp,sp,16
    800023a8:	00008067          	ret

00000000800023ac <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    800023ac:	fe010113          	addi	sp,sp,-32
    800023b0:	00113c23          	sd	ra,24(sp)
    800023b4:	00813823          	sd	s0,16(sp)
    800023b8:	00913423          	sd	s1,8(sp)
    800023bc:	01213023          	sd	s2,0(sp)
    800023c0:	02010413          	addi	s0,sp,32
    PCB* old = running;
    800023c4:	00008497          	auipc	s1,0x8
    800023c8:	5044b483          	ld	s1,1284(s1) # 8000a8c8 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    800023cc:	0404a703          	lw	a4,64(s1)
    if(old->getState() == PCB::RUNNING)
    800023d0:	00100793          	li	a5,1
    800023d4:	04f70a63          	beq	a4,a5,80002428 <_ZN3PCB8dispatchEv+0x7c>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    800023d8:	00001097          	auipc	ra,0x1
    800023dc:	214080e7          	jalr	532(ra) # 800035ec <_ZN9Scheduler3getEv>
    800023e0:	00008917          	auipc	s2,0x8
    800023e4:	4e890913          	addi	s2,s2,1256 # 8000a8c8 <_ZN3PCB7runningE>
    800023e8:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    800023ec:	00100793          	li	a5,1
    800023f0:	04f52023          	sw	a5,64(a0)
    PCB::running->setState(PCB::RUNNING);

    Riscv::changePrivMode();
    800023f4:	00002097          	auipc	ra,0x2
    800023f8:	ddc080e7          	jalr	-548(ra) # 800041d0 <_ZN5Riscv14changePrivModeEv>

    PCB::contextSwitch(&old->context, &running->context);
    800023fc:	00093583          	ld	a1,0(s2)
    80002400:	04858593          	addi	a1,a1,72
    80002404:	04848513          	addi	a0,s1,72
    80002408:	fffff097          	auipc	ra,0xfffff
    8000240c:	e30080e7          	jalr	-464(ra) # 80001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    80002410:	01813083          	ld	ra,24(sp)
    80002414:	01013403          	ld	s0,16(sp)
    80002418:	00813483          	ld	s1,8(sp)
    8000241c:	00013903          	ld	s2,0(sp)
    80002420:	02010113          	addi	sp,sp,32
    80002424:	00008067          	ret
        Scheduler::put(old);
    80002428:	00048513          	mv	a0,s1
    8000242c:	00001097          	auipc	ra,0x1
    80002430:	16c080e7          	jalr	364(ra) # 80003598 <_ZN9Scheduler3putEP3PCB>
    80002434:	fa5ff06f          	j	800023d8 <_ZN3PCB8dispatchEv+0x2c>

0000000080002438 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    80002438:	ff010113          	addi	sp,sp,-16
    8000243c:	00113423          	sd	ra,8(sp)
    80002440:	00813023          	sd	s0,0(sp)
    80002444:	01010413          	addi	s0,sp,16
    return kmem_cache_alloc(Riscv::pcbCache);
    80002448:	00008797          	auipc	a5,0x8
    8000244c:	4207b783          	ld	a5,1056(a5) # 8000a868 <_GLOBAL_OFFSET_TABLE_+0x90>
    80002450:	0007b503          	ld	a0,0(a5)
    80002454:	fffff097          	auipc	ra,0xfffff
    80002458:	53c080e7          	jalr	1340(ra) # 80001990 <_Z16kmem_cache_allocP12kmem_cache_s>
    //return MemoryAllocator::kmalloc(size);
}
    8000245c:	00813083          	ld	ra,8(sp)
    80002460:	00013403          	ld	s0,0(sp)
    80002464:	01010113          	addi	sp,sp,16
    80002468:	00008067          	ret

000000008000246c <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    8000246c:	ff010113          	addi	sp,sp,-16
    80002470:	00113423          	sd	ra,8(sp)
    80002474:	00813023          	sd	s0,0(sp)
    80002478:	01010413          	addi	s0,sp,16
    8000247c:	00050593          	mv	a1,a0
    kmem_cache_free(Riscv::pcbCache, p);
    80002480:	00008797          	auipc	a5,0x8
    80002484:	3e87b783          	ld	a5,1000(a5) # 8000a868 <_GLOBAL_OFFSET_TABLE_+0x90>
    80002488:	0007b503          	ld	a0,0(a5)
    8000248c:	fffff097          	auipc	ra,0xfffff
    80002490:	694080e7          	jalr	1684(ra) # 80001b20 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    //MemoryAllocator::kfree(p);
}
    80002494:	00813083          	ld	ra,8(sp)
    80002498:	00013403          	ld	s0,0(sp)
    8000249c:	01010113          	addi	sp,sp,16
    800024a0:	00008067          	ret

00000000800024a4 <_ZN3PCBD1Ev>:

PCB::~PCB()
    800024a4:	ff010113          	addi	sp,sp,-16
    800024a8:	00113423          	sd	ra,8(sp)
    800024ac:	00813023          	sd	s0,0(sp)
    800024b0:	01010413          	addi	s0,sp,16
{
    MemoryAllocator::kfree(beginSP);
    800024b4:	03853503          	ld	a0,56(a0)
    800024b8:	00002097          	auipc	ra,0x2
    800024bc:	448080e7          	jalr	1096(ra) # 80004900 <_ZN15MemoryAllocator5kfreeEPv>
}
    800024c0:	00813083          	ld	ra,8(sp)
    800024c4:	00013403          	ld	s0,0(sp)
    800024c8:	01010113          	addi	sp,sp,16
    800024cc:	00008067          	ret

00000000800024d0 <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    800024d0:	fd010113          	addi	sp,sp,-48
    800024d4:	02113423          	sd	ra,40(sp)
    800024d8:	02813023          	sd	s0,32(sp)
    800024dc:	00913c23          	sd	s1,24(sp)
    800024e0:	01213823          	sd	s2,16(sp)
    800024e4:	01313423          	sd	s3,8(sp)
    800024e8:	01413023          	sd	s4,0(sp)
    800024ec:	03010413          	addi	s0,sp,48
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    800024f0:	06000513          	li	a0,96
    800024f4:	00000097          	auipc	ra,0x0
    800024f8:	f44080e7          	jalr	-188(ra) # 80002438 <_ZN3PCBnwEm>
    800024fc:	00050493          	mv	s1,a0
    80002500:	00000713          	li	a4,0
    80002504:	00000693          	li	a3,0
    80002508:	00000613          	li	a2,0
    8000250c:	00000593          	li	a1,0
    80002510:	00000097          	auipc	ra,0x0
    80002514:	e24080e7          	jalr	-476(ra) # 80002334 <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->systemThread = true;
    80002518:	00100793          	li	a5,1
    8000251c:	00f48023          	sb	a5,0(s1)
    PCB::running = mainSystem;
    80002520:	00008917          	auipc	s2,0x8
    80002524:	3a890913          	addi	s2,s2,936 # 8000a8c8 <_ZN3PCB7runningE>
    80002528:	00993023          	sd	s1,0(s2)
    8000252c:	00100a13          	li	s4,1
    80002530:	0544a023          	sw	s4,64(s1)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80002534:	00001537          	lui	a0,0x1
    80002538:	00002097          	auipc	ra,0x2
    8000253c:	364080e7          	jalr	868(ra) # 8000489c <_ZN15MemoryAllocator7kmallocEm>
    80002540:	00050993          	mv	s3,a0
    80002544:	06000513          	li	a0,96
    80002548:	00000097          	auipc	ra,0x0
    8000254c:	ef0080e7          	jalr	-272(ra) # 80002438 <_ZN3PCBnwEm>
    80002550:	00050493          	mv	s1,a0
    80002554:	00200713          	li	a4,2
    80002558:	00098693          	mv	a3,s3
    8000255c:	00000613          	li	a2,0
    80002560:	00008597          	auipc	a1,0x8
    80002564:	2d05b583          	ld	a1,720(a1) # 8000a830 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002568:	00000097          	auipc	ra,0x0
    8000256c:	dcc080e7          	jalr	-564(ra) # 80002334 <_ZN3PCBC1EPFvPvES0_S0_m>
    80002570:	00993423          	sd	s1,8(s2)
    PCB::consolePCB->systemThread = true;
    80002574:	01448023          	sb	s4,0(s1)
    PCB::consolePCB->start();
    80002578:	00893503          	ld	a0,8(s2)
    8000257c:	00000097          	auipc	ra,0x0
    80002580:	e08080e7          	jalr	-504(ra) # 80002384 <_ZN3PCB5startEv>
    PCB::userPCB = new PCB(&Riscv::userMainWrapper, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80002584:	00001537          	lui	a0,0x1
    80002588:	00002097          	auipc	ra,0x2
    8000258c:	314080e7          	jalr	788(ra) # 8000489c <_ZN15MemoryAllocator7kmallocEm>
    80002590:	00050993          	mv	s3,a0
    80002594:	06000513          	li	a0,96
    80002598:	00000097          	auipc	ra,0x0
    8000259c:	ea0080e7          	jalr	-352(ra) # 80002438 <_ZN3PCBnwEm>
    800025a0:	00050493          	mv	s1,a0
    800025a4:	00200713          	li	a4,2
    800025a8:	00098693          	mv	a3,s3
    800025ac:	00000613          	li	a2,0
    800025b0:	00008597          	auipc	a1,0x8
    800025b4:	2b05b583          	ld	a1,688(a1) # 8000a860 <_GLOBAL_OFFSET_TABLE_+0x88>
    800025b8:	00000097          	auipc	ra,0x0
    800025bc:	d7c080e7          	jalr	-644(ra) # 80002334 <_ZN3PCBC1EPFvPvES0_S0_m>
    800025c0:	00993823          	sd	s1,16(s2)
    PCB::userPCB->start();
    800025c4:	00048513          	mv	a0,s1
    800025c8:	00000097          	auipc	ra,0x0
    800025cc:	dbc080e7          	jalr	-580(ra) # 80002384 <_ZN3PCB5startEv>
}
    800025d0:	02813083          	ld	ra,40(sp)
    800025d4:	02013403          	ld	s0,32(sp)
    800025d8:	01813483          	ld	s1,24(sp)
    800025dc:	01013903          	ld	s2,16(sp)
    800025e0:	00813983          	ld	s3,8(sp)
    800025e4:	00013a03          	ld	s4,0(sp)
    800025e8:	03010113          	addi	sp,sp,48
    800025ec:	00008067          	ret

00000000800025f0 <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    800025f0:	ff010113          	addi	sp,sp,-16
    800025f4:	00813423          	sd	s0,8(sp)
    800025f8:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    800025fc:	04052503          	lw	a0,64(a0) # 1040 <_entry-0x7fffefc0>
    80002600:	ffd50513          	addi	a0,a0,-3
}
    80002604:	00153513          	seqz	a0,a0
    80002608:	00813403          	ld	s0,8(sp)
    8000260c:	01010113          	addi	sp,sp,16
    80002610:	00008067          	ret

0000000080002614 <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    80002614:	ff010113          	addi	sp,sp,-16
    80002618:	00113423          	sd	ra,8(sp)
    8000261c:	00813023          	sd	s0,0(sp)
    80002620:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    80002624:	00008797          	auipc	a5,0x8
    80002628:	2a478793          	addi	a5,a5,676 # 8000a8c8 <_ZN3PCB7runningE>
    8000262c:	0007bc23          	sd	zero,24(a5)
    PCB::running->setState(PCB::FINISHED);
    80002630:	0007b783          	ld	a5,0(a5)
    80002634:	00300713          	li	a4,3
    80002638:	04e7a023          	sw	a4,64(a5)
    PCB::dispatch();
    8000263c:	00000097          	auipc	ra,0x0
    80002640:	d70080e7          	jalr	-656(ra) # 800023ac <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    80002644:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002648:	00002097          	auipc	ra,0x2
    8000264c:	b50080e7          	jalr	-1200(ra) # 80004198 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002650:	00813083          	ld	ra,8(sp)
    80002654:	00013403          	ld	s0,0(sp)
    80002658:	01010113          	addi	sp,sp,16
    8000265c:	00008067          	ret

0000000080002660 <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    80002660:	ff010113          	addi	sp,sp,-16
    80002664:	00113423          	sd	ra,8(sp)
    80002668:	00813023          	sd	s0,0(sp)
    8000266c:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    80002670:	00008797          	auipc	a5,0x8
    80002674:	2607b823          	sd	zero,624(a5) # 8000a8e0 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    80002678:	00000097          	auipc	ra,0x0
    8000267c:	d34080e7          	jalr	-716(ra) # 800023ac <_ZN3PCB8dispatchEv>
}
    80002680:	00813083          	ld	ra,8(sp)
    80002684:	00013403          	ld	s0,0(sp)
    80002688:	01010113          	addi	sp,sp,16
    8000268c:	00008067          	ret

0000000080002690 <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    80002690:	ff010113          	addi	sp,sp,-16
    80002694:	00113423          	sd	ra,8(sp)
    80002698:	00813023          	sd	s0,0(sp)
    8000269c:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    800026a0:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    800026a4:	00008717          	auipc	a4,0x8
    800026a8:	22470713          	addi	a4,a4,548 # 8000a8c8 <_ZN3PCB7runningE>
    800026ac:	00073c23          	sd	zero,24(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    800026b0:	00073703          	ld	a4,0(a4)
    800026b4:	00008697          	auipc	a3,0x8
    800026b8:	1746b683          	ld	a3,372(a3) # 8000a828 <_GLOBAL_OFFSET_TABLE_+0x50>
    800026bc:	0006b683          	ld	a3,0(a3)
    800026c0:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    800026c4:	02f73023          	sd	a5,32(a4)
    SleepPCBList::insertSleepingPCB();
    800026c8:	00001097          	auipc	ra,0x1
    800026cc:	d54080e7          	jalr	-684(ra) # 8000341c <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    800026d0:	00000097          	auipc	ra,0x0
    800026d4:	cdc080e7          	jalr	-804(ra) # 800023ac <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    800026d8:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800026dc:	00002097          	auipc	ra,0x2
    800026e0:	abc080e7          	jalr	-1348(ra) # 80004198 <_ZN5Riscv13w_a0_sscratchEv>
}
    800026e4:	00813083          	ld	ra,8(sp)
    800026e8:	00013403          	ld	s0,0(sp)
    800026ec:	01010113          	addi	sp,sp,16
    800026f0:	00008067          	ret

00000000800026f4 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    800026f4:	fd010113          	addi	sp,sp,-48
    800026f8:	02113423          	sd	ra,40(sp)
    800026fc:	02813023          	sd	s0,32(sp)
    80002700:	00913c23          	sd	s1,24(sp)
    80002704:	01213823          	sd	s2,16(sp)
    80002708:	01313423          	sd	s3,8(sp)
    8000270c:	01413023          	sd	s4,0(sp)
    80002710:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002714:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002718:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    8000271c:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002720:	06000513          	li	a0,96
    80002724:	00000097          	auipc	ra,0x0
    80002728:	d14080e7          	jalr	-748(ra) # 80002438 <_ZN3PCBnwEm>
    8000272c:	00050493          	mv	s1,a0
    80002730:	00200713          	li	a4,2
    80002734:	00008697          	auipc	a3,0x8
    80002738:	1b46b683          	ld	a3,436(a3) # 8000a8e8 <_ZN3PCB10savedRegA4E>
    8000273c:	000a0613          	mv	a2,s4
    80002740:	00098593          	mv	a1,s3
    80002744:	00000097          	auipc	ra,0x0
    80002748:	bf0080e7          	jalr	-1040(ra) # 80002334 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    8000274c:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002750:	02048e63          	beqz	s1,8000278c <_ZN3PCB19threadCreateHandlerEv+0x98>
            __asm__ volatile("li a0, 0xffffffffffffffff");
    else
    {
        newPCB->start();
    80002754:	00048513          	mv	a0,s1
    80002758:	00000097          	auipc	ra,0x0
    8000275c:	c2c080e7          	jalr	-980(ra) # 80002384 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002760:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80002764:	00002097          	auipc	ra,0x2
    80002768:	a34080e7          	jalr	-1484(ra) # 80004198 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000276c:	02813083          	ld	ra,40(sp)
    80002770:	02013403          	ld	s0,32(sp)
    80002774:	01813483          	ld	s1,24(sp)
    80002778:	01013903          	ld	s2,16(sp)
    8000277c:	00813983          	ld	s3,8(sp)
    80002780:	00013a03          	ld	s4,0(sp)
    80002784:	03010113          	addi	sp,sp,48
    80002788:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    8000278c:	fff00513          	li	a0,-1
    80002790:	fd5ff06f          	j	80002764 <_ZN3PCB19threadCreateHandlerEv+0x70>

0000000080002794 <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    80002794:	ff010113          	addi	sp,sp,-16
    80002798:	00113423          	sd	ra,8(sp)
    8000279c:	00813023          	sd	s0,0(sp)
    800027a0:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    800027a4:	00058513          	mv	a0,a1
    if(pcb != 0)
    800027a8:	02050463          	beqz	a0,800027d0 <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    800027ac:	00000097          	auipc	ra,0x0
    800027b0:	bd8080e7          	jalr	-1064(ra) # 80002384 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    800027b4:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0xffffffffffffffff");
    }
    Riscv::w_a0_sscratch();
    800027b8:	00002097          	auipc	ra,0x2
    800027bc:	9e0080e7          	jalr	-1568(ra) # 80004198 <_ZN5Riscv13w_a0_sscratchEv>
}
    800027c0:	00813083          	ld	ra,8(sp)
    800027c4:	00013403          	ld	s0,0(sp)
    800027c8:	01010113          	addi	sp,sp,16
    800027cc:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    800027d0:	fff00513          	li	a0,-1
    800027d4:	fe5ff06f          	j	800027b8 <_ZN3PCB18threadStartHandlerEv+0x24>

00000000800027d8 <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    800027d8:	fd010113          	addi	sp,sp,-48
    800027dc:	02113423          	sd	ra,40(sp)
    800027e0:	02813023          	sd	s0,32(sp)
    800027e4:	00913c23          	sd	s1,24(sp)
    800027e8:	01213823          	sd	s2,16(sp)
    800027ec:	01313423          	sd	s3,8(sp)
    800027f0:	01413023          	sd	s4,0(sp)
    800027f4:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    800027f8:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    800027fc:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002800:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002804:	06000513          	li	a0,96
    80002808:	00000097          	auipc	ra,0x0
    8000280c:	c30080e7          	jalr	-976(ra) # 80002438 <_ZN3PCBnwEm>
    80002810:	00050493          	mv	s1,a0
    80002814:	00200713          	li	a4,2
    80002818:	00008697          	auipc	a3,0x8
    8000281c:	0d06b683          	ld	a3,208(a3) # 8000a8e8 <_ZN3PCB10savedRegA4E>
    80002820:	000a0613          	mv	a2,s4
    80002824:	00098593          	mv	a1,s3
    80002828:	00000097          	auipc	ra,0x0
    8000282c:	b0c080e7          	jalr	-1268(ra) # 80002334 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002830:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002834:	02048863          	beqz	s1,80002864 <_ZN3PCB20threadMakePCBHandlerEv+0x8c>
        __asm__ volatile("li a0, 0xffffffffffffffff");
    else
        __asm__ volatile("li a0, 0");
    80002838:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    8000283c:	00002097          	auipc	ra,0x2
    80002840:	95c080e7          	jalr	-1700(ra) # 80004198 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002844:	02813083          	ld	ra,40(sp)
    80002848:	02013403          	ld	s0,32(sp)
    8000284c:	01813483          	ld	s1,24(sp)
    80002850:	01013903          	ld	s2,16(sp)
    80002854:	00813983          	ld	s3,8(sp)
    80002858:	00013a03          	ld	s4,0(sp)
    8000285c:	03010113          	addi	sp,sp,48
    80002860:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002864:	fff00513          	li	a0,-1
    80002868:	fd5ff06f          	j	8000283c <_ZN3PCB20threadMakePCBHandlerEv+0x64>

000000008000286c <_ZN3PCB19threadDelPCBHandlerEv>:

void PCB::threadDelPCBHandler()
{
    8000286c:	fe010113          	addi	sp,sp,-32
    80002870:	00113c23          	sd	ra,24(sp)
    80002874:	00813823          	sd	s0,16(sp)
    80002878:	00913423          	sd	s1,8(sp)
    8000287c:	02010413          	addi	s0,sp,32
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002880:	00058493          	mv	s1,a1
    if(pcb != 0)
    80002884:	02048e63          	beqz	s1,800028c0 <_ZN3PCB19threadDelPCBHandlerEv+0x54>
    {
        delete pcb;
    80002888:	00048513          	mv	a0,s1
    8000288c:	00000097          	auipc	ra,0x0
    80002890:	c18080e7          	jalr	-1000(ra) # 800024a4 <_ZN3PCBD1Ev>
    80002894:	00048513          	mv	a0,s1
    80002898:	00000097          	auipc	ra,0x0
    8000289c:	bd4080e7          	jalr	-1068(ra) # 8000246c <_ZN3PCBdlEPv>
        __asm__ volatile("li a0, 0x0");
    800028a0:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x1");
    }
    Riscv::w_a0_sscratch();
    800028a4:	00002097          	auipc	ra,0x2
    800028a8:	8f4080e7          	jalr	-1804(ra) # 80004198 <_ZN5Riscv13w_a0_sscratchEv>
}
    800028ac:	01813083          	ld	ra,24(sp)
    800028b0:	01013403          	ld	s0,16(sp)
    800028b4:	00813483          	ld	s1,8(sp)
    800028b8:	02010113          	addi	sp,sp,32
    800028bc:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    800028c0:	00100513          	li	a0,1
    800028c4:	fe1ff06f          	j	800028a4 <_ZN3PCB19threadDelPCBHandlerEv+0x38>

00000000800028c8 <_Z12getBlockAddrm>:
    size_t level = getDeg2Ceil(numOfBlocks);
    addBlocks(buddy, addr, level); //adds free blocks
}

size_t getBlockAddr(size_t addr)
{
    800028c8:	ff010113          	addi	sp,sp,-16
    800028cc:	00813423          	sd	s0,8(sp)
    800028d0:	01010413          	addi	s0,sp,16
    size_t mask = ((size_t)-1) << BLOCK_SIZE_POWER_2;
    return addr & mask;
}
    800028d4:	fffff7b7          	lui	a5,0xfffff
    800028d8:	00f57533          	and	a0,a0,a5
    800028dc:	00813403          	ld	s0,8(sp)
    800028e0:	01010113          	addi	sp,sp,16
    800028e4:	00008067          	ret

00000000800028e8 <_Z16getNextBlockAddrm>:
size_t getNextBlockAddr(size_t addr)
{
    800028e8:	ff010113          	addi	sp,sp,-16
    800028ec:	00113423          	sd	ra,8(sp)
    800028f0:	00813023          	sd	s0,0(sp)
    800028f4:	01010413          	addi	s0,sp,16
    size_t currBlock = getBlockAddr(addr);
    800028f8:	00000097          	auipc	ra,0x0
    800028fc:	fd0080e7          	jalr	-48(ra) # 800028c8 <_Z12getBlockAddrm>
    return currBlock + BLOCK_SIZE;
}
    80002900:	000017b7          	lui	a5,0x1
    80002904:	00f50533          	add	a0,a0,a5
    80002908:	00813083          	ld	ra,8(sp)
    8000290c:	00013403          	ld	s0,0(sp)
    80002910:	01010113          	addi	sp,sp,16
    80002914:	00008067          	ret

0000000080002918 <_Z12getDeg2Floorm>:

size_t getDeg2Floor(size_t num)
{
    80002918:	ff010113          	addi	sp,sp,-16
    8000291c:	00813423          	sd	s0,8(sp)
    80002920:	01010413          	addi	s0,sp,16
    size_t x = 1;
    size_t deg = 0;
    80002924:	00000713          	li	a4,0
    size_t x = 1;
    80002928:	00100793          	li	a5,1
    while(x <= num)
    8000292c:	00f56863          	bltu	a0,a5,8000293c <_Z12getDeg2Floorm+0x24>
    {
        deg++;
    80002930:	00170713          	addi	a4,a4,1
        x<<=1;
    80002934:	00179793          	slli	a5,a5,0x1
    while(x <= num)
    80002938:	ff5ff06f          	j	8000292c <_Z12getDeg2Floorm+0x14>
    }
    return deg - 1;
}
    8000293c:	fff70513          	addi	a0,a4,-1
    80002940:	00813403          	ld	s0,8(sp)
    80002944:	01010113          	addi	sp,sp,16
    80002948:	00008067          	ret

000000008000294c <_Z11getDeg2Ceilm>:

size_t getDeg2Ceil(size_t num)
{
    8000294c:	ff010113          	addi	sp,sp,-16
    80002950:	00813423          	sd	s0,8(sp)
    80002954:	01010413          	addi	s0,sp,16
    80002958:	00050713          	mv	a4,a0
    size_t x = 1;
    size_t deg = 0;
    8000295c:	00000513          	li	a0,0
    size_t x = 1;
    80002960:	00100793          	li	a5,1
    while(x < num)
    80002964:	00e7f863          	bgeu	a5,a4,80002974 <_Z11getDeg2Ceilm+0x28>
    {
        deg++;
    80002968:	00150513          	addi	a0,a0,1
        x<<=1;
    8000296c:	00179793          	slli	a5,a5,0x1
    while(x < num)
    80002970:	ff5ff06f          	j	80002964 <_Z11getDeg2Ceilm+0x18>
    }
    return deg;
}
    80002974:	00813403          	ld	s0,8(sp)
    80002978:	01010113          	addi	sp,sp,16
    8000297c:	00008067          	ret

0000000080002980 <_Z15addBlockToLevelP14buddyAllocatorPvm>:
    addBlockToLevel(buddy, addr, level);
}

//adds free block to level
void addBlockToLevel(buddyAllocator* buddy, void* addr, size_t level)
{
    80002980:	ff010113          	addi	sp,sp,-16
    80002984:	00813423          	sd	s0,8(sp)
    80002988:	01010413          	addi	s0,sp,16
    buddyBlock* newBlock = (buddyBlock*)addr;
    newBlock->next = nullptr;
    8000298c:	0005b023          	sd	zero,0(a1)
    if(buddy->bucket[level].first == nullptr)
    80002990:	00260793          	addi	a5,a2,2
    80002994:	00479793          	slli	a5,a5,0x4
    80002998:	00f507b3          	add	a5,a0,a5
    8000299c:	0007b783          	ld	a5,0(a5) # 1000 <_entry-0x7ffff000>
    800029a0:	02078463          	beqz	a5,800029c8 <_Z15addBlockToLevelP14buddyAllocatorPvm+0x48>
    {
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    }
    else
    {
        buddy->bucket[level].last->next = newBlock;
    800029a4:	00260613          	addi	a2,a2,2
    800029a8:	00461613          	slli	a2,a2,0x4
    800029ac:	00c50633          	add	a2,a0,a2
    800029b0:	00863783          	ld	a5,8(a2)
    800029b4:	00b7b023          	sd	a1,0(a5)
        buddy->bucket[level].last = newBlock;
    800029b8:	00b63423          	sd	a1,8(a2)
    }
}
    800029bc:	00813403          	ld	s0,8(sp)
    800029c0:	01010113          	addi	sp,sp,16
    800029c4:	00008067          	ret
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    800029c8:	00260613          	addi	a2,a2,2
    800029cc:	00461613          	slli	a2,a2,0x4
    800029d0:	00c50633          	add	a2,a0,a2
    800029d4:	00b63423          	sd	a1,8(a2)
    800029d8:	00b63023          	sd	a1,0(a2)
    800029dc:	fe1ff06f          	j	800029bc <_Z15addBlockToLevelP14buddyAllocatorPvm+0x3c>

00000000800029e0 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>:

size_t getBuddyBlockAddr(buddyAllocator* buddy, void* addr, size_t level)
{
    800029e0:	ff010113          	addi	sp,sp,-16
    800029e4:	00813423          	sd	s0,8(sp)
    800029e8:	01010413          	addi	s0,sp,16
    size_t diff = BLOCK_SIZE << level;
    800029ec:	000017b7          	lui	a5,0x1
    800029f0:	00c7963b          	sllw	a2,a5,a2
    size_t off = (size_t)addr - (size_t)buddy->startAddr;
    800029f4:	00853783          	ld	a5,8(a0)
    800029f8:	40f587b3          	sub	a5,a1,a5
    if(diff & off)
    800029fc:	00f677b3          	and	a5,a2,a5
    80002a00:	00078a63          	beqz	a5,80002a14 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm+0x34>
        return (size_t)addr - diff;
    80002a04:	40c58533          	sub	a0,a1,a2
    else
        return (size_t)addr + diff;
}
    80002a08:	00813403          	ld	s0,8(sp)
    80002a0c:	01010113          	addi	sp,sp,16
    80002a10:	00008067          	ret
        return (size_t)addr + diff;
    80002a14:	00c58533          	add	a0,a1,a2
    80002a18:	ff1ff06f          	j	80002a08 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm+0x28>

0000000080002a1c <_Z5splitP14buddyAllocatorPvmmb>:
{
    80002a1c:	fd010113          	addi	sp,sp,-48
    80002a20:	02113423          	sd	ra,40(sp)
    80002a24:	02813023          	sd	s0,32(sp)
    80002a28:	00913c23          	sd	s1,24(sp)
    80002a2c:	01213823          	sd	s2,16(sp)
    80002a30:	01313423          	sd	s3,8(sp)
    80002a34:	01413023          	sd	s4,0(sp)
    80002a38:	03010413          	addi	s0,sp,48
    80002a3c:	00050913          	mv	s2,a0
    80002a40:	00058a13          	mv	s4,a1
    if(!splitMore)
    80002a44:	06070a63          	beqz	a4,80002ab8 <_Z5splitP14buddyAllocatorPvmmb+0x9c>
    80002a48:	00060993          	mv	s3,a2
        if(currLevel == finalLevel)
    80002a4c:	04c68663          	beq	a3,a2,80002a98 <_Z5splitP14buddyAllocatorPvmmb+0x7c>
        size_t buddyBlock = getBuddyBlockAddr(buddy, addr, currLevel - 1); // currLevel - 1 for next step
    80002a50:	fff68493          	addi	s1,a3,-1
    80002a54:	00048613          	mv	a2,s1
    80002a58:	00000097          	auipc	ra,0x0
    80002a5c:	f88080e7          	jalr	-120(ra) # 800029e0 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>
    80002a60:	00050593          	mv	a1,a0
        split(buddy, (void*)buddyBlock, finalLevel, currLevel - 1, false); // continue splitting
    80002a64:	00000713          	li	a4,0
    80002a68:	00048693          	mv	a3,s1
    80002a6c:	00098613          	mv	a2,s3
    80002a70:	00090513          	mv	a0,s2
    80002a74:	00000097          	auipc	ra,0x0
    80002a78:	fa8080e7          	jalr	-88(ra) # 80002a1c <_Z5splitP14buddyAllocatorPvmmb>
        split(buddy, addr, finalLevel, currLevel - 1, true); // continue splitting
    80002a7c:	00100713          	li	a4,1
    80002a80:	00048693          	mv	a3,s1
    80002a84:	00098613          	mv	a2,s3
    80002a88:	000a0593          	mv	a1,s4
    80002a8c:	00090513          	mv	a0,s2
    80002a90:	00000097          	auipc	ra,0x0
    80002a94:	f8c080e7          	jalr	-116(ra) # 80002a1c <_Z5splitP14buddyAllocatorPvmmb>
}
    80002a98:	02813083          	ld	ra,40(sp)
    80002a9c:	02013403          	ld	s0,32(sp)
    80002aa0:	01813483          	ld	s1,24(sp)
    80002aa4:	01013903          	ld	s2,16(sp)
    80002aa8:	00813983          	ld	s3,8(sp)
    80002aac:	00013a03          	ld	s4,0(sp)
    80002ab0:	03010113          	addi	sp,sp,48
    80002ab4:	00008067          	ret
        addBlockToLevel(buddy, addr, currLevel);
    80002ab8:	00068613          	mv	a2,a3
    80002abc:	00000097          	auipc	ra,0x0
    80002ac0:	ec4080e7          	jalr	-316(ra) # 80002980 <_Z15addBlockToLevelP14buddyAllocatorPvm>
    80002ac4:	fd5ff06f          	j	80002a98 <_Z5splitP14buddyAllocatorPvmmb+0x7c>

0000000080002ac8 <_Z11buddy_allocP14buddyAllocatorm>:
{
    80002ac8:	fe010113          	addi	sp,sp,-32
    80002acc:	00113c23          	sd	ra,24(sp)
    80002ad0:	00813823          	sd	s0,16(sp)
    80002ad4:	00913423          	sd	s1,8(sp)
    80002ad8:	01213023          	sd	s2,0(sp)
    80002adc:	02010413          	addi	s0,sp,32
    80002ae0:	00050493          	mv	s1,a0
    size_t level = getDeg2Ceil(numOfBlocks);
    80002ae4:	00058513          	mv	a0,a1
    80002ae8:	00000097          	auipc	ra,0x0
    80002aec:	e64080e7          	jalr	-412(ra) # 8000294c <_Z11getDeg2Ceilm>
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002af0:	00050693          	mv	a3,a0
    80002af4:	0184b783          	ld	a5,24(s1)
    80002af8:	06d7e463          	bltu	a5,a3,80002b60 <_Z11buddy_allocP14buddyAllocatorm+0x98>
        if(buddy->bucket[i].first != nullptr)
    80002afc:	00268793          	addi	a5,a3,2
    80002b00:	00479793          	slli	a5,a5,0x4
    80002b04:	00f487b3          	add	a5,s1,a5
    80002b08:	0007b903          	ld	s2,0(a5) # 1000 <_entry-0x7ffff000>
    80002b0c:	00091663          	bnez	s2,80002b18 <_Z11buddy_allocP14buddyAllocatorm+0x50>
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002b10:	00168693          	addi	a3,a3,1
    80002b14:	fe1ff06f          	j	80002af4 <_Z11buddy_allocP14buddyAllocatorm+0x2c>
            buddy->bucket[i].first = ret->next;
    80002b18:	00093703          	ld	a4,0(s2)
    80002b1c:	00268793          	addi	a5,a3,2
    80002b20:	00479793          	slli	a5,a5,0x4
    80002b24:	00f487b3          	add	a5,s1,a5
    80002b28:	00e7b023          	sd	a4,0(a5)
            if(buddy->bucket[i].first == nullptr)
    80002b2c:	02070063          	beqz	a4,80002b4c <_Z11buddy_allocP14buddyAllocatorm+0x84>
            split(buddy, (void*)ret, level, i, true);
    80002b30:	00100713          	li	a4,1
    80002b34:	00050613          	mv	a2,a0
    80002b38:	00090593          	mv	a1,s2
    80002b3c:	00048513          	mv	a0,s1
    80002b40:	00000097          	auipc	ra,0x0
    80002b44:	edc080e7          	jalr	-292(ra) # 80002a1c <_Z5splitP14buddyAllocatorPvmmb>
            return ret;
    80002b48:	01c0006f          	j	80002b64 <_Z11buddy_allocP14buddyAllocatorm+0x9c>
                buddy->bucket[i].last = nullptr;
    80002b4c:	00268793          	addi	a5,a3,2
    80002b50:	00479793          	slli	a5,a5,0x4
    80002b54:	00f487b3          	add	a5,s1,a5
    80002b58:	0007b423          	sd	zero,8(a5)
    80002b5c:	fd5ff06f          	j	80002b30 <_Z11buddy_allocP14buddyAllocatorm+0x68>
    return nullptr;
    80002b60:	00000913          	li	s2,0
}
    80002b64:	00090513          	mv	a0,s2
    80002b68:	01813083          	ld	ra,24(sp)
    80002b6c:	01013403          	ld	s0,16(sp)
    80002b70:	00813483          	ld	s1,8(sp)
    80002b74:	00013903          	ld	s2,0(sp)
    80002b78:	02010113          	addi	sp,sp,32
    80002b7c:	00008067          	ret

0000000080002b80 <_Z9addBlocksP14buddyAllocatorPvm>:
{
    80002b80:	fd010113          	addi	sp,sp,-48
    80002b84:	02113423          	sd	ra,40(sp)
    80002b88:	02813023          	sd	s0,32(sp)
    80002b8c:	00913c23          	sd	s1,24(sp)
    80002b90:	01213823          	sd	s2,16(sp)
    80002b94:	01313423          	sd	s3,8(sp)
    80002b98:	03010413          	addi	s0,sp,48
    80002b9c:	00050493          	mv	s1,a0
    80002ba0:	00058993          	mv	s3,a1
    80002ba4:	00060913          	mv	s2,a2
    if(level == buddy->maxLevel)
    80002ba8:	01853783          	ld	a5,24(a0)
    80002bac:	02c78a63          	beq	a5,a2,80002be0 <_Z9addBlocksP14buddyAllocatorPvm+0x60>
    size_t buddyBlockAddr = getBuddyBlockAddr(buddy,addr,level);
    80002bb0:	00000097          	auipc	ra,0x0
    80002bb4:	e30080e7          	jalr	-464(ra) # 800029e0 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>
    buddyBlock* curr = buddy->bucket[level].first;
    80002bb8:	00290793          	addi	a5,s2,2
    80002bbc:	00479793          	slli	a5,a5,0x4
    80002bc0:	00f487b3          	add	a5,s1,a5
    80002bc4:	0007b783          	ld	a5,0(a5)
    buddyBlock* prev = nullptr;
    80002bc8:	00000713          	li	a4,0
    while(curr != nullptr)
    80002bcc:	0a078e63          	beqz	a5,80002c88 <_Z9addBlocksP14buddyAllocatorPvm+0x108>
        if((size_t)curr == buddyBlockAddr)
    80002bd0:	00a78e63          	beq	a5,a0,80002bec <_Z9addBlocksP14buddyAllocatorPvm+0x6c>
        prev = curr;
    80002bd4:	00078713          	mv	a4,a5
        curr = curr->next;
    80002bd8:	0007b783          	ld	a5,0(a5)
    while(curr != nullptr)
    80002bdc:	ff1ff06f          	j	80002bcc <_Z9addBlocksP14buddyAllocatorPvm+0x4c>
        addBlockToLevel(buddy, addr, level);
    80002be0:	00000097          	auipc	ra,0x0
    80002be4:	da0080e7          	jalr	-608(ra) # 80002980 <_Z15addBlockToLevelP14buddyAllocatorPvm>
        return;
    80002be8:	0b40006f          	j	80002c9c <_Z9addBlocksP14buddyAllocatorPvm+0x11c>
            if(prev != nullptr)
    80002bec:	04070863          	beqz	a4,80002c3c <_Z9addBlocksP14buddyAllocatorPvm+0xbc>
                prev->next = curr->next;
    80002bf0:	0007b683          	ld	a3,0(a5)
    80002bf4:	00d73023          	sd	a3,0(a4)
                if(curr == buddy->bucket[level].last)
    80002bf8:	00290693          	addi	a3,s2,2
    80002bfc:	00469693          	slli	a3,a3,0x4
    80002c00:	00d486b3          	add	a3,s1,a3
    80002c04:	0086b683          	ld	a3,8(a3)
    80002c08:	02f68063          	beq	a3,a5,80002c28 <_Z9addBlocksP14buddyAllocatorPvm+0xa8>
            if((size_t)addr < buddyBlockAddr) addBlocks(buddy, addr, level + 1); //merge two chunks
    80002c0c:	06a9f263          	bgeu	s3,a0,80002c70 <_Z9addBlocksP14buddyAllocatorPvm+0xf0>
    80002c10:	00190613          	addi	a2,s2,1
    80002c14:	00098593          	mv	a1,s3
    80002c18:	00048513          	mv	a0,s1
    80002c1c:	00000097          	auipc	ra,0x0
    80002c20:	f64080e7          	jalr	-156(ra) # 80002b80 <_Z9addBlocksP14buddyAllocatorPvm>
    80002c24:	0780006f          	j	80002c9c <_Z9addBlocksP14buddyAllocatorPvm+0x11c>
                    buddy->bucket[level].last = prev;
    80002c28:	00290793          	addi	a5,s2,2
    80002c2c:	00479793          	slli	a5,a5,0x4
    80002c30:	00f487b3          	add	a5,s1,a5
    80002c34:	00e7b423          	sd	a4,8(a5)
    80002c38:	fd5ff06f          	j	80002c0c <_Z9addBlocksP14buddyAllocatorPvm+0x8c>
                if(curr->next == nullptr)
    80002c3c:	0007b703          	ld	a4,0(a5)
    80002c40:	00070c63          	beqz	a4,80002c58 <_Z9addBlocksP14buddyAllocatorPvm+0xd8>
                    buddy->bucket[level].first = curr->next;
    80002c44:	00290793          	addi	a5,s2,2
    80002c48:	00479793          	slli	a5,a5,0x4
    80002c4c:	00f487b3          	add	a5,s1,a5
    80002c50:	00e7b023          	sd	a4,0(a5)
    80002c54:	fb9ff06f          	j	80002c0c <_Z9addBlocksP14buddyAllocatorPvm+0x8c>
                    buddy->bucket[level].first = buddy->bucket[level].last = nullptr;
    80002c58:	00290793          	addi	a5,s2,2
    80002c5c:	00479793          	slli	a5,a5,0x4
    80002c60:	00f487b3          	add	a5,s1,a5
    80002c64:	0007b423          	sd	zero,8(a5)
    80002c68:	0007b023          	sd	zero,0(a5)
    80002c6c:	fa1ff06f          	j	80002c0c <_Z9addBlocksP14buddyAllocatorPvm+0x8c>
            else addBlocks(buddy, (void*)buddyBlockAddr, level + 1); //merge two chunks
    80002c70:	00190613          	addi	a2,s2,1
    80002c74:	00050593          	mv	a1,a0
    80002c78:	00048513          	mv	a0,s1
    80002c7c:	00000097          	auipc	ra,0x0
    80002c80:	f04080e7          	jalr	-252(ra) # 80002b80 <_Z9addBlocksP14buddyAllocatorPvm>
            return;
    80002c84:	0180006f          	j	80002c9c <_Z9addBlocksP14buddyAllocatorPvm+0x11c>
    addBlockToLevel(buddy, addr, level);
    80002c88:	00090613          	mv	a2,s2
    80002c8c:	00098593          	mv	a1,s3
    80002c90:	00048513          	mv	a0,s1
    80002c94:	00000097          	auipc	ra,0x0
    80002c98:	cec080e7          	jalr	-788(ra) # 80002980 <_Z15addBlockToLevelP14buddyAllocatorPvm>
}
    80002c9c:	02813083          	ld	ra,40(sp)
    80002ca0:	02013403          	ld	s0,32(sp)
    80002ca4:	01813483          	ld	s1,24(sp)
    80002ca8:	01013903          	ld	s2,16(sp)
    80002cac:	00813983          	ld	s3,8(sp)
    80002cb0:	03010113          	addi	sp,sp,48
    80002cb4:	00008067          	ret

0000000080002cb8 <_Z10buddy_initPvm>:
{
    80002cb8:	fd010113          	addi	sp,sp,-48
    80002cbc:	02113423          	sd	ra,40(sp)
    80002cc0:	02813023          	sd	s0,32(sp)
    80002cc4:	00913c23          	sd	s1,24(sp)
    80002cc8:	01213823          	sd	s2,16(sp)
    80002ccc:	01313423          	sd	s3,8(sp)
    80002cd0:	03010413          	addi	s0,sp,48
    80002cd4:	00058993          	mv	s3,a1
    size_t blockAddr = getBlockAddr((size_t)addr); //alling the address
    80002cd8:	00050493          	mv	s1,a0
    80002cdc:	00000097          	auipc	ra,0x0
    80002ce0:	bec080e7          	jalr	-1044(ra) # 800028c8 <_Z12getBlockAddrm>
    if((size_t)addr != blockAddr) // if start address not aligned
    80002ce4:	00a48a63          	beq	s1,a0,80002cf8 <_Z10buddy_initPvm+0x40>
        buddyAddr = getNextBlockAddr(blockAddr);
    80002ce8:	00000097          	auipc	ra,0x0
    80002cec:	c00080e7          	jalr	-1024(ra) # 800028e8 <_Z16getNextBlockAddrm>
    80002cf0:	00050493          	mv	s1,a0
        numOfBlocks--; //have to discard one block
    80002cf4:	fff98993          	addi	s3,s3,-1
    numOfBlocks--; // take one block for buddy metadata
    80002cf8:	fff98993          	addi	s3,s3,-1
    buddyAllocator* buddy = (buddyAllocator*)buddyAddr;
    80002cfc:	00048913          	mv	s2,s1
    buddy->startAddr = (void*)getNextBlockAddr(buddyAddr);
    80002d00:	00048513          	mv	a0,s1
    80002d04:	00000097          	auipc	ra,0x0
    80002d08:	be4080e7          	jalr	-1052(ra) # 800028e8 <_Z16getNextBlockAddrm>
    80002d0c:	00a4b423          	sd	a0,8(s1)
    buddy->numOfBlocks = numOfBlocks;
    80002d10:	0134b023          	sd	s3,0(s1)
    buddy->numOfFreeBlocks = numOfBlocks;
    80002d14:	0134b823          	sd	s3,16(s1)
    buddy->maxLevel = getDeg2Floor(numOfBlocks);
    80002d18:	00098513          	mv	a0,s3
    80002d1c:	00000097          	auipc	ra,0x0
    80002d20:	bfc080e7          	jalr	-1028(ra) # 80002918 <_Z12getDeg2Floorm>
    80002d24:	00a4bc23          	sd	a0,24(s1)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    80002d28:	00000713          	li	a4,0
    80002d2c:	02e56063          	bltu	a0,a4,80002d4c <_Z10buddy_initPvm+0x94>
        buddy->bucket[i].first = buddy->bucket[i].last = nullptr;
    80002d30:	00270793          	addi	a5,a4,2
    80002d34:	00479793          	slli	a5,a5,0x4
    80002d38:	00f907b3          	add	a5,s2,a5
    80002d3c:	0007b423          	sd	zero,8(a5)
    80002d40:	0007b023          	sd	zero,0(a5)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    80002d44:	00170713          	addi	a4,a4,1
    80002d48:	fe5ff06f          	j	80002d2c <_Z10buddy_initPvm+0x74>
    for(size_t i = 0;i < numOfBlocks;i++)
    80002d4c:	00000493          	li	s1,0
    80002d50:	0334f463          	bgeu	s1,s3,80002d78 <_Z10buddy_initPvm+0xc0>
        addBlocks(buddy, (block*)buddy->startAddr + i, 0);
    80002d54:	00893583          	ld	a1,8(s2)
    80002d58:	00c49793          	slli	a5,s1,0xc
    80002d5c:	00000613          	li	a2,0
    80002d60:	00f585b3          	add	a1,a1,a5
    80002d64:	00090513          	mv	a0,s2
    80002d68:	00000097          	auipc	ra,0x0
    80002d6c:	e18080e7          	jalr	-488(ra) # 80002b80 <_Z9addBlocksP14buddyAllocatorPvm>
    for(size_t i = 0;i < numOfBlocks;i++)
    80002d70:	00148493          	addi	s1,s1,1
    80002d74:	fddff06f          	j	80002d50 <_Z10buddy_initPvm+0x98>
}
    80002d78:	00090513          	mv	a0,s2
    80002d7c:	02813083          	ld	ra,40(sp)
    80002d80:	02013403          	ld	s0,32(sp)
    80002d84:	01813483          	ld	s1,24(sp)
    80002d88:	01013903          	ld	s2,16(sp)
    80002d8c:	00813983          	ld	s3,8(sp)
    80002d90:	03010113          	addi	sp,sp,48
    80002d94:	00008067          	ret

0000000080002d98 <_Z10buddy_freeP14buddyAllocatorPvm>:
{
    80002d98:	fe010113          	addi	sp,sp,-32
    80002d9c:	00113c23          	sd	ra,24(sp)
    80002da0:	00813823          	sd	s0,16(sp)
    80002da4:	00913423          	sd	s1,8(sp)
    80002da8:	01213023          	sd	s2,0(sp)
    80002dac:	02010413          	addi	s0,sp,32
    80002db0:	00050493          	mv	s1,a0
    80002db4:	00058913          	mv	s2,a1
    size_t level = getDeg2Ceil(numOfBlocks);
    80002db8:	00060513          	mv	a0,a2
    80002dbc:	00000097          	auipc	ra,0x0
    80002dc0:	b90080e7          	jalr	-1136(ra) # 8000294c <_Z11getDeg2Ceilm>
    80002dc4:	00050613          	mv	a2,a0
    addBlocks(buddy, addr, level); //adds free blocks
    80002dc8:	00090593          	mv	a1,s2
    80002dcc:	00048513          	mv	a0,s1
    80002dd0:	00000097          	auipc	ra,0x0
    80002dd4:	db0080e7          	jalr	-592(ra) # 80002b80 <_Z9addBlocksP14buddyAllocatorPvm>
}
    80002dd8:	01813083          	ld	ra,24(sp)
    80002ddc:	01013403          	ld	s0,16(sp)
    80002de0:	00813483          	ld	s1,8(sp)
    80002de4:	00013903          	ld	s2,0(sp)
    80002de8:	02010113          	addi	sp,sp,32
    80002dec:	00008067          	ret

0000000080002df0 <_Z14printBuddyInfoP14buddyAllocator>:

void printBuddyInfo(buddyAllocator* buddy)
{
    80002df0:	ff010113          	addi	sp,sp,-16
    80002df4:	00813423          	sd	s0,8(sp)
    80002df8:	01010413          	addi	s0,sp,16
    //KConsole::trapPrintString("Buddy info-------------------------------------------\n");
    //KConsole::trapPrintStringInt("Buddy starting address ", (size_t)buddy->startAddr, 16);
    //KConsole::trapPrintStringInt("Buddy number of blocks ", buddy->numOfBlocks);
    //TODO take care of numOfFreeBlocks
    //KConsole::trapPrintStringInt("Buddy number of free blocks ", buddy->numOfFreeBlocks);
    for(int i = buddy->maxLevel;i>=0;i--)
    80002dfc:	01852703          	lw	a4,24(a0)
    80002e00:	0080006f          	j	80002e08 <_Z14printBuddyInfoP14buddyAllocator+0x18>
    80002e04:	fff7071b          	addiw	a4,a4,-1
    80002e08:	02074063          	bltz	a4,80002e28 <_Z14printBuddyInfoP14buddyAllocator+0x38>
    {
        //KConsole::trapPrintStringInt("Level ",i);
        //KConsole::trapPrintString("Free blocks on this level\n");
        buddyBlock* curr = buddy->bucket[i].first;
    80002e0c:	00270793          	addi	a5,a4,2
    80002e10:	00479793          	slli	a5,a5,0x4
    80002e14:	00f507b3          	add	a5,a0,a5
    80002e18:	0007b783          	ld	a5,0(a5)
        while(curr != 0)
    80002e1c:	fe0784e3          	beqz	a5,80002e04 <_Z14printBuddyInfoP14buddyAllocator+0x14>
        {
            //KConsole::trapPrintInt((size_t)curr, 16);
            //KConsole::trapPrintString("\n");
            curr = curr->next;
    80002e20:	0007b783          	ld	a5,0(a5)
        while(curr != 0)
    80002e24:	ff9ff06f          	j	80002e1c <_Z14printBuddyInfoP14buddyAllocator+0x2c>
        }
    }
    //KConsole::trapPrintString("End of buddy info-------------------------------------------\n");
    80002e28:	00813403          	ld	s0,8(sp)
    80002e2c:	01010113          	addi	sp,sp,16
    80002e30:	00008067          	ret

0000000080002e34 <_ZN8KConsole10initializeEv>:
char KConsole::inputBuffer[bufferSize];
char KConsole::outputBuffer[bufferSize];
uint64 KConsole::pendingPutc = 0;

void KConsole::initialize()
{
    80002e34:	fe010113          	addi	sp,sp,-32
    80002e38:	00113c23          	sd	ra,24(sp)
    80002e3c:	00813823          	sd	s0,16(sp)
    80002e40:	00913423          	sd	s1,8(sp)
    80002e44:	01213023          	sd	s2,0(sp)
    80002e48:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80002e4c:	01800513          	li	a0,24
    80002e50:	00002097          	auipc	ra,0x2
    80002e54:	f00080e7          	jalr	-256(ra) # 80004d50 <_ZN10KSemaphorenwEm>
    80002e58:	00050493          	mv	s1,a0
    80002e5c:	00000593          	li	a1,0
    80002e60:	00002097          	auipc	ra,0x2
    80002e64:	c8c080e7          	jalr	-884(ra) # 80004aec <_ZN10KSemaphoreC1Ei>
    80002e68:	00008797          	auipc	a5,0x8
    80002e6c:	a897b423          	sd	s1,-1400(a5) # 8000a8f0 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80002e70:	01800513          	li	a0,24
    80002e74:	00002097          	auipc	ra,0x2
    80002e78:	edc080e7          	jalr	-292(ra) # 80004d50 <_ZN10KSemaphorenwEm>
    80002e7c:	00050493          	mv	s1,a0
    80002e80:	00000593          	li	a1,0
    80002e84:	00002097          	auipc	ra,0x2
    80002e88:	c68080e7          	jalr	-920(ra) # 80004aec <_ZN10KSemaphoreC1Ei>
    80002e8c:	00008797          	auipc	a5,0x8
    80002e90:	a697b623          	sd	s1,-1428(a5) # 8000a8f8 <_ZN8KConsole19hasCharactersOutputE>
}
    80002e94:	01813083          	ld	ra,24(sp)
    80002e98:	01013403          	ld	s0,16(sp)
    80002e9c:	00813483          	ld	s1,8(sp)
    80002ea0:	00013903          	ld	s2,0(sp)
    80002ea4:	02010113          	addi	sp,sp,32
    80002ea8:	00008067          	ret
    80002eac:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    80002eb0:	00048513          	mv	a0,s1
    80002eb4:	00002097          	auipc	ra,0x2
    80002eb8:	f48080e7          	jalr	-184(ra) # 80004dfc <_ZN10KSemaphoredlEPv>
    80002ebc:	00090513          	mv	a0,s2
    80002ec0:	0000d097          	auipc	ra,0xd
    80002ec4:	b98080e7          	jalr	-1128(ra) # 8000fa58 <_Unwind_Resume>
    80002ec8:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80002ecc:	00048513          	mv	a0,s1
    80002ed0:	00002097          	auipc	ra,0x2
    80002ed4:	f2c080e7          	jalr	-212(ra) # 80004dfc <_ZN10KSemaphoredlEPv>
    80002ed8:	00090513          	mv	a0,s2
    80002edc:	0000d097          	auipc	ra,0xd
    80002ee0:	b7c080e7          	jalr	-1156(ra) # 8000fa58 <_Unwind_Resume>

0000000080002ee4 <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    80002ee4:	00008697          	auipc	a3,0x8
    80002ee8:	a0c68693          	addi	a3,a3,-1524 # 8000a8f0 <_ZN8KConsole18hasCharactersInputE>
    80002eec:	0106b603          	ld	a2,16(a3)
    80002ef0:	00160793          	addi	a5,a2,1
    80002ef4:	00002737          	lui	a4,0x2
    80002ef8:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80002efc:	00e7f7b3          	and	a5,a5,a4
    80002f00:	0186b703          	ld	a4,24(a3)
    80002f04:	04e78263          	beq	a5,a4,80002f48 <_ZN8KConsole17putCharacterInputEc+0x64>
{
    80002f08:	ff010113          	addi	sp,sp,-16
    80002f0c:	00113423          	sd	ra,8(sp)
    80002f10:	00813023          	sd	s0,0(sp)
    80002f14:	01010413          	addi	s0,sp,16
        return;
    inputBuffer[inputTail] = c;
    80002f18:	0000a717          	auipc	a4,0xa
    80002f1c:	a1870713          	addi	a4,a4,-1512 # 8000c930 <_ZN8KConsole11inputBufferE>
    80002f20:	00c70633          	add	a2,a4,a2
    80002f24:	00a60023          	sb	a0,0(a2)
    inputTail = (inputTail+1)%bufferSize;
    80002f28:	00f6b823          	sd	a5,16(a3)
    hasCharactersInput->signal();
    80002f2c:	0006b503          	ld	a0,0(a3)
    80002f30:	00002097          	auipc	ra,0x2
    80002f34:	dd8080e7          	jalr	-552(ra) # 80004d08 <_ZN10KSemaphore6signalEv>
}
    80002f38:	00813083          	ld	ra,8(sp)
    80002f3c:	00013403          	ld	s0,0(sp)
    80002f40:	01010113          	addi	sp,sp,16
    80002f44:	00008067          	ret
    80002f48:	00008067          	ret

0000000080002f4c <_ZN8KConsole24getCharactersFromConsoleEv>:
    uint64 operation = *(uint8*)CONSOLE_STATUS;
    80002f4c:	00008797          	auipc	a5,0x8
    80002f50:	89c7b783          	ld	a5,-1892(a5) # 8000a7e8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002f54:	0007b783          	ld	a5,0(a5)
    80002f58:	0007c783          	lbu	a5,0(a5)
    if(operation & KConsole::STATUS_READ_MASK)
    80002f5c:	0017f793          	andi	a5,a5,1
    80002f60:	02078063          	beqz	a5,80002f80 <_ZN8KConsole24getCharactersFromConsoleEv+0x34>
        char c = *(uint8*)CONSOLE_TX_DATA;
    80002f64:	00008797          	auipc	a5,0x8
    80002f68:	8ac7b783          	ld	a5,-1876(a5) # 8000a810 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002f6c:	0007b783          	ld	a5,0(a5)
    80002f70:	0007c503          	lbu	a0,0(a5)
        if(KConsole::pendingGetc > 0)
    80002f74:	00008797          	auipc	a5,0x8
    80002f78:	99c7b783          	ld	a5,-1636(a5) # 8000a910 <_ZN8KConsole11pendingGetcE>
    80002f7c:	00079463          	bnez	a5,80002f84 <_ZN8KConsole24getCharactersFromConsoleEv+0x38>
    80002f80:	00008067          	ret
{
    80002f84:	ff010113          	addi	sp,sp,-16
    80002f88:	00113423          	sd	ra,8(sp)
    80002f8c:	00813023          	sd	s0,0(sp)
    80002f90:	01010413          	addi	s0,sp,16
            KConsole::pendingGetc--;
    80002f94:	fff78793          	addi	a5,a5,-1
    80002f98:	00008717          	auipc	a4,0x8
    80002f9c:	96f73c23          	sd	a5,-1672(a4) # 8000a910 <_ZN8KConsole11pendingGetcE>
            KConsole::putCharacterInput(c);
    80002fa0:	00000097          	auipc	ra,0x0
    80002fa4:	f44080e7          	jalr	-188(ra) # 80002ee4 <_ZN8KConsole17putCharacterInputEc>
}
    80002fa8:	00813083          	ld	ra,8(sp)
    80002fac:	00013403          	ld	s0,0(sp)
    80002fb0:	01010113          	addi	sp,sp,16
    80002fb4:	00008067          	ret

0000000080002fb8 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80002fb8:	fe010113          	addi	sp,sp,-32
    80002fbc:	00113c23          	sd	ra,24(sp)
    80002fc0:	00813823          	sd	s0,16(sp)
    80002fc4:	00913423          	sd	s1,8(sp)
    80002fc8:	02010413          	addi	s0,sp,32
    hasCharactersInput->wait();
    80002fcc:	00008497          	auipc	s1,0x8
    80002fd0:	92448493          	addi	s1,s1,-1756 # 8000a8f0 <_ZN8KConsole18hasCharactersInputE>
    80002fd4:	0004b503          	ld	a0,0(s1)
    80002fd8:	00002097          	auipc	ra,0x2
    80002fdc:	bb8080e7          	jalr	-1096(ra) # 80004b90 <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    80002fe0:	0184b783          	ld	a5,24(s1)
    80002fe4:	0104b703          	ld	a4,16(s1)
    80002fe8:	04e78063          	beq	a5,a4,80003028 <_ZN8KConsole17getCharacterInputEv+0x70>
        return -1;
    char c = inputBuffer[inputHead];
    80002fec:	0000a717          	auipc	a4,0xa
    80002ff0:	94470713          	addi	a4,a4,-1724 # 8000c930 <_ZN8KConsole11inputBufferE>
    80002ff4:	00f70733          	add	a4,a4,a5
    80002ff8:	00074503          	lbu	a0,0(a4)
    inputHead = (inputHead+1)%bufferSize;
    80002ffc:	00178793          	addi	a5,a5,1
    80003000:	00002737          	lui	a4,0x2
    80003004:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80003008:	00e7f7b3          	and	a5,a5,a4
    8000300c:	00008717          	auipc	a4,0x8
    80003010:	8ef73e23          	sd	a5,-1796(a4) # 8000a908 <_ZN8KConsole9inputHeadE>
    return c;
}
    80003014:	01813083          	ld	ra,24(sp)
    80003018:	01013403          	ld	s0,16(sp)
    8000301c:	00813483          	ld	s1,8(sp)
    80003020:	02010113          	addi	sp,sp,32
    80003024:	00008067          	ret
        return -1;
    80003028:	0ff00513          	li	a0,255
    8000302c:	fe9ff06f          	j	80003014 <_ZN8KConsole17getCharacterInputEv+0x5c>

0000000080003030 <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    if((outputTail+1)%bufferSize == outputHead)
    80003030:	00008697          	auipc	a3,0x8
    80003034:	8c068693          	addi	a3,a3,-1856 # 8000a8f0 <_ZN8KConsole18hasCharactersInputE>
    80003038:	0286b603          	ld	a2,40(a3)
    8000303c:	00160793          	addi	a5,a2,1
    80003040:	00002737          	lui	a4,0x2
    80003044:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80003048:	00e7f7b3          	and	a5,a5,a4
    8000304c:	0306b703          	ld	a4,48(a3)
    80003050:	04e78a63          	beq	a5,a4,800030a4 <_ZN8KConsole18putCharacterOutputEc+0x74>
{
    80003054:	ff010113          	addi	sp,sp,-16
    80003058:	00113423          	sd	ra,8(sp)
    8000305c:	00813023          	sd	s0,0(sp)
    80003060:	01010413          	addi	s0,sp,16
        return;
    pendingPutc++;
    80003064:	00068713          	mv	a4,a3
    80003068:	0386b683          	ld	a3,56(a3)
    8000306c:	00168693          	addi	a3,a3,1
    80003070:	02d73c23          	sd	a3,56(a4)
    outputBuffer[outputTail] = c;
    80003074:	00008697          	auipc	a3,0x8
    80003078:	8bc68693          	addi	a3,a3,-1860 # 8000a930 <_ZN8KConsole12outputBufferE>
    8000307c:	00c68633          	add	a2,a3,a2
    80003080:	00a60023          	sb	a0,0(a2)
    outputTail = (outputTail+1)%bufferSize;
    80003084:	02f73423          	sd	a5,40(a4)
    hasCharactersOutput->signal();
    80003088:	00873503          	ld	a0,8(a4)
    8000308c:	00002097          	auipc	ra,0x2
    80003090:	c7c080e7          	jalr	-900(ra) # 80004d08 <_ZN10KSemaphore6signalEv>
}
    80003094:	00813083          	ld	ra,8(sp)
    80003098:	00013403          	ld	s0,0(sp)
    8000309c:	01010113          	addi	sp,sp,16
    800030a0:	00008067          	ret
    800030a4:	00008067          	ret

00000000800030a8 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    800030a8:	fe010113          	addi	sp,sp,-32
    800030ac:	00113c23          	sd	ra,24(sp)
    800030b0:	00813823          	sd	s0,16(sp)
    800030b4:	00913423          	sd	s1,8(sp)
    800030b8:	02010413          	addi	s0,sp,32
    hasCharactersOutput->wait();
    800030bc:	00008497          	auipc	s1,0x8
    800030c0:	83448493          	addi	s1,s1,-1996 # 8000a8f0 <_ZN8KConsole18hasCharactersInputE>
    800030c4:	0084b503          	ld	a0,8(s1)
    800030c8:	00002097          	auipc	ra,0x2
    800030cc:	ac8080e7          	jalr	-1336(ra) # 80004b90 <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    800030d0:	0304b783          	ld	a5,48(s1)
    800030d4:	0284b703          	ld	a4,40(s1)
    800030d8:	04e78063          	beq	a5,a4,80003118 <_ZN8KConsole18getCharacterOutputEv+0x70>
        return -1;
    char c = outputBuffer[outputHead];
    800030dc:	00008717          	auipc	a4,0x8
    800030e0:	85470713          	addi	a4,a4,-1964 # 8000a930 <_ZN8KConsole12outputBufferE>
    800030e4:	00f70733          	add	a4,a4,a5
    800030e8:	00074503          	lbu	a0,0(a4)
    outputHead = (outputHead+1)%bufferSize;
    800030ec:	00178793          	addi	a5,a5,1
    800030f0:	00002737          	lui	a4,0x2
    800030f4:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    800030f8:	00e7f7b3          	and	a5,a5,a4
    800030fc:	00008717          	auipc	a4,0x8
    80003100:	82f73223          	sd	a5,-2012(a4) # 8000a920 <_ZN8KConsole10outputHeadE>
    return c;
}
    80003104:	01813083          	ld	ra,24(sp)
    80003108:	01013403          	ld	s0,16(sp)
    8000310c:	00813483          	ld	s1,8(sp)
    80003110:	02010113          	addi	sp,sp,32
    80003114:	00008067          	ret
        return -1;
    80003118:	0ff00513          	li	a0,255
    8000311c:	fe9ff06f          	j	80003104 <_ZN8KConsole18getCharacterOutputEv+0x5c>

0000000080003120 <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    80003120:	ff010113          	addi	sp,sp,-16
    80003124:	00113423          	sd	ra,8(sp)
    80003128:	00813023          	sd	s0,0(sp)
    8000312c:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    80003130:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    80003134:	0ff57513          	andi	a0,a0,255
    80003138:	00000097          	auipc	ra,0x0
    8000313c:	ef8080e7          	jalr	-264(ra) # 80003030 <_ZN8KConsole18putCharacterOutputEc>
}
    80003140:	00813083          	ld	ra,8(sp)
    80003144:	00013403          	ld	s0,0(sp)
    80003148:	01010113          	addi	sp,sp,16
    8000314c:	00008067          	ret

0000000080003150 <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    80003150:	fe010113          	addi	sp,sp,-32
    80003154:	00113c23          	sd	ra,24(sp)
    80003158:	00813823          	sd	s0,16(sp)
    8000315c:	00913423          	sd	s1,8(sp)
    80003160:	02010413          	addi	s0,sp,32
    pendingGetc++;
    80003164:	00007717          	auipc	a4,0x7
    80003168:	78c70713          	addi	a4,a4,1932 # 8000a8f0 <_ZN8KConsole18hasCharactersInputE>
    8000316c:	02073783          	ld	a5,32(a4)
    80003170:	00178793          	addi	a5,a5,1
    80003174:	02f73023          	sd	a5,32(a4)
    char ch;
    ch = getCharacterInput();
    80003178:	00000097          	auipc	ra,0x0
    8000317c:	e40080e7          	jalr	-448(ra) # 80002fb8 <_ZN8KConsole17getCharacterInputEv>
    80003180:	00050493          	mv	s1,a0
    if(ch!=0x01b)
    80003184:	01b00793          	li	a5,27
    80003188:	02f51663          	bne	a0,a5,800031b4 <_ZN8KConsole11getcHandlerEv+0x64>
        putCharacterOutput(ch);

    if(ch==13)
    8000318c:	00d00793          	li	a5,13
    80003190:	02f48863          	beq	s1,a5,800031c0 <_ZN8KConsole11getcHandlerEv+0x70>
    {
        putCharacterOutput(13);
        putCharacterOutput(10);
    }

    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80003194:	00048513          	mv	a0,s1
    Riscv::w_a0_sscratch();
    80003198:	00001097          	auipc	ra,0x1
    8000319c:	000080e7          	jalr	ra # 80004198 <_ZN5Riscv13w_a0_sscratchEv>
}
    800031a0:	01813083          	ld	ra,24(sp)
    800031a4:	01013403          	ld	s0,16(sp)
    800031a8:	00813483          	ld	s1,8(sp)
    800031ac:	02010113          	addi	sp,sp,32
    800031b0:	00008067          	ret
        putCharacterOutput(ch);
    800031b4:	00000097          	auipc	ra,0x0
    800031b8:	e7c080e7          	jalr	-388(ra) # 80003030 <_ZN8KConsole18putCharacterOutputEc>
    800031bc:	fd1ff06f          	j	8000318c <_ZN8KConsole11getcHandlerEv+0x3c>
        putCharacterOutput(13);
    800031c0:	00d00513          	li	a0,13
    800031c4:	00000097          	auipc	ra,0x0
    800031c8:	e6c080e7          	jalr	-404(ra) # 80003030 <_ZN8KConsole18putCharacterOutputEc>
        putCharacterOutput(10);
    800031cc:	00a00513          	li	a0,10
    800031d0:	00000097          	auipc	ra,0x0
    800031d4:	e60080e7          	jalr	-416(ra) # 80003030 <_ZN8KConsole18putCharacterOutputEc>
    800031d8:	fbdff06f          	j	80003194 <_ZN8KConsole11getcHandlerEv+0x44>

00000000800031dc <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty()
{
    800031dc:	ff010113          	addi	sp,sp,-16
    800031e0:	00813423          	sd	s0,8(sp)
    800031e4:	01010413          	addi	s0,sp,16
    return pendingPutc == 0;
}
    800031e8:	00007517          	auipc	a0,0x7
    800031ec:	74053503          	ld	a0,1856(a0) # 8000a928 <_ZN8KConsole11pendingPutcE>
    800031f0:	00153513          	seqz	a0,a0
    800031f4:	00813403          	ld	s0,8(sp)
    800031f8:	01010113          	addi	sp,sp,16
    800031fc:	00008067          	ret

0000000080003200 <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    80003200:	fe010113          	addi	sp,sp,-32
    80003204:	00113c23          	sd	ra,24(sp)
    80003208:	00813823          	sd	s0,16(sp)
    8000320c:	02010413          	addi	s0,sp,32
    80003210:	0180006f          	j	80003228 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>
                thread_exit();
    80003214:	fffff097          	auipc	ra,0xfffff
    80003218:	e58080e7          	jalr	-424(ra) # 8000206c <_Z11thread_exitv>
    8000321c:	0340006f          	j	80003250 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
                thread_dispatch();
    80003220:	fffff097          	auipc	ra,0xfffff
    80003224:	e2c080e7          	jalr	-468(ra) # 8000204c <_Z15thread_dispatchv>
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
    80003228:	00007797          	auipc	a5,0x7
    8000322c:	6207b783          	ld	a5,1568(a5) # 8000a848 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003230:	0007c783          	lbu	a5,0(a5)
    80003234:	00078e63          	beqz	a5,80003250 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80003238:	00000097          	auipc	ra,0x0
    8000323c:	fa4080e7          	jalr	-92(ra) # 800031dc <_ZN8KConsole17outputBufferEmptyEv>
    80003240:	00050863          	beqz	a0,80003250 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80003244:	00007797          	auipc	a5,0x7
    80003248:	6cc7b783          	ld	a5,1740(a5) # 8000a910 <_ZN8KConsole11pendingGetcE>
    8000324c:	fc0784e3          	beqz	a5,80003214 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
            uint64 operation = *(uint8*)CONSOLE_STATUS;
    80003250:	00007797          	auipc	a5,0x7
    80003254:	5987b783          	ld	a5,1432(a5) # 8000a7e8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003258:	0007b783          	ld	a5,0(a5)
    8000325c:	0007c783          	lbu	a5,0(a5)
            if ((operation & STATUS_WRITE_MASK) && pendingPutc > 0)
    80003260:	0207f793          	andi	a5,a5,32
    80003264:	fa078ee3          	beqz	a5,80003220 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
    80003268:	00007797          	auipc	a5,0x7
    8000326c:	6c07b783          	ld	a5,1728(a5) # 8000a928 <_ZN8KConsole11pendingPutcE>
    80003270:	fa0788e3          	beqz	a5,80003220 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
                char volatile c = sysCallGetCharOutput();
    80003274:	fffff097          	auipc	ra,0xfffff
    80003278:	000080e7          	jalr	ra # 80002274 <_Z20sysCallGetCharOutputv>
    8000327c:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    80003280:	00007717          	auipc	a4,0x7
    80003284:	67070713          	addi	a4,a4,1648 # 8000a8f0 <_ZN8KConsole18hasCharactersInputE>
    80003288:	03873783          	ld	a5,56(a4)
    8000328c:	fff78793          	addi	a5,a5,-1
    80003290:	02f73c23          	sd	a5,56(a4)
                *(uint8*)CONSOLE_RX_DATA = c;
    80003294:	00007797          	auipc	a5,0x7
    80003298:	54c7b783          	ld	a5,1356(a5) # 8000a7e0 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000329c:	0007b783          	ld	a5,0(a5)
    800032a0:	fef44703          	lbu	a4,-17(s0)
    800032a4:	00e78023          	sb	a4,0(a5)
    800032a8:	f81ff06f          	j	80003228 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>

00000000800032ac <_ZN8KConsole14getCharHandlerEv>:

void KConsole::getCharHandler()
{
    800032ac:	ff010113          	addi	sp,sp,-16
    800032b0:	00113423          	sd	ra,8(sp)
    800032b4:	00813023          	sd	s0,0(sp)
    800032b8:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterOutput();
    800032bc:	00000097          	auipc	ra,0x0
    800032c0:	dec080e7          	jalr	-532(ra) # 800030a8 <_ZN8KConsole18getCharacterOutputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    800032c4:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    800032c8:	00001097          	auipc	ra,0x1
    800032cc:	ed0080e7          	jalr	-304(ra) # 80004198 <_ZN5Riscv13w_a0_sscratchEv>
}
    800032d0:	00813083          	ld	ra,8(sp)
    800032d4:	00013403          	ld	s0,0(sp)
    800032d8:	01010113          	addi	sp,sp,16
    800032dc:	00008067          	ret

00000000800032e0 <_ZN8KConsole15trapPrintStringEPKc>:

void KConsole::trapPrintString(const char *string)
{
    800032e0:	fe010113          	addi	sp,sp,-32
    800032e4:	00113c23          	sd	ra,24(sp)
    800032e8:	00813823          	sd	s0,16(sp)
    800032ec:	00913423          	sd	s1,8(sp)
    800032f0:	02010413          	addi	s0,sp,32
    800032f4:	00050493          	mv	s1,a0
    while (*string != '\0')
    800032f8:	0004c503          	lbu	a0,0(s1)
    800032fc:	00050a63          	beqz	a0,80003310 <_ZN8KConsole15trapPrintStringEPKc+0x30>
    {
        KConsole::putCharacterOutput(*string);
    80003300:	00000097          	auipc	ra,0x0
    80003304:	d30080e7          	jalr	-720(ra) # 80003030 <_ZN8KConsole18putCharacterOutputEc>
        string++;
    80003308:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000330c:	fedff06f          	j	800032f8 <_ZN8KConsole15trapPrintStringEPKc+0x18>
    }
}
    80003310:	01813083          	ld	ra,24(sp)
    80003314:	01013403          	ld	s0,16(sp)
    80003318:	00813483          	ld	s1,8(sp)
    8000331c:	02010113          	addi	sp,sp,32
    80003320:	00008067          	ret

0000000080003324 <_ZN8KConsole12trapPrintIntEmii>:

void KConsole::trapPrintInt(size_t xx, int base, int sgn)
{
    80003324:	fb010113          	addi	sp,sp,-80
    80003328:	04113423          	sd	ra,72(sp)
    8000332c:	04813023          	sd	s0,64(sp)
    80003330:	02913c23          	sd	s1,56(sp)
    80003334:	05010413          	addi	s0,sp,80
    char digits[] = "0123456789ABCDEF";
    80003338:	00005797          	auipc	a5,0x5
    8000333c:	ee878793          	addi	a5,a5,-280 # 80008220 <CONSOLE_STATUS+0x210>
    80003340:	0007b703          	ld	a4,0(a5)
    80003344:	fce43423          	sd	a4,-56(s0)
    80003348:	0087b703          	ld	a4,8(a5)
    8000334c:	fce43823          	sd	a4,-48(s0)
    80003350:	0107c783          	lbu	a5,16(a5)
    80003354:	fcf40c23          	sb	a5,-40(s0)
        x = -xx;
    } else {
        x = xx;
    }

    i = 0;
    80003358:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    8000335c:	02b57733          	remu	a4,a0,a1
    80003360:	fe040693          	addi	a3,s0,-32
    80003364:	00e68733          	add	a4,a3,a4
    80003368:	fe874703          	lbu	a4,-24(a4)
    8000336c:	009687b3          	add	a5,a3,s1
    80003370:	0014849b          	addiw	s1,s1,1
    80003374:	fce78c23          	sb	a4,-40(a5)
    }while((x /= base) != 0);
    80003378:	00050793          	mv	a5,a0
    8000337c:	02b55533          	divu	a0,a0,a1
    80003380:	fcb7fee3          	bgeu	a5,a1,8000335c <_ZN8KConsole12trapPrintIntEmii+0x38>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    80003384:	fff4849b          	addiw	s1,s1,-1
    80003388:	0004ce63          	bltz	s1,800033a4 <_ZN8KConsole12trapPrintIntEmii+0x80>
        KConsole::putCharacterOutput(buf[i]);
    8000338c:	fe040793          	addi	a5,s0,-32
    80003390:	009787b3          	add	a5,a5,s1
    80003394:	fd87c503          	lbu	a0,-40(a5)
    80003398:	00000097          	auipc	ra,0x0
    8000339c:	c98080e7          	jalr	-872(ra) # 80003030 <_ZN8KConsole18putCharacterOutputEc>
    800033a0:	fe5ff06f          	j	80003384 <_ZN8KConsole12trapPrintIntEmii+0x60>
}
    800033a4:	04813083          	ld	ra,72(sp)
    800033a8:	04013403          	ld	s0,64(sp)
    800033ac:	03813483          	ld	s1,56(sp)
    800033b0:	05010113          	addi	sp,sp,80
    800033b4:	00008067          	ret

00000000800033b8 <_ZN8KConsole18trapPrintStringIntEPKcmi>:

void KConsole::trapPrintStringInt(const char *string, size_t xx, int base)
{
    800033b8:	fe010113          	addi	sp,sp,-32
    800033bc:	00113c23          	sd	ra,24(sp)
    800033c0:	00813823          	sd	s0,16(sp)
    800033c4:	00913423          	sd	s1,8(sp)
    800033c8:	01213023          	sd	s2,0(sp)
    800033cc:	02010413          	addi	s0,sp,32
    800033d0:	00058493          	mv	s1,a1
    800033d4:	00060913          	mv	s2,a2
    trapPrintString(string);
    800033d8:	00000097          	auipc	ra,0x0
    800033dc:	f08080e7          	jalr	-248(ra) # 800032e0 <_ZN8KConsole15trapPrintStringEPKc>
    trapPrintInt(xx,base);
    800033e0:	00000613          	li	a2,0
    800033e4:	00090593          	mv	a1,s2
    800033e8:	00048513          	mv	a0,s1
    800033ec:	00000097          	auipc	ra,0x0
    800033f0:	f38080e7          	jalr	-200(ra) # 80003324 <_ZN8KConsole12trapPrintIntEmii>
    trapPrintString("\n");
    800033f4:	00005517          	auipc	a0,0x5
    800033f8:	1cc50513          	addi	a0,a0,460 # 800085c0 <CONSOLE_STATUS+0x5b0>
    800033fc:	00000097          	auipc	ra,0x0
    80003400:	ee4080e7          	jalr	-284(ra) # 800032e0 <_ZN8KConsole15trapPrintStringEPKc>
}
    80003404:	01813083          	ld	ra,24(sp)
    80003408:	01013403          	ld	s0,16(sp)
    8000340c:	00813483          	ld	s1,8(sp)
    80003410:	00013903          	ld	s2,0(sp)
    80003414:	02010113          	addi	sp,sp,32
    80003418:	00008067          	ret

000000008000341c <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/Riscv.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    8000341c:	ff010113          	addi	sp,sp,-16
    80003420:	00813423          	sd	s0,8(sp)
    80003424:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    80003428:	00007797          	auipc	a5,0x7
    8000342c:	4287b783          	ld	a5,1064(a5) # 8000a850 <_GLOBAL_OFFSET_TABLE_+0x78>
    80003430:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    80003434:	00500793          	li	a5,5
    80003438:	04f62023          	sw	a5,64(a2)
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    8000343c:	0000b797          	auipc	a5,0xb
    80003440:	4f47b783          	ld	a5,1268(a5) # 8000e930 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80003444:	00000593          	li	a1,0
    while(curr != 0)
    80003448:	02078063          	beqz	a5,80003468 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    8000344c:	02063683          	ld	a3,32(a2)
    80003450:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    80003454:	00e6e863          	bltu	a3,a4,80003464 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    80003458:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    8000345c:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003460:	fe9ff06f          	j	80003448 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    80003464:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    80003468:	00058a63          	beqz	a1,8000347c <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    8000346c:	00c5b423          	sd	a2,8(a1)
}
    80003470:	00813403          	ld	s0,8(sp)
    80003474:	01010113          	addi	sp,sp,16
    80003478:	00008067          	ret
        sleepingPCBHead = PCB::running;
    8000347c:	0000b797          	auipc	a5,0xb
    80003480:	4ac7ba23          	sd	a2,1204(a5) # 8000e930 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80003484:	fedff06f          	j	80003470 <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

0000000080003488 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    PCB* curr = sleepingPCBHead;
    80003488:	0000b517          	auipc	a0,0xb
    8000348c:	4a853503          	ld	a0,1192(a0) # 8000e930 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80003490:	06050e63          	beqz	a0,8000350c <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
        return;

    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003494:	06050c63          	beqz	a0,8000350c <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    80003498:	02053783          	ld	a5,32(a0)
    8000349c:	00007717          	auipc	a4,0x7
    800034a0:	38c73703          	ld	a4,908(a4) # 8000a828 <_GLOBAL_OFFSET_TABLE_+0x50>
    800034a4:	00073703          	ld	a4,0(a4)
    800034a8:	06f76263          	bltu	a4,a5,8000350c <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    800034ac:	fe010113          	addi	sp,sp,-32
    800034b0:	00113c23          	sd	ra,24(sp)
    800034b4:	00813823          	sd	s0,16(sp)
    800034b8:	00913423          	sd	s1,8(sp)
    800034bc:	02010413          	addi	s0,sp,32
    800034c0:	0180006f          	j	800034d8 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    800034c4:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800034c8:	00007717          	auipc	a4,0x7
    800034cc:	36073703          	ld	a4,864(a4) # 8000a828 <_GLOBAL_OFFSET_TABLE_+0x50>
    800034d0:	00073703          	ld	a4,0(a4)
    800034d4:	02f76263          	bltu	a4,a5,800034f8 <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    800034d8:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    800034dc:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    800034e0:	00000097          	auipc	ra,0x0
    800034e4:	0b8080e7          	jalr	184(ra) # 80003598 <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    800034e8:	0000b797          	auipc	a5,0xb
    800034ec:	4497b423          	sd	s1,1096(a5) # 8000e930 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    800034f0:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    800034f4:	fc0498e3          	bnez	s1,800034c4 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    800034f8:	01813083          	ld	ra,24(sp)
    800034fc:	01013403          	ld	s0,16(sp)
    80003500:	00813483          	ld	s1,8(sp)
    80003504:	02010113          	addi	sp,sp,32
    80003508:	00008067          	ret
    8000350c:	00008067          	ret

0000000080003510 <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    80003510:	ff010113          	addi	sp,sp,-16
    80003514:	00113423          	sd	ra,8(sp)
    80003518:	00813023          	sd	s0,0(sp)
    8000351c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    80003520:	00001097          	auipc	ra,0x1
    80003524:	37c080e7          	jalr	892(ra) # 8000489c <_ZN15MemoryAllocator7kmallocEm>
}
    80003528:	00813083          	ld	ra,8(sp)
    8000352c:	00013403          	ld	s0,0(sp)
    80003530:	01010113          	addi	sp,sp,16
    80003534:	00008067          	ret

0000000080003538 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    80003538:	ff010113          	addi	sp,sp,-16
    8000353c:	00113423          	sd	ra,8(sp)
    80003540:	00813023          	sd	s0,0(sp)
    80003544:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80003548:	00001097          	auipc	ra,0x1
    8000354c:	3b8080e7          	jalr	952(ra) # 80004900 <_ZN15MemoryAllocator5kfreeEPv>
}
    80003550:	00813083          	ld	ra,8(sp)
    80003554:	00013403          	ld	s0,0(sp)
    80003558:	01010113          	addi	sp,sp,16
    8000355c:	00008067          	ret

0000000080003560 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80003560:	ff010113          	addi	sp,sp,-16
    80003564:	00813423          	sd	s0,8(sp)
    80003568:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    8000356c:	0000b797          	auipc	a5,0xb
    80003570:	3cc7b783          	ld	a5,972(a5) # 8000e938 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80003574:	00000513          	li	a0,0
    while(curr != 0)
    80003578:	00078863          	beqz	a5,80003588 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    8000357c:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80003580:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003584:	ff5ff06f          	j	80003578 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    80003588:	0005051b          	sext.w	a0,a0
    8000358c:	00813403          	ld	s0,8(sp)
    80003590:	01010113          	addi	sp,sp,16
    80003594:	00008067          	ret

0000000080003598 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    80003598:	ff010113          	addi	sp,sp,-16
    8000359c:	00813423          	sd	s0,8(sp)
    800035a0:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    800035a4:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    800035a8:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    800035ac:	0000b797          	auipc	a5,0xb
    800035b0:	38c7b783          	ld	a5,908(a5) # 8000e938 <_ZN9Scheduler16schedulerPCBHeadE>
    800035b4:	02078263          	beqz	a5,800035d8 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    800035b8:	0000b797          	auipc	a5,0xb
    800035bc:	38078793          	addi	a5,a5,896 # 8000e938 <_ZN9Scheduler16schedulerPCBHeadE>
    800035c0:	0087b703          	ld	a4,8(a5)
    800035c4:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    800035c8:	00a7b423          	sd	a0,8(a5)
    }
}
    800035cc:	00813403          	ld	s0,8(sp)
    800035d0:	01010113          	addi	sp,sp,16
    800035d4:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    800035d8:	0000b797          	auipc	a5,0xb
    800035dc:	36078793          	addi	a5,a5,864 # 8000e938 <_ZN9Scheduler16schedulerPCBHeadE>
    800035e0:	00a7b423          	sd	a0,8(a5)
    800035e4:	00a7b023          	sd	a0,0(a5)
    800035e8:	fe5ff06f          	j	800035cc <_ZN9Scheduler3putEP3PCB+0x34>

00000000800035ec <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    800035ec:	ff010113          	addi	sp,sp,-16
    800035f0:	00813423          	sd	s0,8(sp)
    800035f4:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    800035f8:	0000b517          	auipc	a0,0xb
    800035fc:	34053503          	ld	a0,832(a0) # 8000e938 <_ZN9Scheduler16schedulerPCBHeadE>
    80003600:	00050c63          	beqz	a0,80003618 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80003604:	00853783          	ld	a5,8(a0)
    80003608:	00078e63          	beqz	a5,80003624 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    8000360c:	0000b717          	auipc	a4,0xb
    80003610:	32f73623          	sd	a5,812(a4) # 8000e938 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80003614:	00053423          	sd	zero,8(a0)
    return retval;
}
    80003618:	00813403          	ld	s0,8(sp)
    8000361c:	01010113          	addi	sp,sp,16
    80003620:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80003624:	0000b797          	auipc	a5,0xb
    80003628:	31478793          	addi	a5,a5,788 # 8000e938 <_ZN9Scheduler16schedulerPCBHeadE>
    8000362c:	0007b423          	sd	zero,8(a5)
    80003630:	0007b023          	sd	zero,0(a5)
    80003634:	fe1ff06f          	j	80003614 <_ZN9Scheduler3getEv+0x28>

0000000080003638 <_ZN9Scheduler5printEv>:

void Scheduler::print()
{
    80003638:	fe010113          	addi	sp,sp,-32
    8000363c:	00113c23          	sd	ra,24(sp)
    80003640:	00813823          	sd	s0,16(sp)
    80003644:	00913423          	sd	s1,8(sp)
    80003648:	02010413          	addi	s0,sp,32
    //trapPrintString("Scheduler print\n");
    PCB* curr = schedulerPCBHead;
    8000364c:	0000b497          	auipc	s1,0xb
    80003650:	2ec4b483          	ld	s1,748(s1) # 8000e938 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    80003654:	02048863          	beqz	s1,80003684 <_ZN9Scheduler5printEv+0x4c>
    {
        KConsole::trapPrintInt((uint64)curr, 16);
    80003658:	00000613          	li	a2,0
    8000365c:	01000593          	li	a1,16
    80003660:	00048513          	mv	a0,s1
    80003664:	00000097          	auipc	ra,0x0
    80003668:	cc0080e7          	jalr	-832(ra) # 80003324 <_ZN8KConsole12trapPrintIntEmii>
        KConsole::trapPrintString("\n");
    8000366c:	00005517          	auipc	a0,0x5
    80003670:	f5450513          	addi	a0,a0,-172 # 800085c0 <CONSOLE_STATUS+0x5b0>
    80003674:	00000097          	auipc	ra,0x0
    80003678:	c6c080e7          	jalr	-916(ra) # 800032e0 <_ZN8KConsole15trapPrintStringEPKc>
        curr = curr->nextPCB;
    8000367c:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003680:	fd5ff06f          	j	80003654 <_ZN9Scheduler5printEv+0x1c>
    }
}
    80003684:	01813083          	ld	ra,24(sp)
    80003688:	01013403          	ld	s0,16(sp)
    8000368c:	00813483          	ld	s1,8(sp)
    80003690:	02010113          	addi	sp,sp,32
    80003694:	00008067          	ret

0000000080003698 <main>:
#include "../h/Riscv.hpp"

void main()
{
    80003698:	ff010113          	addi	sp,sp,-16
    8000369c:	00113423          	sd	ra,8(sp)
    800036a0:	00813023          	sd	s0,0(sp)
    800036a4:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    800036a8:	00001097          	auipc	ra,0x1
    800036ac:	a30080e7          	jalr	-1488(ra) # 800040d8 <_ZN5Riscv10kernelMainEv>
    800036b0:	00813083          	ld	ra,8(sp)
    800036b4:	00013403          	ld	s0,0(sp)
    800036b8:	01010113          	addi	sp,sp,16
    800036bc:	00008067          	ret

00000000800036c0 <_Z14buddyInitTest1v>:
#include "../h/buddyTests.hpp"

void buddyInitTest1()
{
    800036c0:	ff010113          	addi	sp,sp,-16
    800036c4:	00113423          	sd	ra,8(sp)
    800036c8:	00813023          	sd	s0,0(sp)
    800036cc:	01010413          	addi	s0,sp,16
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 18);
    800036d0:	01200593          	li	a1,18
    800036d4:	00007797          	auipc	a5,0x7
    800036d8:	11c7b783          	ld	a5,284(a5) # 8000a7f0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800036dc:	0007b503          	ld	a0,0(a5)
    800036e0:	fffff097          	auipc	ra,0xfffff
    800036e4:	5d8080e7          	jalr	1496(ra) # 80002cb8 <_Z10buddy_initPvm>
    printBuddyInfo(buddy);
    800036e8:	fffff097          	auipc	ra,0xfffff
    800036ec:	708080e7          	jalr	1800(ra) # 80002df0 <_Z14printBuddyInfoP14buddyAllocator>
}
    800036f0:	00813083          	ld	ra,8(sp)
    800036f4:	00013403          	ld	s0,0(sp)
    800036f8:	01010113          	addi	sp,sp,16
    800036fc:	00008067          	ret

0000000080003700 <_Z20buddyOnlyAllocsTest1v>:

void buddyOnlyAllocsTest1()
{
    80003700:	fe010113          	addi	sp,sp,-32
    80003704:	00113c23          	sd	ra,24(sp)
    80003708:	00813823          	sd	s0,16(sp)
    8000370c:	00913423          	sd	s1,8(sp)
    80003710:	02010413          	addi	s0,sp,32
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    80003714:	00a00593          	li	a1,10
    80003718:	00007797          	auipc	a5,0x7
    8000371c:	0d87b783          	ld	a5,216(a5) # 8000a7f0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003720:	0007b503          	ld	a0,0(a5)
    80003724:	fffff097          	auipc	ra,0xfffff
    80003728:	594080e7          	jalr	1428(ra) # 80002cb8 <_Z10buddy_initPvm>
    8000372c:	00050493          	mv	s1,a0
    printBuddyInfo(buddy);
    80003730:	fffff097          	auipc	ra,0xfffff
    80003734:	6c0080e7          	jalr	1728(ra) # 80002df0 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    80003738:	00100593          	li	a1,1
    8000373c:	00048513          	mv	a0,s1
    80003740:	fffff097          	auipc	ra,0xfffff
    80003744:	388080e7          	jalr	904(ra) # 80002ac8 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003748:	00048513          	mv	a0,s1
    8000374c:	fffff097          	auipc	ra,0xfffff
    80003750:	6a4080e7          	jalr	1700(ra) # 80002df0 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    80003754:	00100593          	li	a1,1
    80003758:	00048513          	mv	a0,s1
    8000375c:	fffff097          	auipc	ra,0xfffff
    80003760:	36c080e7          	jalr	876(ra) # 80002ac8 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003764:	00048513          	mv	a0,s1
    80003768:	fffff097          	auipc	ra,0xfffff
    8000376c:	688080e7          	jalr	1672(ra) # 80002df0 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    80003770:	00100593          	li	a1,1
    80003774:	00048513          	mv	a0,s1
    80003778:	fffff097          	auipc	ra,0xfffff
    8000377c:	350080e7          	jalr	848(ra) # 80002ac8 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003780:	00048513          	mv	a0,s1
    80003784:	fffff097          	auipc	ra,0xfffff
    80003788:	66c080e7          	jalr	1644(ra) # 80002df0 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,3);
    8000378c:	00300593          	li	a1,3
    80003790:	00048513          	mv	a0,s1
    80003794:	fffff097          	auipc	ra,0xfffff
    80003798:	334080e7          	jalr	820(ra) # 80002ac8 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    8000379c:	00048513          	mv	a0,s1
    800037a0:	fffff097          	auipc	ra,0xfffff
    800037a4:	650080e7          	jalr	1616(ra) # 80002df0 <_Z14printBuddyInfoP14buddyAllocator>
}
    800037a8:	01813083          	ld	ra,24(sp)
    800037ac:	01013403          	ld	s0,16(sp)
    800037b0:	00813483          	ld	s1,8(sp)
    800037b4:	02010113          	addi	sp,sp,32
    800037b8:	00008067          	ret

00000000800037bc <_Z20buddyOnlyAllocsTest2v>:

void buddyOnlyAllocsTest2()
{
    800037bc:	fe010113          	addi	sp,sp,-32
    800037c0:	00113c23          	sd	ra,24(sp)
    800037c4:	00813823          	sd	s0,16(sp)
    800037c8:	00913423          	sd	s1,8(sp)
    800037cc:	02010413          	addi	s0,sp,32
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    800037d0:	00a00593          	li	a1,10
    800037d4:	00007797          	auipc	a5,0x7
    800037d8:	01c7b783          	ld	a5,28(a5) # 8000a7f0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800037dc:	0007b503          	ld	a0,0(a5)
    800037e0:	fffff097          	auipc	ra,0xfffff
    800037e4:	4d8080e7          	jalr	1240(ra) # 80002cb8 <_Z10buddy_initPvm>
    800037e8:	00050493          	mv	s1,a0
    void* adr = buddy_alloc(buddy, 100);
    800037ec:	06400593          	li	a1,100
    800037f0:	fffff097          	auipc	ra,0xfffff
    800037f4:	2d8080e7          	jalr	728(ra) # 80002ac8 <_Z11buddy_allocP14buddyAllocatorm>
    if(adr == nullptr)
    800037f8:	00050c63          	beqz	a0,80003810 <_Z20buddyOnlyAllocsTest2v+0x54>
    {
        printBuddyInfo(buddy);
    }
}
    800037fc:	01813083          	ld	ra,24(sp)
    80003800:	01013403          	ld	s0,16(sp)
    80003804:	00813483          	ld	s1,8(sp)
    80003808:	02010113          	addi	sp,sp,32
    8000380c:	00008067          	ret
        printBuddyInfo(buddy);
    80003810:	00048513          	mv	a0,s1
    80003814:	fffff097          	auipc	ra,0xfffff
    80003818:	5dc080e7          	jalr	1500(ra) # 80002df0 <_Z14printBuddyInfoP14buddyAllocator>
}
    8000381c:	fe1ff06f          	j	800037fc <_Z20buddyOnlyAllocsTest2v+0x40>

0000000080003820 <_Z19buddyAllocFreeTest1v>:

void buddyAllocFreeTest1()
{
    80003820:	fd010113          	addi	sp,sp,-48
    80003824:	02113423          	sd	ra,40(sp)
    80003828:	02813023          	sd	s0,32(sp)
    8000382c:	00913c23          	sd	s1,24(sp)
    80003830:	01213823          	sd	s2,16(sp)
    80003834:	01313423          	sd	s3,8(sp)
    80003838:	03010413          	addi	s0,sp,48
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    8000383c:	00a00593          	li	a1,10
    80003840:	00007797          	auipc	a5,0x7
    80003844:	fb07b783          	ld	a5,-80(a5) # 8000a7f0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003848:	0007b503          	ld	a0,0(a5)
    8000384c:	fffff097          	auipc	ra,0xfffff
    80003850:	46c080e7          	jalr	1132(ra) # 80002cb8 <_Z10buddy_initPvm>
    80003854:	00050493          	mv	s1,a0
    printBuddyInfo(buddy);
    80003858:	fffff097          	auipc	ra,0xfffff
    8000385c:	598080e7          	jalr	1432(ra) # 80002df0 <_Z14printBuddyInfoP14buddyAllocator>
    void* adr = buddy_alloc(buddy,1);
    80003860:	00100593          	li	a1,1
    80003864:	00048513          	mv	a0,s1
    80003868:	fffff097          	auipc	ra,0xfffff
    8000386c:	260080e7          	jalr	608(ra) # 80002ac8 <_Z11buddy_allocP14buddyAllocatorm>
    80003870:	00050913          	mv	s2,a0
    printBuddyInfo(buddy);
    80003874:	00048513          	mv	a0,s1
    80003878:	fffff097          	auipc	ra,0xfffff
    8000387c:	578080e7          	jalr	1400(ra) # 80002df0 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_free(buddy, adr, 1);
    80003880:	00100613          	li	a2,1
    80003884:	00090593          	mv	a1,s2
    80003888:	00048513          	mv	a0,s1
    8000388c:	fffff097          	auipc	ra,0xfffff
    80003890:	50c080e7          	jalr	1292(ra) # 80002d98 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003894:	00048513          	mv	a0,s1
    80003898:	fffff097          	auipc	ra,0xfffff
    8000389c:	558080e7          	jalr	1368(ra) # 80002df0 <_Z14printBuddyInfoP14buddyAllocator>

    adr = buddy_alloc(buddy, 2);
    800038a0:	00200593          	li	a1,2
    800038a4:	00048513          	mv	a0,s1
    800038a8:	fffff097          	auipc	ra,0xfffff
    800038ac:	220080e7          	jalr	544(ra) # 80002ac8 <_Z11buddy_allocP14buddyAllocatorm>
    800038b0:	00050913          	mv	s2,a0
    void* adr2 = buddy_alloc(buddy, 3);
    800038b4:	00300593          	li	a1,3
    800038b8:	00048513          	mv	a0,s1
    800038bc:	fffff097          	auipc	ra,0xfffff
    800038c0:	20c080e7          	jalr	524(ra) # 80002ac8 <_Z11buddy_allocP14buddyAllocatorm>
    800038c4:	00050993          	mv	s3,a0
    printBuddyInfo(buddy);
    800038c8:	00048513          	mv	a0,s1
    800038cc:	fffff097          	auipc	ra,0xfffff
    800038d0:	524080e7          	jalr	1316(ra) # 80002df0 <_Z14printBuddyInfoP14buddyAllocator>

    buddy_free(buddy, adr, 2);
    800038d4:	00200613          	li	a2,2
    800038d8:	00090593          	mv	a1,s2
    800038dc:	00048513          	mv	a0,s1
    800038e0:	fffff097          	auipc	ra,0xfffff
    800038e4:	4b8080e7          	jalr	1208(ra) # 80002d98 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    800038e8:	00048513          	mv	a0,s1
    800038ec:	fffff097          	auipc	ra,0xfffff
    800038f0:	504080e7          	jalr	1284(ra) # 80002df0 <_Z14printBuddyInfoP14buddyAllocator>
    adr = buddy_alloc(buddy, 1);
    800038f4:	00100593          	li	a1,1
    800038f8:	00048513          	mv	a0,s1
    800038fc:	fffff097          	auipc	ra,0xfffff
    80003900:	1cc080e7          	jalr	460(ra) # 80002ac8 <_Z11buddy_allocP14buddyAllocatorm>
    80003904:	00050913          	mv	s2,a0
    printBuddyInfo(buddy);
    80003908:	00048513          	mv	a0,s1
    8000390c:	fffff097          	auipc	ra,0xfffff
    80003910:	4e4080e7          	jalr	1252(ra) # 80002df0 <_Z14printBuddyInfoP14buddyAllocator>

    buddy_free(buddy, adr2, 3);
    80003914:	00300613          	li	a2,3
    80003918:	00098593          	mv	a1,s3
    8000391c:	00048513          	mv	a0,s1
    80003920:	fffff097          	auipc	ra,0xfffff
    80003924:	478080e7          	jalr	1144(ra) # 80002d98 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003928:	00048513          	mv	a0,s1
    8000392c:	fffff097          	auipc	ra,0xfffff
    80003930:	4c4080e7          	jalr	1220(ra) # 80002df0 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_free(buddy, adr, 1);
    80003934:	00100613          	li	a2,1
    80003938:	00090593          	mv	a1,s2
    8000393c:	00048513          	mv	a0,s1
    80003940:	fffff097          	auipc	ra,0xfffff
    80003944:	458080e7          	jalr	1112(ra) # 80002d98 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003948:	00048513          	mv	a0,s1
    8000394c:	fffff097          	auipc	ra,0xfffff
    80003950:	4a4080e7          	jalr	1188(ra) # 80002df0 <_Z14printBuddyInfoP14buddyAllocator>
    80003954:	02813083          	ld	ra,40(sp)
    80003958:	02013403          	ld	s0,32(sp)
    8000395c:	01813483          	ld	s1,24(sp)
    80003960:	01013903          	ld	s2,16(sp)
    80003964:	00813983          	ld	s3,8(sp)
    80003968:	03010113          	addi	sp,sp,48
    8000396c:	00008067          	ret

0000000080003970 <_ZN6Thread6runnerEPv>:
    myHandle = 0;
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    80003970:	ff010113          	addi	sp,sp,-16
    80003974:	00113423          	sd	ra,8(sp)
    80003978:	00813023          	sd	s0,0(sp)
    8000397c:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    80003980:	00053783          	ld	a5,0(a0)
    80003984:	0107b783          	ld	a5,16(a5)
    80003988:	000780e7          	jalr	a5
}
    8000398c:	00813083          	ld	ra,8(sp)
    80003990:	00013403          	ld	s0,0(sp)
    80003994:	01010113          	addi	sp,sp,16
    80003998:	00008067          	ret

000000008000399c <_ZN6ThreadD1Ev>:

Thread::~Thread()
    8000399c:	00007797          	auipc	a5,0x7
    800039a0:	dec78793          	addi	a5,a5,-532 # 8000a788 <_ZTV6Thread+0x10>
    800039a4:	00f53023          	sd	a5,0(a0)
{
    delete myHandle;
    800039a8:	00853503          	ld	a0,8(a0)
    800039ac:	02050663          	beqz	a0,800039d8 <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread()
    800039b0:	ff010113          	addi	sp,sp,-16
    800039b4:	00113423          	sd	ra,8(sp)
    800039b8:	00813023          	sd	s0,0(sp)
    800039bc:	01010413          	addi	s0,sp,16
    delete myHandle;
    800039c0:	fffff097          	auipc	ra,0xfffff
    800039c4:	908080e7          	jalr	-1784(ra) # 800022c8 <_ZN7_threaddlEPv>
}
    800039c8:	00813083          	ld	ra,8(sp)
    800039cc:	00013403          	ld	s0,0(sp)
    800039d0:	01010113          	addi	sp,sp,16
    800039d4:	00008067          	ret
    800039d8:	00008067          	ret

00000000800039dc <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    800039dc:	00007797          	auipc	a5,0x7
    800039e0:	dd478793          	addi	a5,a5,-556 # 8000a7b0 <_ZTV9Semaphore+0x10>
    800039e4:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    800039e8:	00853503          	ld	a0,8(a0)
    800039ec:	02050663          	beqz	a0,80003a18 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    800039f0:	ff010113          	addi	sp,sp,-16
    800039f4:	00113423          	sd	ra,8(sp)
    800039f8:	00813023          	sd	s0,0(sp)
    800039fc:	01010413          	addi	s0,sp,16
    delete myHandle;
    80003a00:	00000097          	auipc	ra,0x0
    80003a04:	464080e7          	jalr	1124(ra) # 80003e64 <_ZN4_semdlEPv>
}
    80003a08:	00813083          	ld	ra,8(sp)
    80003a0c:	00013403          	ld	s0,0(sp)
    80003a10:	01010113          	addi	sp,sp,16
    80003a14:	00008067          	ret
    80003a18:	00008067          	ret

0000000080003a1c <_Znwm>:
{
    80003a1c:	ff010113          	addi	sp,sp,-16
    80003a20:	00113423          	sd	ra,8(sp)
    80003a24:	00813023          	sd	s0,0(sp)
    80003a28:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80003a2c:	ffffe097          	auipc	ra,0xffffe
    80003a30:	544080e7          	jalr	1348(ra) # 80001f70 <_Z9mem_allocm>
}
    80003a34:	00813083          	ld	ra,8(sp)
    80003a38:	00013403          	ld	s0,0(sp)
    80003a3c:	01010113          	addi	sp,sp,16
    80003a40:	00008067          	ret

0000000080003a44 <_ZdlPv>:
{
    80003a44:	ff010113          	addi	sp,sp,-16
    80003a48:	00113423          	sd	ra,8(sp)
    80003a4c:	00813023          	sd	s0,0(sp)
    80003a50:	01010413          	addi	s0,sp,16
    mem_free(p);
    80003a54:	ffffe097          	auipc	ra,0xffffe
    80003a58:	54c080e7          	jalr	1356(ra) # 80001fa0 <_Z8mem_freePv>
}
    80003a5c:	00813083          	ld	ra,8(sp)
    80003a60:	00013403          	ld	s0,0(sp)
    80003a64:	01010113          	addi	sp,sp,16
    80003a68:	00008067          	ret

0000000080003a6c <_ZN6ThreadD0Ev>:
Thread::~Thread()
    80003a6c:	fe010113          	addi	sp,sp,-32
    80003a70:	00113c23          	sd	ra,24(sp)
    80003a74:	00813823          	sd	s0,16(sp)
    80003a78:	00913423          	sd	s1,8(sp)
    80003a7c:	02010413          	addi	s0,sp,32
    80003a80:	00050493          	mv	s1,a0
}
    80003a84:	00000097          	auipc	ra,0x0
    80003a88:	f18080e7          	jalr	-232(ra) # 8000399c <_ZN6ThreadD1Ev>
    80003a8c:	00048513          	mv	a0,s1
    80003a90:	00000097          	auipc	ra,0x0
    80003a94:	fb4080e7          	jalr	-76(ra) # 80003a44 <_ZdlPv>
    80003a98:	01813083          	ld	ra,24(sp)
    80003a9c:	01013403          	ld	s0,16(sp)
    80003aa0:	00813483          	ld	s1,8(sp)
    80003aa4:	02010113          	addi	sp,sp,32
    80003aa8:	00008067          	ret

0000000080003aac <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80003aac:	fe010113          	addi	sp,sp,-32
    80003ab0:	00113c23          	sd	ra,24(sp)
    80003ab4:	00813823          	sd	s0,16(sp)
    80003ab8:	00913423          	sd	s1,8(sp)
    80003abc:	02010413          	addi	s0,sp,32
    80003ac0:	00050493          	mv	s1,a0
}
    80003ac4:	00000097          	auipc	ra,0x0
    80003ac8:	f18080e7          	jalr	-232(ra) # 800039dc <_ZN9SemaphoreD1Ev>
    80003acc:	00048513          	mv	a0,s1
    80003ad0:	00000097          	auipc	ra,0x0
    80003ad4:	f74080e7          	jalr	-140(ra) # 80003a44 <_ZdlPv>
    80003ad8:	01813083          	ld	ra,24(sp)
    80003adc:	01013403          	ld	s0,16(sp)
    80003ae0:	00813483          	ld	s1,8(sp)
    80003ae4:	02010113          	addi	sp,sp,32
    80003ae8:	00008067          	ret

0000000080003aec <_ZN6Thread5startEv>:
    if(myHandle != 0)
    80003aec:	00853503          	ld	a0,8(a0)
    80003af0:	02050663          	beqz	a0,80003b1c <_ZN6Thread5startEv+0x30>
{
    80003af4:	ff010113          	addi	sp,sp,-16
    80003af8:	00113423          	sd	ra,8(sp)
    80003afc:	00813023          	sd	s0,0(sp)
    80003b00:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    80003b04:	ffffe097          	auipc	ra,0xffffe
    80003b08:	678080e7          	jalr	1656(ra) # 8000217c <_Z12thread_startPv>
}
    80003b0c:	00813083          	ld	ra,8(sp)
    80003b10:	00013403          	ld	s0,0(sp)
    80003b14:	01010113          	addi	sp,sp,16
    80003b18:	00008067          	ret
        return -1;
    80003b1c:	fff00513          	li	a0,-1
}
    80003b20:	00008067          	ret

0000000080003b24 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80003b24:	ff010113          	addi	sp,sp,-16
    80003b28:	00113423          	sd	ra,8(sp)
    80003b2c:	00813023          	sd	s0,0(sp)
    80003b30:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80003b34:	ffffe097          	auipc	ra,0xffffe
    80003b38:	518080e7          	jalr	1304(ra) # 8000204c <_Z15thread_dispatchv>
}
    80003b3c:	00813083          	ld	ra,8(sp)
    80003b40:	00013403          	ld	s0,0(sp)
    80003b44:	01010113          	addi	sp,sp,16
    80003b48:	00008067          	ret

0000000080003b4c <_ZN6Thread5sleepEm>:
{
    80003b4c:	ff010113          	addi	sp,sp,-16
    80003b50:	00113423          	sd	ra,8(sp)
    80003b54:	00813023          	sd	s0,0(sp)
    80003b58:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80003b5c:	ffffe097          	auipc	ra,0xffffe
    80003b60:	5f4080e7          	jalr	1524(ra) # 80002150 <_Z10time_sleepm>
}
    80003b64:	00813083          	ld	ra,8(sp)
    80003b68:	00013403          	ld	s0,0(sp)
    80003b6c:	01010113          	addi	sp,sp,16
    80003b70:	00008067          	ret

0000000080003b74 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    80003b74:	fe010113          	addi	sp,sp,-32
    80003b78:	00113c23          	sd	ra,24(sp)
    80003b7c:	00813823          	sd	s0,16(sp)
    80003b80:	00913423          	sd	s1,8(sp)
    80003b84:	01213023          	sd	s2,0(sp)
    80003b88:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    80003b8c:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    80003b90:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    80003b94:	0004b783          	ld	a5,0(s1)
    80003b98:	0187b783          	ld	a5,24(a5)
    80003b9c:	00048513          	mv	a0,s1
    80003ba0:	000780e7          	jalr	a5
        Thread::sleep(time);
    80003ba4:	00090513          	mv	a0,s2
    80003ba8:	00000097          	auipc	ra,0x0
    80003bac:	fa4080e7          	jalr	-92(ra) # 80003b4c <_ZN6Thread5sleepEm>
    while(true)
    80003bb0:	fe5ff06f          	j	80003b94 <_ZN14PeriodicThread6runnerEPv+0x20>

0000000080003bb4 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    80003bb4:	ff010113          	addi	sp,sp,-16
    80003bb8:	00113423          	sd	ra,8(sp)
    80003bbc:	00813023          	sd	s0,0(sp)
    80003bc0:	01010413          	addi	s0,sp,16
    80003bc4:	00007797          	auipc	a5,0x7
    80003bc8:	bc478793          	addi	a5,a5,-1084 # 8000a788 <_ZTV6Thread+0x10>
    80003bcc:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    80003bd0:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, body, args);
    80003bd4:	00850513          	addi	a0,a0,8
    80003bd8:	ffffe097          	auipc	ra,0xffffe
    80003bdc:	5d0080e7          	jalr	1488(ra) # 800021a8 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    80003be0:	00813083          	ld	ra,8(sp)
    80003be4:	00013403          	ld	s0,0(sp)
    80003be8:	01010113          	addi	sp,sp,16
    80003bec:	00008067          	ret

0000000080003bf0 <_ZN6ThreadC1Ev>:
Thread::Thread()
    80003bf0:	ff010113          	addi	sp,sp,-16
    80003bf4:	00113423          	sd	ra,8(sp)
    80003bf8:	00813023          	sd	s0,0(sp)
    80003bfc:	01010413          	addi	s0,sp,16
    80003c00:	00007797          	auipc	a5,0x7
    80003c04:	b8878793          	addi	a5,a5,-1144 # 8000a788 <_ZTV6Thread+0x10>
    80003c08:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    80003c0c:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    80003c10:	00050613          	mv	a2,a0
    80003c14:	00000597          	auipc	a1,0x0
    80003c18:	d5c58593          	addi	a1,a1,-676 # 80003970 <_ZN6Thread6runnerEPv>
    80003c1c:	00850513          	addi	a0,a0,8
    80003c20:	ffffe097          	auipc	ra,0xffffe
    80003c24:	588080e7          	jalr	1416(ra) # 800021a8 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    80003c28:	00813083          	ld	ra,8(sp)
    80003c2c:	00013403          	ld	s0,0(sp)
    80003c30:	01010113          	addi	sp,sp,16
    80003c34:	00008067          	ret

0000000080003c38 <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    80003c38:	00853503          	ld	a0,8(a0)
    80003c3c:	02050663          	beqz	a0,80003c68 <_ZN9Semaphore4waitEv+0x30>
{
    80003c40:	ff010113          	addi	sp,sp,-16
    80003c44:	00113423          	sd	ra,8(sp)
    80003c48:	00813023          	sd	s0,0(sp)
    80003c4c:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80003c50:	ffffe097          	auipc	ra,0xffffe
    80003c54:	4a8080e7          	jalr	1192(ra) # 800020f8 <_Z8sem_waitP4_sem>
}
    80003c58:	00813083          	ld	ra,8(sp)
    80003c5c:	00013403          	ld	s0,0(sp)
    80003c60:	01010113          	addi	sp,sp,16
    80003c64:	00008067          	ret
        return -1;
    80003c68:	fff00513          	li	a0,-1
}
    80003c6c:	00008067          	ret

0000000080003c70 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    80003c70:	fe010113          	addi	sp,sp,-32
    80003c74:	00113c23          	sd	ra,24(sp)
    80003c78:	00813823          	sd	s0,16(sp)
    80003c7c:	00913423          	sd	s1,8(sp)
    80003c80:	02010413          	addi	s0,sp,32
    80003c84:	00050493          	mv	s1,a0
    80003c88:	00007797          	auipc	a5,0x7
    80003c8c:	b2878793          	addi	a5,a5,-1240 # 8000a7b0 <_ZTV9Semaphore+0x10>
    80003c90:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    80003c94:	00850513          	addi	a0,a0,8
    80003c98:	ffffe097          	auipc	ra,0xffffe
    80003c9c:	3fc080e7          	jalr	1020(ra) # 80002094 <_Z8sem_openPP4_semj>
    if(retval != 0)
    80003ca0:	00050463          	beqz	a0,80003ca8 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    80003ca4:	0004b423          	sd	zero,8(s1)
}
    80003ca8:	01813083          	ld	ra,24(sp)
    80003cac:	01013403          	ld	s0,16(sp)
    80003cb0:	00813483          	ld	s1,8(sp)
    80003cb4:	02010113          	addi	sp,sp,32
    80003cb8:	00008067          	ret

0000000080003cbc <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    80003cbc:	00853503          	ld	a0,8(a0)
    80003cc0:	02050663          	beqz	a0,80003cec <_ZN9Semaphore6signalEv+0x30>
{
    80003cc4:	ff010113          	addi	sp,sp,-16
    80003cc8:	00113423          	sd	ra,8(sp)
    80003ccc:	00813023          	sd	s0,0(sp)
    80003cd0:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80003cd4:	ffffe097          	auipc	ra,0xffffe
    80003cd8:	450080e7          	jalr	1104(ra) # 80002124 <_Z10sem_signalP4_sem>
}
    80003cdc:	00813083          	ld	ra,8(sp)
    80003ce0:	00013403          	ld	s0,0(sp)
    80003ce4:	01010113          	addi	sp,sp,16
    80003ce8:	00008067          	ret
        return -1;
    80003cec:	fff00513          	li	a0,-1
}
    80003cf0:	00008067          	ret

0000000080003cf4 <_ZN7Console4getcEv>:
{
    80003cf4:	ff010113          	addi	sp,sp,-16
    80003cf8:	00113423          	sd	ra,8(sp)
    80003cfc:	00813023          	sd	s0,0(sp)
    80003d00:	01010413          	addi	s0,sp,16
    return ::getc();
    80003d04:	ffffe097          	auipc	ra,0xffffe
    80003d08:	524080e7          	jalr	1316(ra) # 80002228 <_Z4getcv>
}
    80003d0c:	00813083          	ld	ra,8(sp)
    80003d10:	00013403          	ld	s0,0(sp)
    80003d14:	01010113          	addi	sp,sp,16
    80003d18:	00008067          	ret

0000000080003d1c <_ZN7Console4putcEc>:
{
    80003d1c:	ff010113          	addi	sp,sp,-16
    80003d20:	00113423          	sd	ra,8(sp)
    80003d24:	00813023          	sd	s0,0(sp)
    80003d28:	01010413          	addi	s0,sp,16
    return ::putc(c);
    80003d2c:	ffffe097          	auipc	ra,0xffffe
    80003d30:	524080e7          	jalr	1316(ra) # 80002250 <_Z4putcc>
}
    80003d34:	00813083          	ld	ra,8(sp)
    80003d38:	00013403          	ld	s0,0(sp)
    80003d3c:	01010113          	addi	sp,sp,16
    80003d40:	00008067          	ret

0000000080003d44 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80003d44:	fe010113          	addi	sp,sp,-32
    80003d48:	00113c23          	sd	ra,24(sp)
    80003d4c:	00813823          	sd	s0,16(sp)
    80003d50:	00913423          	sd	s1,8(sp)
    80003d54:	01213023          	sd	s2,0(sp)
    80003d58:	02010413          	addi	s0,sp,32
    80003d5c:	00050493          	mv	s1,a0
    80003d60:	00058913          	mv	s2,a1
    80003d64:	01000513          	li	a0,16
    80003d68:	00000097          	auipc	ra,0x0
    80003d6c:	cb4080e7          	jalr	-844(ra) # 80003a1c <_Znwm>
    80003d70:	00050613          	mv	a2,a0
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    80003d74:	00953023          	sd	s1,0(a0)
    80003d78:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80003d7c:	00000597          	auipc	a1,0x0
    80003d80:	df858593          	addi	a1,a1,-520 # 80003b74 <_ZN14PeriodicThread6runnerEPv>
    80003d84:	00048513          	mv	a0,s1
    80003d88:	00000097          	auipc	ra,0x0
    80003d8c:	e2c080e7          	jalr	-468(ra) # 80003bb4 <_ZN6ThreadC1EPFvPvES0_>
    80003d90:	00007797          	auipc	a5,0x7
    80003d94:	9c878793          	addi	a5,a5,-1592 # 8000a758 <_ZTV14PeriodicThread+0x10>
    80003d98:	00f4b023          	sd	a5,0(s1)
}
    80003d9c:	01813083          	ld	ra,24(sp)
    80003da0:	01013403          	ld	s0,16(sp)
    80003da4:	00813483          	ld	s1,8(sp)
    80003da8:	00013903          	ld	s2,0(sp)
    80003dac:	02010113          	addi	sp,sp,32
    80003db0:	00008067          	ret

0000000080003db4 <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    80003db4:	ff010113          	addi	sp,sp,-16
    80003db8:	00813423          	sd	s0,8(sp)
    80003dbc:	01010413          	addi	s0,sp,16
    80003dc0:	00813403          	ld	s0,8(sp)
    80003dc4:	01010113          	addi	sp,sp,16
    80003dc8:	00008067          	ret

0000000080003dcc <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    80003dcc:	ff010113          	addi	sp,sp,-16
    80003dd0:	00813423          	sd	s0,8(sp)
    80003dd4:	01010413          	addi	s0,sp,16
    80003dd8:	00813403          	ld	s0,8(sp)
    80003ddc:	01010113          	addi	sp,sp,16
    80003de0:	00008067          	ret

0000000080003de4 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    80003de4:	ff010113          	addi	sp,sp,-16
    80003de8:	00113423          	sd	ra,8(sp)
    80003dec:	00813023          	sd	s0,0(sp)
    80003df0:	01010413          	addi	s0,sp,16
    80003df4:	00007797          	auipc	a5,0x7
    80003df8:	96478793          	addi	a5,a5,-1692 # 8000a758 <_ZTV14PeriodicThread+0x10>
    80003dfc:	00f53023          	sd	a5,0(a0)
    80003e00:	00000097          	auipc	ra,0x0
    80003e04:	b9c080e7          	jalr	-1124(ra) # 8000399c <_ZN6ThreadD1Ev>
    80003e08:	00813083          	ld	ra,8(sp)
    80003e0c:	00013403          	ld	s0,0(sp)
    80003e10:	01010113          	addi	sp,sp,16
    80003e14:	00008067          	ret

0000000080003e18 <_ZN14PeriodicThreadD0Ev>:
    80003e18:	fe010113          	addi	sp,sp,-32
    80003e1c:	00113c23          	sd	ra,24(sp)
    80003e20:	00813823          	sd	s0,16(sp)
    80003e24:	00913423          	sd	s1,8(sp)
    80003e28:	02010413          	addi	s0,sp,32
    80003e2c:	00050493          	mv	s1,a0
    80003e30:	00007797          	auipc	a5,0x7
    80003e34:	92878793          	addi	a5,a5,-1752 # 8000a758 <_ZTV14PeriodicThread+0x10>
    80003e38:	00f53023          	sd	a5,0(a0)
    80003e3c:	00000097          	auipc	ra,0x0
    80003e40:	b60080e7          	jalr	-1184(ra) # 8000399c <_ZN6ThreadD1Ev>
    80003e44:	00048513          	mv	a0,s1
    80003e48:	00000097          	auipc	ra,0x0
    80003e4c:	bfc080e7          	jalr	-1028(ra) # 80003a44 <_ZdlPv>
    80003e50:	01813083          	ld	ra,24(sp)
    80003e54:	01013403          	ld	s0,16(sp)
    80003e58:	00813483          	ld	s1,8(sp)
    80003e5c:	02010113          	addi	sp,sp,32
    80003e60:	00008067          	ret

0000000080003e64 <_ZN4_semdlEPv>:
//

#include "../h/_sem.hpp"
#include "../h/syscall_c.hpp"

void _sem::operator delete(void *p) {
    80003e64:	ff010113          	addi	sp,sp,-16
    80003e68:	00113423          	sd	ra,8(sp)
    80003e6c:	00813023          	sd	s0,0(sp)
    80003e70:	01010413          	addi	s0,sp,16
    sem_close((sem_t)p);
    80003e74:	ffffe097          	auipc	ra,0xffffe
    80003e78:	258080e7          	jalr	600(ra) # 800020cc <_Z9sem_closeP4_sem>
}
    80003e7c:	00813083          	ld	ra,8(sp)
    80003e80:	00013403          	ld	s0,0(sp)
    80003e84:	01010113          	addi	sp,sp,16
    80003e88:	00008067          	ret

0000000080003e8c <_ZN5Riscv20initMemoryAllocationEv>:
bool Riscv::kernelMainCalled = false;
kmem_cache_t * Riscv::pcbCache = nullptr;
kmem_cache_t * Riscv::semaphoreCache = nullptr;

void Riscv::initMemoryAllocation()
{
    80003e8c:	ff010113          	addi	sp,sp,-16
    80003e90:	00113423          	sd	ra,8(sp)
    80003e94:	00813023          	sd	s0,0(sp)
    80003e98:	01010413          	addi	s0,sp,16
    size_t totalNumOfBytes = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1;
    80003e9c:	00007797          	auipc	a5,0x7
    80003ea0:	9547b783          	ld	a5,-1708(a5) # 8000a7f0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003ea4:	0007b503          	ld	a0,0(a5)
    80003ea8:	00007797          	auipc	a5,0x7
    80003eac:	9b07b783          	ld	a5,-1616(a5) # 8000a858 <_GLOBAL_OFFSET_TABLE_+0x80>
    80003eb0:	0007b783          	ld	a5,0(a5)
    80003eb4:	40a787b3          	sub	a5,a5,a0
    80003eb8:	00178793          	addi	a5,a5,1
    size_t bytesForKernel = totalNumOfBytes / 10; //TODO change this if needed
    80003ebc:	00a00713          	li	a4,10
    80003ec0:	02e7d7b3          	divu	a5,a5,a4
    size_t numOfBlocks = (bytesForKernel + BLOCK_NUM_OF_BYTES - 1) / BLOCK_NUM_OF_BYTES;
    80003ec4:	00001737          	lui	a4,0x1
    80003ec8:	fff70713          	addi	a4,a4,-1 # fff <_entry-0x7ffff001>
    80003ecc:	00e787b3          	add	a5,a5,a4

    void* newStartAddr = (void*)((size_t)HEAP_START_ADDR + numOfBlocks*BLOCK_NUM_OF_BYTES);
    80003ed0:	fffff737          	lui	a4,0xfffff
    80003ed4:	00e7f7b3          	and	a5,a5,a4
    MemoryAllocator::initMemory(newStartAddr);
    80003ed8:	00f50533          	add	a0,a0,a5
    80003edc:	00000097          	auipc	ra,0x0
    80003ee0:	5d0080e7          	jalr	1488(ra) # 800044ac <_ZN15MemoryAllocator10initMemoryEPv>

    //kmem_init((void*)HEAP_START_ADDR, numOfBlocks);
    //pcbCache = kmem_cache_create("Cache of PCBs", sizeof(PCB), nullptr, nullptr);
    //semaphoreCache = kmem_cache_create("Cache of KSemaphore", sizeof(KSemaphore), nullptr, nullptr);
}
    80003ee4:	00813083          	ld	ra,8(sp)
    80003ee8:	00013403          	ld	s0,0(sp)
    80003eec:	01010113          	addi	sp,sp,16
    80003ef0:	00008067          	ret

0000000080003ef4 <_ZN5Riscv10initSystemEv>:

void Riscv::initSystem()
{
    80003ef4:	fe010113          	addi	sp,sp,-32
    80003ef8:	00113c23          	sd	ra,24(sp)
    80003efc:	00813823          	sd	s0,16(sp)
    80003f00:	00913423          	sd	s1,8(sp)
    80003f04:	01213023          	sd	s2,0(sp)
    80003f08:	02010413          	addi	s0,sp,32
    w_stvec((uint64)&Riscv::supervisorTrap);
    80003f0c:	00007797          	auipc	a5,0x7
    80003f10:	8f47b783          	ld	a5,-1804(a5) # 8000a800 <_GLOBAL_OFFSET_TABLE_+0x28>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80003f14:	10579073          	csrw	stvec,a5

    size_t totalNumOfBytes = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1;
    80003f18:	00007497          	auipc	s1,0x7
    80003f1c:	8d84b483          	ld	s1,-1832(s1) # 8000a7f0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003f20:	0004b503          	ld	a0,0(s1)
    80003f24:	00007797          	auipc	a5,0x7
    80003f28:	9347b783          	ld	a5,-1740(a5) # 8000a858 <_GLOBAL_OFFSET_TABLE_+0x80>
    80003f2c:	0007b783          	ld	a5,0(a5)
    80003f30:	40a787b3          	sub	a5,a5,a0
    80003f34:	00178793          	addi	a5,a5,1
    size_t bytesForKernel = totalNumOfBytes / 10; //TODO change this if needed
    80003f38:	00a00713          	li	a4,10
    80003f3c:	02e7d7b3          	divu	a5,a5,a4
    size_t numOfBlocks = (bytesForKernel + BLOCK_NUM_OF_BYTES - 1) / BLOCK_NUM_OF_BYTES;
    80003f40:	00001737          	lui	a4,0x1
    80003f44:	fff70713          	addi	a4,a4,-1 # fff <_entry-0x7ffff001>
    80003f48:	00e787b3          	add	a5,a5,a4
    80003f4c:	00c7d913          	srli	s2,a5,0xc
    void* newStartAddr = (void*)((size_t)HEAP_START_ADDR + numOfBlocks*BLOCK_NUM_OF_BYTES);
    80003f50:	fffff737          	lui	a4,0xfffff
    80003f54:	00e7f7b3          	and	a5,a5,a4
    MemoryAllocator::initMemory(newStartAddr);
    80003f58:	00f50533          	add	a0,a0,a5
    80003f5c:	00000097          	auipc	ra,0x0
    80003f60:	550080e7          	jalr	1360(ra) # 800044ac <_ZN15MemoryAllocator10initMemoryEPv>

    kmem_init((void*)HEAP_START_ADDR, numOfBlocks);
    80003f64:	0009059b          	sext.w	a1,s2
    80003f68:	0004b503          	ld	a0,0(s1)
    80003f6c:	ffffe097          	auipc	ra,0xffffe
    80003f70:	9ec080e7          	jalr	-1556(ra) # 80001958 <_Z9kmem_initPvi>
    pcbCache = kmem_cache_create("Cache of PCBs", sizeof(PCB), nullptr, nullptr);
    80003f74:	00000693          	li	a3,0
    80003f78:	00000613          	li	a2,0
    80003f7c:	06000593          	li	a1,96
    80003f80:	00004517          	auipc	a0,0x4
    80003f84:	2b850513          	addi	a0,a0,696 # 80008238 <CONSOLE_STATUS+0x228>
    80003f88:	ffffe097          	auipc	ra,0xffffe
    80003f8c:	aec080e7          	jalr	-1300(ra) # 80001a74 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80003f90:	0000b497          	auipc	s1,0xb
    80003f94:	9b848493          	addi	s1,s1,-1608 # 8000e948 <_ZN5Riscv8pcbCacheE>
    80003f98:	00a4b023          	sd	a0,0(s1)
    semaphoreCache = kmem_cache_create("Cache of KSemaphore", sizeof(KSemaphore), nullptr, nullptr);
    80003f9c:	00000693          	li	a3,0
    80003fa0:	00000613          	li	a2,0
    80003fa4:	01800593          	li	a1,24
    80003fa8:	00004517          	auipc	a0,0x4
    80003fac:	2a050513          	addi	a0,a0,672 # 80008248 <CONSOLE_STATUS+0x238>
    80003fb0:	ffffe097          	auipc	ra,0xffffe
    80003fb4:	ac4080e7          	jalr	-1340(ra) # 80001a74 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80003fb8:	00a4b423          	sd	a0,8(s1)

    //initMemoryAllocation();
    PCB::initialize();
    80003fbc:	ffffe097          	auipc	ra,0xffffe
    80003fc0:	514080e7          	jalr	1300(ra) # 800024d0 <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80003fc4:	fffff097          	auipc	ra,0xfffff
    80003fc8:	e70080e7          	jalr	-400(ra) # 80002e34 <_ZN8KConsole10initializeEv>

}
    80003fcc:	01813083          	ld	ra,24(sp)
    80003fd0:	01013403          	ld	s0,16(sp)
    80003fd4:	00813483          	ld	s1,8(sp)
    80003fd8:	00013903          	ld	s2,0(sp)
    80003fdc:	02010113          	addi	sp,sp,32
    80003fe0:	00008067          	ret

0000000080003fe4 <_ZN5Riscv16enableInterruptsEv>:
        thread_dispatch();
    }
    disableInterrupts();
}

void Riscv::enableInterrupts() {
    80003fe4:	ff010113          	addi	sp,sp,-16
    80003fe8:	00813423          	sd	s0,8(sp)
    80003fec:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003ff0:	00200793          	li	a5,2
    80003ff4:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    80003ff8:	00813403          	ld	s0,8(sp)
    80003ffc:	01010113          	addi	sp,sp,16
    80004000:	00008067          	ret

0000000080004004 <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    80004004:	ff010113          	addi	sp,sp,-16
    80004008:	00813423          	sd	s0,8(sp)
    8000400c:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80004010:	00200793          	li	a5,2
    80004014:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    80004018:	00813403          	ld	s0,8(sp)
    8000401c:	01010113          	addi	sp,sp,16
    80004020:	00008067          	ret

0000000080004024 <_ZN5Riscv9endSystemEv>:
{
    80004024:	ff010113          	addi	sp,sp,-16
    80004028:	00113423          	sd	ra,8(sp)
    8000402c:	00813023          	sd	s0,0(sp)
    80004030:	01010413          	addi	s0,sp,16
    disableInterrupts();
    80004034:	00000097          	auipc	ra,0x0
    80004038:	fd0080e7          	jalr	-48(ra) # 80004004 <_ZN5Riscv17disableInterruptsEv>
    finishSystem = true;
    8000403c:	00100793          	li	a5,1
    80004040:	0000b717          	auipc	a4,0xb
    80004044:	90f70c23          	sb	a5,-1768(a4) # 8000e958 <_ZN5Riscv12finishSystemE>
        pcb = Scheduler::get();
    80004048:	fffff097          	auipc	ra,0xfffff
    8000404c:	5a4080e7          	jalr	1444(ra) # 800035ec <_ZN9Scheduler3getEv>
        if(pcb == 0) break;
    80004050:	fe051ce3          	bnez	a0,80004048 <_ZN5Riscv9endSystemEv+0x24>
    Scheduler::put(PCB::consolePCB);
    80004054:	00006797          	auipc	a5,0x6
    80004058:	7e47b783          	ld	a5,2020(a5) # 8000a838 <_GLOBAL_OFFSET_TABLE_+0x60>
    8000405c:	0007b503          	ld	a0,0(a5)
    80004060:	fffff097          	auipc	ra,0xfffff
    80004064:	538080e7          	jalr	1336(ra) # 80003598 <_ZN9Scheduler3putEP3PCB>
    KConsole::pendingGetc = 0;
    80004068:	00006797          	auipc	a5,0x6
    8000406c:	7a07b783          	ld	a5,1952(a5) # 8000a808 <_GLOBAL_OFFSET_TABLE_+0x30>
    80004070:	0007b023          	sd	zero,0(a5)
    enableInterrupts();
    80004074:	00000097          	auipc	ra,0x0
    80004078:	f70080e7          	jalr	-144(ra) # 80003fe4 <_ZN5Riscv16enableInterruptsEv>
    while(!PCB::consolePCB->isFinished())
    8000407c:	00006797          	auipc	a5,0x6
    80004080:	7bc7b783          	ld	a5,1980(a5) # 8000a838 <_GLOBAL_OFFSET_TABLE_+0x60>
    80004084:	0007b503          	ld	a0,0(a5)
    80004088:	ffffe097          	auipc	ra,0xffffe
    8000408c:	568080e7          	jalr	1384(ra) # 800025f0 <_ZN3PCB10isFinishedEv>
    80004090:	00051863          	bnez	a0,800040a0 <_ZN5Riscv9endSystemEv+0x7c>
        thread_dispatch();
    80004094:	ffffe097          	auipc	ra,0xffffe
    80004098:	fb8080e7          	jalr	-72(ra) # 8000204c <_Z15thread_dispatchv>
    while(!PCB::consolePCB->isFinished())
    8000409c:	fe1ff06f          	j	8000407c <_ZN5Riscv9endSystemEv+0x58>
    disableInterrupts();
    800040a0:	00000097          	auipc	ra,0x0
    800040a4:	f64080e7          	jalr	-156(ra) # 80004004 <_ZN5Riscv17disableInterruptsEv>
}
    800040a8:	00813083          	ld	ra,8(sp)
    800040ac:	00013403          	ld	s0,0(sp)
    800040b0:	01010113          	addi	sp,sp,16
    800040b4:	00008067          	ret

00000000800040b8 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    800040b8:	ff010113          	addi	sp,sp,-16
    800040bc:	00813423          	sd	s0,8(sp)
    800040c0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    800040c4:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800040c8:	10200073          	sret
}
    800040cc:	00813403          	ld	s0,8(sp)
    800040d0:	01010113          	addi	sp,sp,16
    800040d4:	00008067          	ret

00000000800040d8 <_ZN5Riscv10kernelMainEv>:
    }
}

void Riscv::kernelMain()
{
    if(kernelMainCalled) return;
    800040d8:	0000b797          	auipc	a5,0xb
    800040dc:	8817c783          	lbu	a5,-1919(a5) # 8000e959 <_ZN5Riscv16kernelMainCalledE>
    800040e0:	00078463          	beqz	a5,800040e8 <_ZN5Riscv10kernelMainEv+0x10>
    800040e4:	00008067          	ret
{
    800040e8:	ff010113          	addi	sp,sp,-16
    800040ec:	00113423          	sd	ra,8(sp)
    800040f0:	00813023          	sd	s0,0(sp)
    800040f4:	01010413          	addi	s0,sp,16
    kernelMainCalled = true;
    800040f8:	00100793          	li	a5,1
    800040fc:	0000b717          	auipc	a4,0xb
    80004100:	84f70ea3          	sb	a5,-1955(a4) # 8000e959 <_ZN5Riscv16kernelMainCalledE>

    initSystem();
    80004104:	00000097          	auipc	ra,0x0
    80004108:	df0080e7          	jalr	-528(ra) # 80003ef4 <_ZN5Riscv10initSystemEv>
    //slabCacheCreateTest2();
    //slabInitTest();
    //disableTimerInterrupts();
    enableInterrupts();
    8000410c:	00000097          	auipc	ra,0x0
    80004110:	ed8080e7          	jalr	-296(ra) # 80003fe4 <_ZN5Riscv16enableInterruptsEv>

    while(!PCB::userPCB->isFinished())
    80004114:	00006797          	auipc	a5,0x6
    80004118:	72c7b783          	ld	a5,1836(a5) # 8000a840 <_GLOBAL_OFFSET_TABLE_+0x68>
    8000411c:	0007b503          	ld	a0,0(a5)
    80004120:	ffffe097          	auipc	ra,0xffffe
    80004124:	4d0080e7          	jalr	1232(ra) # 800025f0 <_ZN3PCB10isFinishedEv>
    80004128:	00051863          	bnez	a0,80004138 <_ZN5Riscv10kernelMainEv+0x60>
    {
        thread_dispatch();
    8000412c:	ffffe097          	auipc	ra,0xffffe
    80004130:	f20080e7          	jalr	-224(ra) # 8000204c <_Z15thread_dispatchv>
    while(!PCB::userPCB->isFinished())
    80004134:	fe1ff06f          	j	80004114 <_ZN5Riscv10kernelMainEv+0x3c>
    }

    //printString("End...\n");
    endSystem();
    80004138:	00000097          	auipc	ra,0x0
    8000413c:	eec080e7          	jalr	-276(ra) # 80004024 <_ZN5Riscv9endSystemEv>
}
    80004140:	00813083          	ld	ra,8(sp)
    80004144:	00013403          	ld	s0,0(sp)
    80004148:	01010113          	addi	sp,sp,16
    8000414c:	00008067          	ret

0000000080004150 <_ZN5Riscv15userMainWrapperEPv>:

void Riscv::userMainWrapper(void* )
{
    80004150:	ff010113          	addi	sp,sp,-16
    80004154:	00113423          	sd	ra,8(sp)
    80004158:	00813023          	sd	s0,0(sp)
    8000415c:	01010413          	addi	s0,sp,16
    userMain();
    80004160:	00002097          	auipc	ra,0x2
    80004164:	a6c080e7          	jalr	-1428(ra) # 80005bcc <_Z8userMainv>
}
    80004168:	00813083          	ld	ra,8(sp)
    8000416c:	00013403          	ld	s0,0(sp)
    80004170:	01010113          	addi	sp,sp,16
    80004174:	00008067          	ret

0000000080004178 <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    80004178:	ff010113          	addi	sp,sp,-16
    8000417c:	00813423          	sd	s0,8(sp)
    80004180:	01010413          	addi	s0,sp,16
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    80004184:	00200793          	li	a5,2
    80004188:	1047b073          	csrc	sie,a5
}
    8000418c:	00813403          	ld	s0,8(sp)
    80004190:	01010113          	addi	sp,sp,16
    80004194:	00008067          	ret

0000000080004198 <_ZN5Riscv13w_a0_sscratchEv>:

void Riscv::w_a0_sscratch()
{
    80004198:	ff010113          	addi	sp,sp,-16
    8000419c:	00813423          	sd	s0,8(sp)
    800041a0:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    800041a4:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    800041a8:	00006717          	auipc	a4,0x6
    800041ac:	6a873703          	ld	a4,1704(a4) # 8000a850 <_GLOBAL_OFFSET_TABLE_+0x78>
    800041b0:	00073703          	ld	a4,0(a4)
    800041b4:	01073703          	ld	a4,16(a4)
    800041b8:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    800041bc:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    800041c0:	00078593          	mv	a1,a5
}
    800041c4:	00813403          	ld	s0,8(sp)
    800041c8:	01010113          	addi	sp,sp,16
    800041cc:	00008067          	ret

00000000800041d0 <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    800041d0:	ff010113          	addi	sp,sp,-16
    800041d4:	00813423          	sd	s0,8(sp)
    800041d8:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread)
    800041dc:	00006797          	auipc	a5,0x6
    800041e0:	6747b783          	ld	a5,1652(a5) # 8000a850 <_GLOBAL_OFFSET_TABLE_+0x78>
    800041e4:	0007b783          	ld	a5,0(a5)
    800041e8:	0007c783          	lbu	a5,0(a5)
    800041ec:	00078c63          	beqz	a5,80004204 <_ZN5Riscv14changePrivModeEv+0x34>
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800041f0:	10000793          	li	a5,256
    800041f4:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    800041f8:	00813403          	ld	s0,8(sp)
    800041fc:	01010113          	addi	sp,sp,16
    80004200:	00008067          	ret
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80004204:	10000793          	li	a5,256
    80004208:	1007b073          	csrc	sstatus,a5
    8000420c:	fedff06f          	j	800041f8 <_ZN5Riscv14changePrivModeEv+0x28>

0000000080004210 <_ZN5Riscv20handleSupervisorTrapEv>:
{
    80004210:	f9010113          	addi	sp,sp,-112
    80004214:	06113423          	sd	ra,104(sp)
    80004218:	06813023          	sd	s0,96(sp)
    8000421c:	04913c23          	sd	s1,88(sp)
    80004220:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    80004224:	00070713          	mv	a4,a4
    80004228:	00006797          	auipc	a5,0x6
    8000422c:	6487b783          	ld	a5,1608(a5) # 8000a870 <_GLOBAL_OFFSET_TABLE_+0x98>
    80004230:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    80004234:	00006797          	auipc	a5,0x6
    80004238:	61c7b783          	ld	a5,1564(a5) # 8000a850 <_GLOBAL_OFFSET_TABLE_+0x78>
    8000423c:	0007b783          	ld	a5,0(a5)
    80004240:	14002773          	csrr	a4,sscratch
    80004244:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    80004248:	142027f3          	csrr	a5,scause
    8000424c:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80004250:	fb843783          	ld	a5,-72(s0)
    switch(scause)
    80004254:	00900713          	li	a4,9
    80004258:	02f76e63          	bltu	a4,a5,80004294 <_ZN5Riscv20handleSupervisorTrapEv+0x84>
    8000425c:	00800713          	li	a4,8
    80004260:	12e7f463          	bgeu	a5,a4,80004388 <_ZN5Riscv20handleSupervisorTrapEv+0x178>
    80004264:	00500713          	li	a4,5
    80004268:	10e78a63          	beq	a5,a4,8000437c <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
    8000426c:	00700713          	li	a4,7
    80004270:	00e79863          	bne	a5,a4,80004280 <_ZN5Riscv20handleSupervisorTrapEv+0x70>
            PCB::threadExitHandler();
    80004274:	ffffe097          	auipc	ra,0xffffe
    80004278:	3a0080e7          	jalr	928(ra) # 80002614 <_ZN3PCB17threadExitHandlerEv>
            break;
    8000427c:	0dc0006f          	j	80004358 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    switch(scause)
    80004280:	00200713          	li	a4,2
    80004284:	0ce79a63          	bne	a5,a4,80004358 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            PCB::threadExitHandler();
    80004288:	ffffe097          	auipc	ra,0xffffe
    8000428c:	38c080e7          	jalr	908(ra) # 80002614 <_ZN3PCB17threadExitHandlerEv>
            break;
    80004290:	0c80006f          	j	80004358 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    switch(scause)
    80004294:	fff00713          	li	a4,-1
    80004298:	03f71713          	slli	a4,a4,0x3f
    8000429c:	00170713          	addi	a4,a4,1
    800042a0:	02e78863          	beq	a5,a4,800042d0 <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
    800042a4:	fff00713          	li	a4,-1
    800042a8:	03f71713          	slli	a4,a4,0x3f
    800042ac:	00970713          	addi	a4,a4,9
    800042b0:	0ae79463          	bne	a5,a4,80004358 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            KConsole::getCharactersFromConsole();
    800042b4:	fffff097          	auipc	ra,0xfffff
    800042b8:	c98080e7          	jalr	-872(ra) # 80002f4c <_ZN8KConsole24getCharactersFromConsoleEv>
            plic_complete(plic_claim());
    800042bc:	00002097          	auipc	ra,0x2
    800042c0:	4b8080e7          	jalr	1208(ra) # 80006774 <plic_claim>
    800042c4:	00002097          	auipc	ra,0x2
    800042c8:	4e8080e7          	jalr	1256(ra) # 800067ac <plic_complete>
            break;
    800042cc:	08c0006f          	j	80004358 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800042d0:	141027f3          	csrr	a5,sepc
    800042d4:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    800042d8:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    800042dc:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800042e0:	100027f3          	csrr	a5,sstatus
    800042e4:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    800042e8:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    800042ec:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    800042f0:	00200793          	li	a5,2
    800042f4:	1447b073          	csrc	sip,a5
            totalTime++;
    800042f8:	0000a717          	auipc	a4,0xa
    800042fc:	65070713          	addi	a4,a4,1616 # 8000e948 <_ZN5Riscv8pcbCacheE>
    80004300:	01873783          	ld	a5,24(a4)
    80004304:	00178793          	addi	a5,a5,1
    80004308:	00f73c23          	sd	a5,24(a4)
            PCB::timeSliceCounter++;
    8000430c:	00006497          	auipc	s1,0x6
    80004310:	50c4b483          	ld	s1,1292(s1) # 8000a818 <_GLOBAL_OFFSET_TABLE_+0x40>
    80004314:	0004b783          	ld	a5,0(s1)
    80004318:	00178793          	addi	a5,a5,1
    8000431c:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80004320:	fffff097          	auipc	ra,0xfffff
    80004324:	168080e7          	jalr	360(ra) # 80003488 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    80004328:	00006797          	auipc	a5,0x6
    8000432c:	5287b783          	ld	a5,1320(a5) # 8000a850 <_GLOBAL_OFFSET_TABLE_+0x78>
    80004330:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80004334:	0187b783          	ld	a5,24(a5)
    80004338:	0004b703          	ld	a4,0(s1)
    8000433c:	02f77863          	bgeu	a4,a5,8000436c <_ZN5Riscv20handleSupervisorTrapEv+0x15c>
            Riscv::w_sstatus(sstatus);
    80004340:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80004344:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80004348:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    8000434c:	14179073          	csrw	sepc,a5
            changePrivMode();
    80004350:	00000097          	auipc	ra,0x0
    80004354:	e80080e7          	jalr	-384(ra) # 800041d0 <_ZN5Riscv14changePrivModeEv>
}
    80004358:	06813083          	ld	ra,104(sp)
    8000435c:	06013403          	ld	s0,96(sp)
    80004360:	05813483          	ld	s1,88(sp)
    80004364:	07010113          	addi	sp,sp,112
    80004368:	00008067          	ret
                PCB::timeSliceCounter = 0;
    8000436c:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80004370:	ffffe097          	auipc	ra,0xffffe
    80004374:	03c080e7          	jalr	60(ra) # 800023ac <_ZN3PCB8dispatchEv>
    80004378:	fc9ff06f          	j	80004340 <_ZN5Riscv20handleSupervisorTrapEv+0x130>
            PCB::threadExitHandler();
    8000437c:	ffffe097          	auipc	ra,0xffffe
    80004380:	298080e7          	jalr	664(ra) # 80002614 <_ZN3PCB17threadExitHandlerEv>
            break;
    80004384:	fd5ff06f          	j	80004358 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80004388:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    8000438c:	14102773          	csrr	a4,sepc
    80004390:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    80004394:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80004398:	00470713          	addi	a4,a4,4
    8000439c:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800043a0:	10002773          	csrr	a4,sstatus
    800043a4:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    800043a8:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    800043ac:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    800043b0:	04300713          	li	a4,67
    800043b4:	02f76463          	bltu	a4,a5,800043dc <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
    800043b8:	00279793          	slli	a5,a5,0x2
    800043bc:	00004717          	auipc	a4,0x4
    800043c0:	ea070713          	addi	a4,a4,-352 # 8000825c <CONSOLE_STATUS+0x24c>
    800043c4:	00e787b3          	add	a5,a5,a4
    800043c8:	0007a783          	lw	a5,0(a5)
    800043cc:	00e787b3          	add	a5,a5,a4
    800043d0:	00078067          	jr	a5
                    MemoryAllocator::memAllocHandler();
    800043d4:	00000097          	auipc	ra,0x0
    800043d8:	4f0080e7          	jalr	1264(ra) # 800048c4 <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    800043dc:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800043e0:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    800043e4:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    800043e8:	14179073          	csrw	sepc,a5
            changePrivMode();
    800043ec:	00000097          	auipc	ra,0x0
    800043f0:	de4080e7          	jalr	-540(ra) # 800041d0 <_ZN5Riscv14changePrivModeEv>
}
    800043f4:	f65ff06f          	j	80004358 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
                    MemoryAllocator::memFreeHandler();
    800043f8:	00000097          	auipc	ra,0x0
    800043fc:	530080e7          	jalr	1328(ra) # 80004928 <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    80004400:	fddff06f          	j	800043dc <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadMakePCBHandler();
    80004404:	ffffe097          	auipc	ra,0xffffe
    80004408:	3d4080e7          	jalr	980(ra) # 800027d8 <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    8000440c:	fd1ff06f          	j	800043dc <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadCreateHandler();
    80004410:	ffffe097          	auipc	ra,0xffffe
    80004414:	2e4080e7          	jalr	740(ra) # 800026f4 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    80004418:	fc5ff06f          	j	800043dc <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadStartHandler();
    8000441c:	ffffe097          	auipc	ra,0xffffe
    80004420:	378080e7          	jalr	888(ra) # 80002794 <_ZN3PCB18threadStartHandlerEv>
                    break;
    80004424:	fb9ff06f          	j	800043dc <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadDispatchHandler();
    80004428:	ffffe097          	auipc	ra,0xffffe
    8000442c:	238080e7          	jalr	568(ra) # 80002660 <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    80004430:	fadff06f          	j	800043dc <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadExitHandler();
    80004434:	ffffe097          	auipc	ra,0xffffe
    80004438:	1e0080e7          	jalr	480(ra) # 80002614 <_ZN3PCB17threadExitHandlerEv>
                    break;
    8000443c:	fa1ff06f          	j	800043dc <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadSleepHandler();
    80004440:	ffffe097          	auipc	ra,0xffffe
    80004444:	250080e7          	jalr	592(ra) # 80002690 <_ZN3PCB18threadSleepHandlerEv>
                    break;
    80004448:	f95ff06f          	j	800043dc <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                     PCB::threadDelPCBHandler();
    8000444c:	ffffe097          	auipc	ra,0xffffe
    80004450:	420080e7          	jalr	1056(ra) # 8000286c <_ZN3PCB19threadDelPCBHandlerEv>
                     break;
    80004454:	f89ff06f          	j	800043dc <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semOpenHandler();
    80004458:	00001097          	auipc	ra,0x1
    8000445c:	92c080e7          	jalr	-1748(ra) # 80004d84 <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    80004460:	f7dff06f          	j	800043dc <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semWaitHandler();
    80004464:	00001097          	auipc	ra,0x1
    80004468:	9d0080e7          	jalr	-1584(ra) # 80004e34 <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    8000446c:	f71ff06f          	j	800043dc <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semSignalHandler();
    80004470:	00001097          	auipc	ra,0x1
    80004474:	a18080e7          	jalr	-1512(ra) # 80004e88 <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80004478:	f65ff06f          	j	800043dc <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semCloseHandler();
    8000447c:	00001097          	auipc	ra,0x1
    80004480:	a50080e7          	jalr	-1456(ra) # 80004ecc <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    80004484:	f59ff06f          	j	800043dc <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::getcHandler();
    80004488:	fffff097          	auipc	ra,0xfffff
    8000448c:	cc8080e7          	jalr	-824(ra) # 80003150 <_ZN8KConsole11getcHandlerEv>
                    break;
    80004490:	f4dff06f          	j	800043dc <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::putcHandler();
    80004494:	fffff097          	auipc	ra,0xfffff
    80004498:	c8c080e7          	jalr	-884(ra) # 80003120 <_ZN8KConsole11putcHandlerEv>
                    break;
    8000449c:	f41ff06f          	j	800043dc <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::getCharHandler();
    800044a0:	fffff097          	auipc	ra,0xfffff
    800044a4:	e0c080e7          	jalr	-500(ra) # 800032ac <_ZN8KConsole14getCharHandlerEv>
                    break;
    800044a8:	f35ff06f          	j	800043dc <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>

00000000800044ac <_ZN15MemoryAllocator10initMemoryEPv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory(void* startAddr)
{
    800044ac:	ff010113          	addi	sp,sp,-16
    800044b0:	00813423          	sd	s0,8(sp)
    800044b4:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    800044b8:	0000a717          	auipc	a4,0xa
    800044bc:	4b072703          	lw	a4,1200(a4) # 8000e968 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800044c0:	00100793          	li	a5,1
    800044c4:	02f70c63          	beq	a4,a5,800044fc <_ZN15MemoryAllocator10initMemoryEPv+0x50>
        return;
    memoryInitiliaized = 1;
    800044c8:	0000a797          	auipc	a5,0xa
    800044cc:	4a078793          	addi	a5,a5,1184 # 8000e968 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800044d0:	00100713          	li	a4,1
    800044d4:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    800044d8:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)startAddr;
    800044dc:	00a7b823          	sd	a0,16(a5)
    headFree->next = 0;
    800044e0:	00053423          	sd	zero,8(a0)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)startAddr  + 1 - sizeof(BlockHeader));
    800044e4:	00006797          	auipc	a5,0x6
    800044e8:	3747b783          	ld	a5,884(a5) # 8000a858 <_GLOBAL_OFFSET_TABLE_+0x80>
    800044ec:	0007b783          	ld	a5,0(a5)
    800044f0:	40a787b3          	sub	a5,a5,a0
    800044f4:	ff178793          	addi	a5,a5,-15
    800044f8:	00f53023          	sd	a5,0(a0)
}
    800044fc:	00813403          	ld	s0,8(sp)
    80004500:	01010113          	addi	sp,sp,16
    80004504:	00008067          	ret

0000000080004508 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>:

void MemoryAllocator::insertAllFragment(void *addr, size_t size, void* nxtAddr)
{
    80004508:	ff010113          	addi	sp,sp,-16
    8000450c:	00813423          	sd	s0,8(sp)
    80004510:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    80004514:	0000a797          	auipc	a5,0xa
    80004518:	4547a783          	lw	a5,1108(a5) # 8000e968 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    8000451c:	02078a63          	beqz	a5,80004550 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>
        return;
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80004520:	00053423          	sd	zero,8(a0)
    newAllocated->size = size;
    80004524:	00b53023          	sd	a1,0(a0)
    if(headAllocated == 0)
    80004528:	0000a797          	auipc	a5,0xa
    8000452c:	4487b783          	ld	a5,1096(a5) # 8000e970 <_ZN15MemoryAllocator13headAllocatedE>
    80004530:	02078663          	beqz	a5,8000455c <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x54>
    {
        headAllocated = newAllocated;
    }
    else if(nxtAddr <= HEAP_END_ADDR)
    80004534:	00006717          	auipc	a4,0x6
    80004538:	32473703          	ld	a4,804(a4) # 8000a858 <_GLOBAL_OFFSET_TABLE_+0x80>
    8000453c:	00073703          	ld	a4,0(a4)
    80004540:	02c76463          	bltu	a4,a2,80004568 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>
    {
        BlockHeader * allFrag = (BlockHeader*)nxtAddr;
        newAllocated->next = allFrag->next;
    80004544:	00863783          	ld	a5,8(a2)
    80004548:	00f53423          	sd	a5,8(a0)
        allFrag->next = newAllocated;
    8000454c:	00a63423          	sd	a0,8(a2)
    else
    {
        newAllocated->next = headAllocated;
        headAllocated = newAllocated;
    }
}
    80004550:	00813403          	ld	s0,8(sp)
    80004554:	01010113          	addi	sp,sp,16
    80004558:	00008067          	ret
        headAllocated = newAllocated;
    8000455c:	0000a797          	auipc	a5,0xa
    80004560:	40a7ba23          	sd	a0,1044(a5) # 8000e970 <_ZN15MemoryAllocator13headAllocatedE>
    80004564:	fedff06f          	j	80004550 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>
        newAllocated->next = headAllocated;
    80004568:	00f53423          	sd	a5,8(a0)
        headAllocated = newAllocated;
    8000456c:	0000a797          	auipc	a5,0xa
    80004570:	40a7b223          	sd	a0,1028(a5) # 8000e970 <_ZN15MemoryAllocator13headAllocatedE>
    80004574:	fddff06f          	j	80004550 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>

0000000080004578 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80004578:	ff010113          	addi	sp,sp,-16
    8000457c:	00813423          	sd	s0,8(sp)
    80004580:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    80004584:	0000a797          	auipc	a5,0xa
    80004588:	3e47a783          	lw	a5,996(a5) # 8000e968 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    8000458c:	02078c63          	beqz	a5,800045c4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x4c>
        return;
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80004590:	0000a797          	auipc	a5,0xa
    80004594:	3e07b783          	ld	a5,992(a5) # 8000e970 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80004598:	00053423          	sd	zero,8(a0)
    newAllocated->size = size;
    8000459c:	00b53023          	sd	a1,0(a0)
    BlockHeader* prev = 0;
    800045a0:	00000713          	li	a4,0
    while(curr != 0)
    800045a4:	00078c63          	beqz	a5,800045bc <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x44>
    {
        if((void*)curr > addr)
    800045a8:	00f56863          	bltu	a0,a5,800045b8 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x40>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    800045ac:	00078713          	mv	a4,a5
        curr = curr->next;
    800045b0:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800045b4:	ff1ff06f          	j	800045a4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x2c>
            newAllocated->next = curr;
    800045b8:	00f53423          	sd	a5,8(a0)
    }

    if(prev == 0)
    800045bc:	00070a63          	beqz	a4,800045d0 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x58>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    800045c0:	00a73423          	sd	a0,8(a4)
}
    800045c4:	00813403          	ld	s0,8(sp)
    800045c8:	01010113          	addi	sp,sp,16
    800045cc:	00008067          	ret
        headAllocated = newAllocated;
    800045d0:	0000a797          	auipc	a5,0xa
    800045d4:	3aa7b023          	sd	a0,928(a5) # 8000e970 <_ZN15MemoryAllocator13headAllocatedE>
    800045d8:	fedff06f          	j	800045c4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x4c>

00000000800045dc <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    //initMemory();
    if(memoryInitiliaized == 0)
    800045dc:	0000a797          	auipc	a5,0xa
    800045e0:	38c7a783          	lw	a5,908(a5) # 8000e968 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800045e4:	0e078e63          	beqz	a5,800046e0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x104>
{
    800045e8:	fe010113          	addi	sp,sp,-32
    800045ec:	00113c23          	sd	ra,24(sp)
    800045f0:	00813823          	sd	s0,16(sp)
    800045f4:	00913423          	sd	s1,8(sp)
    800045f8:	02010413          	addi	s0,sp,32
    800045fc:	00050593          	mv	a1,a0
        return nullptr;
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004600:	0000a497          	auipc	s1,0xa
    80004604:	3784b483          	ld	s1,888(s1) # 8000e978 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80004608:	00000713          	li	a4,0
    while(curr != 0)
    8000460c:	0a048e63          	beqz	s1,800046c8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xec>
    {
        if(curr->size >= size)
    80004610:	0004b783          	ld	a5,0(s1)
    80004614:	00b7f863          	bgeu	a5,a1,80004624 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            //insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80004618:	00048713          	mv	a4,s1
        curr = curr->next;
    8000461c:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004620:	fedff06f          	j	8000460c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80004624:	01058693          	addi	a3,a1,16
    80004628:	00d486b3          	add	a3,s1,a3
            void* nxtAllFrag = ((char*)curr + curr->size + sizeof(BlockHeader));
    8000462c:	01078613          	addi	a2,a5,16
    80004630:	00c48633          	add	a2,s1,a2
            if(newAddr <= HEAP_END_ADDR)
    80004634:	00006517          	auipc	a0,0x6
    80004638:	22453503          	ld	a0,548(a0) # 8000a858 <_GLOBAL_OFFSET_TABLE_+0x80>
    8000463c:	00053503          	ld	a0,0(a0)
    80004640:	06d56063          	bltu	a0,a3,800046a0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xc4>
                uint64 size2 = curr->size - size;
    80004644:	40b78533          	sub	a0,a5,a1
                if(size2 > sizeof(BlockHeader))
    80004648:	01000813          	li	a6,16
    8000464c:	02a87663          	bgeu	a6,a0,80004678 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
                    newFree->next = curr->next;
    80004650:	0084b783          	ld	a5,8(s1)
    80004654:	00f6b423          	sd	a5,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80004658:	ff050513          	addi	a0,a0,-16
    8000465c:	00a6b023          	sd	a0,0(a3)
                    if (prev != 0)
    80004660:	00070663          	beqz	a4,8000466c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x90>
                        prev->next = newFree;
    80004664:	00d73423          	sd	a3,8(a4)
    80004668:	0400006f          	j	800046a8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = newFree;
    8000466c:	0000a797          	auipc	a5,0xa
    80004670:	30d7b623          	sd	a3,780(a5) # 8000e978 <_ZN15MemoryAllocator8headFreeE>
    80004674:	0340006f          	j	800046a8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                    if(prev != 0)
    80004678:	00070a63          	beqz	a4,8000468c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb0>
                        prev->next = curr->next;
    8000467c:	0084b683          	ld	a3,8(s1)
    80004680:	00d73423          	sd	a3,8(a4)
                    size+=size2;
    80004684:	00078593          	mv	a1,a5
    80004688:	0200006f          	j	800046a8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = curr->next;
    8000468c:	0084b703          	ld	a4,8(s1)
    80004690:	0000a697          	auipc	a3,0xa
    80004694:	2ee6b423          	sd	a4,744(a3) # 8000e978 <_ZN15MemoryAllocator8headFreeE>
                    size+=size2;
    80004698:	00078593          	mv	a1,a5
    8000469c:	00c0006f          	j	800046a8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                if(prev != 0)
    800046a0:	00070e63          	beqz	a4,800046bc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
                    prev->next = 0;
    800046a4:	00073423          	sd	zero,8(a4)
            insertAllFragment(oldAddr, size, nxtAllFrag);
    800046a8:	00048513          	mv	a0,s1
    800046ac:	00000097          	auipc	ra,0x0
    800046b0:	e5c080e7          	jalr	-420(ra) # 80004508 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    800046b4:	01048513          	addi	a0,s1,16
            break;
    800046b8:	0140006f          	j	800046cc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf0>
                    headFree = 0;
    800046bc:	0000a797          	auipc	a5,0xa
    800046c0:	2a07be23          	sd	zero,700(a5) # 8000e978 <_ZN15MemoryAllocator8headFreeE>
    800046c4:	fe5ff06f          	j	800046a8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
    uint64 retval = 0;
    800046c8:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    800046cc:	01813083          	ld	ra,24(sp)
    800046d0:	01013403          	ld	s0,16(sp)
    800046d4:	00813483          	ld	s1,8(sp)
    800046d8:	02010113          	addi	sp,sp,32
    800046dc:	00008067          	ret
        return nullptr;
    800046e0:	00000513          	li	a0,0
}
    800046e4:	00008067          	ret

00000000800046e8 <_ZN15MemoryAllocator9mem_allocEm>:
{
    800046e8:	ff010113          	addi	sp,sp,-16
    800046ec:	00113423          	sd	ra,8(sp)
    800046f0:	00813023          	sd	s0,0(sp)
    800046f4:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    800046f8:	00000097          	auipc	ra,0x0
    800046fc:	ee4080e7          	jalr	-284(ra) # 800045dc <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80004700:	00813083          	ld	ra,8(sp)
    80004704:	00013403          	ld	s0,0(sp)
    80004708:	01010113          	addi	sp,sp,16
    8000470c:	00008067          	ret

0000000080004710 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80004710:	ff010113          	addi	sp,sp,-16
    80004714:	00813423          	sd	s0,8(sp)
    80004718:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    8000471c:	0000a797          	auipc	a5,0xa
    80004720:	24c7a783          	lw	a5,588(a5) # 8000e968 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004724:	06078263          	beqz	a5,80004788 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>
        return;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004728:	0000a797          	auipc	a5,0xa
    8000472c:	2507b783          	ld	a5,592(a5) # 8000e978 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80004730:	00b53023          	sd	a1,0(a0)
    newSegment->next = 0;
    80004734:	00053423          	sd	zero,8(a0)
    BlockHeader* prev = 0;
    80004738:	00000713          	li	a4,0
    while(curr != 0)
    8000473c:	00078c63          	beqz	a5,80004754 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x44>
    {
        if((void*)curr > addr)
    80004740:	00f56863          	bltu	a0,a5,80004750 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x40>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80004744:	00078713          	mv	a4,a5
        curr = curr->next;
    80004748:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    8000474c:	ff1ff06f          	j	8000473c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x2c>
            newSegment->next = curr;
    80004750:	00f53423          	sd	a5,8(a0)
    }

    if(prev == 0)
    80004754:	04070063          	beqz	a4,80004794 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x84>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80004758:	00a73423          	sd	a0,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    8000475c:	00853783          	ld	a5,8(a0)
    80004760:	00078a63          	beqz	a5,80004774 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x64>
    80004764:	00053603          	ld	a2,0(a0)
    80004768:	01060693          	addi	a3,a2,16
    8000476c:	00d506b3          	add	a3,a0,a3
    80004770:	02d78863          	beq	a5,a3,800047a0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x90>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80004774:	00070a63          	beqz	a4,80004788 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>
    80004778:	00073683          	ld	a3,0(a4)
    8000477c:	01068793          	addi	a5,a3,16
    80004780:	00f707b3          	add	a5,a4,a5
    80004784:	02a78c63          	beq	a5,a0,800047bc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80004788:	00813403          	ld	s0,8(sp)
    8000478c:	01010113          	addi	sp,sp,16
    80004790:	00008067          	ret
        headFree = newSegment;
    80004794:	0000a797          	auipc	a5,0xa
    80004798:	1ea7b223          	sd	a0,484(a5) # 8000e978 <_ZN15MemoryAllocator8headFreeE>
    8000479c:	fc1ff06f          	j	8000475c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x4c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    800047a0:	0007b683          	ld	a3,0(a5)
    800047a4:	00d60633          	add	a2,a2,a3
    800047a8:	01060613          	addi	a2,a2,16
    800047ac:	00c53023          	sd	a2,0(a0)
        newSegment->next = newSegment->next->next;
    800047b0:	0087b783          	ld	a5,8(a5)
    800047b4:	00f53423          	sd	a5,8(a0)
    800047b8:	fbdff06f          	j	80004774 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x64>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    800047bc:	00053783          	ld	a5,0(a0)
    800047c0:	00f686b3          	add	a3,a3,a5
    800047c4:	01068693          	addi	a3,a3,16
    800047c8:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    800047cc:	00853783          	ld	a5,8(a0)
    800047d0:	00f73423          	sd	a5,8(a4)
    800047d4:	fb5ff06f          	j	80004788 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>

00000000800047d8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    //initMemory();
    if(memoryInitiliaized == 0)
    800047d8:	0000a797          	auipc	a5,0xa
    800047dc:	1907a783          	lw	a5,400(a5) # 8000e968 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800047e0:	08078263          	beqz	a5,80004864 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x8c>
{
    800047e4:	fe010113          	addi	sp,sp,-32
    800047e8:	00113c23          	sd	ra,24(sp)
    800047ec:	00813823          	sd	s0,16(sp)
    800047f0:	00913423          	sd	s1,8(sp)
    800047f4:	02010413          	addi	s0,sp,32
        return 1;
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    800047f8:	0000a497          	auipc	s1,0xa
    800047fc:	1784b483          	ld	s1,376(s1) # 8000e970 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80004800:	00000713          	li	a4,0
    while(curr != 0)
    80004804:	02048a63          	beqz	s1,80004838 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x60>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80004808:	01048793          	addi	a5,s1,16
    8000480c:	00a78863          	beq	a5,a0,8000481c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x44>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80004810:	00048713          	mv	a4,s1
        curr = curr->next;
    80004814:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004818:	fedff06f          	j	80004804 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x2c>
            if(prev != 0)
    8000481c:	02070c63          	beqz	a4,80004854 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x7c>
                prev->next = curr->next;
    80004820:	0084b783          	ld	a5,8(s1)
    80004824:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80004828:	0004b583          	ld	a1,0(s1)
    8000482c:	00048513          	mv	a0,s1
    80004830:	00000097          	auipc	ra,0x0
    80004834:	ee0080e7          	jalr	-288(ra) # 80004710 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80004838:	02048a63          	beqz	s1,8000486c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    8000483c:	00000513          	li	a0,0
    else
        return 1;
}
    80004840:	01813083          	ld	ra,24(sp)
    80004844:	01013403          	ld	s0,16(sp)
    80004848:	00813483          	ld	s1,8(sp)
    8000484c:	02010113          	addi	sp,sp,32
    80004850:	00008067          	ret
                headAllocated = curr->next;
    80004854:	0084b783          	ld	a5,8(s1)
    80004858:	0000a717          	auipc	a4,0xa
    8000485c:	10f73c23          	sd	a5,280(a4) # 8000e970 <_ZN15MemoryAllocator13headAllocatedE>
    80004860:	fc9ff06f          	j	80004828 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x50>
        return 1;
    80004864:	00100513          	li	a0,1
}
    80004868:	00008067          	ret
        return 1;
    8000486c:	00100513          	li	a0,1
    80004870:	fd1ff06f          	j	80004840 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x68>

0000000080004874 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80004874:	ff010113          	addi	sp,sp,-16
    80004878:	00113423          	sd	ra,8(sp)
    8000487c:	00813023          	sd	s0,0(sp)
    80004880:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80004884:	00000097          	auipc	ra,0x0
    80004888:	f54080e7          	jalr	-172(ra) # 800047d8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    8000488c:	00813083          	ld	ra,8(sp)
    80004890:	00013403          	ld	s0,0(sp)
    80004894:	01010113          	addi	sp,sp,16
    80004898:	00008067          	ret

000000008000489c <_ZN15MemoryAllocator7kmallocEm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* MemoryAllocator::kmalloc(size_t size)
{
    8000489c:	ff010113          	addi	sp,sp,-16
    800048a0:	00113423          	sd	ra,8(sp)
    800048a4:	00813023          	sd	s0,0(sp)
    800048a8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    800048ac:	00000097          	auipc	ra,0x0
    800048b0:	e3c080e7          	jalr	-452(ra) # 800046e8 <_ZN15MemoryAllocator9mem_allocEm>
}
    800048b4:	00813083          	ld	ra,8(sp)
    800048b8:	00013403          	ld	s0,0(sp)
    800048bc:	01010113          	addi	sp,sp,16
    800048c0:	00008067          	ret

00000000800048c4 <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    800048c4:	ff010113          	addi	sp,sp,-16
    800048c8:	00113423          	sd	ra,8(sp)
    800048cc:	00813023          	sd	s0,0(sp)
    800048d0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    800048d4:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    800048d8:	00651513          	slli	a0,a0,0x6
    800048dc:	00000097          	auipc	ra,0x0
    800048e0:	fc0080e7          	jalr	-64(ra) # 8000489c <_ZN15MemoryAllocator7kmallocEm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    800048e4:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    800048e8:	00000097          	auipc	ra,0x0
    800048ec:	8b0080e7          	jalr	-1872(ra) # 80004198 <_ZN5Riscv13w_a0_sscratchEv>
}
    800048f0:	00813083          	ld	ra,8(sp)
    800048f4:	00013403          	ld	s0,0(sp)
    800048f8:	01010113          	addi	sp,sp,16
    800048fc:	00008067          	ret

0000000080004900 <_ZN15MemoryAllocator5kfreeEPv>:

uint64 MemoryAllocator::kfree(void* p)
{
    80004900:	ff010113          	addi	sp,sp,-16
    80004904:	00113423          	sd	ra,8(sp)
    80004908:	00813023          	sd	s0,0(sp)
    8000490c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80004910:	00000097          	auipc	ra,0x0
    80004914:	f64080e7          	jalr	-156(ra) # 80004874 <_ZN15MemoryAllocator8mem_freeEPv>
    80004918:	00813083          	ld	ra,8(sp)
    8000491c:	00013403          	ld	s0,0(sp)
    80004920:	01010113          	addi	sp,sp,16
    80004924:	00008067          	ret

0000000080004928 <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    80004928:	ff010113          	addi	sp,sp,-16
    8000492c:	00113423          	sd	ra,8(sp)
    80004930:	00813023          	sd	s0,0(sp)
    80004934:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    80004938:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    8000493c:	00000097          	auipc	ra,0x0
    80004940:	fc4080e7          	jalr	-60(ra) # 80004900 <_ZN15MemoryAllocator5kfreeEPv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004944:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004948:	00000097          	auipc	ra,0x0
    8000494c:	850080e7          	jalr	-1968(ra) # 80004198 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004950:	00813083          	ld	ra,8(sp)
    80004954:	00013403          	ld	s0,0(sp)
    80004958:	01010113          	addi	sp,sp,16
    8000495c:	00008067          	ret

0000000080004960 <_Z12slabInitTestv>:
#include "../h/slabTests.hpp"

void slabInitTest()
{
    80004960:	ff010113          	addi	sp,sp,-16
    80004964:	00113423          	sd	ra,8(sp)
    80004968:	00813023          	sd	s0,0(sp)
    8000496c:	01010413          	addi	s0,sp,16
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004970:	00f00593          	li	a1,15
    80004974:	00006797          	auipc	a5,0x6
    80004978:	e7c7b783          	ld	a5,-388(a5) # 8000a7f0 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000497c:	0007b503          	ld	a0,0(a5)
    80004980:	ffffd097          	auipc	ra,0xffffd
    80004984:	fd8080e7          	jalr	-40(ra) # 80001958 <_Z9kmem_initPvi>
}
    80004988:	00813083          	ld	ra,8(sp)
    8000498c:	00013403          	ld	s0,0(sp)
    80004990:	01010113          	addi	sp,sp,16
    80004994:	00008067          	ret

0000000080004998 <_Z19slabCacheCreateTestv>:

void slabCacheCreateTest()
{
    80004998:	fe010113          	addi	sp,sp,-32
    8000499c:	00113c23          	sd	ra,24(sp)
    800049a0:	00813823          	sd	s0,16(sp)
    800049a4:	00913423          	sd	s1,8(sp)
    800049a8:	01213023          	sd	s2,0(sp)
    800049ac:	02010413          	addi	s0,sp,32
    kmem_init((void*)HEAP_START_ADDR, 15);
    800049b0:	00f00593          	li	a1,15
    800049b4:	00006797          	auipc	a5,0x6
    800049b8:	e3c7b783          	ld	a5,-452(a5) # 8000a7f0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800049bc:	0007b503          	ld	a0,0(a5)
    800049c0:	ffffd097          	auipc	ra,0xffffd
    800049c4:	f98080e7          	jalr	-104(ra) # 80001958 <_Z9kmem_initPvi>
    kmem_cache_t* cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    800049c8:	00000693          	li	a3,0
    800049cc:	00000613          	li	a2,0
    800049d0:	00a00593          	li	a1,10
    800049d4:	00004517          	auipc	a0,0x4
    800049d8:	99c50513          	addi	a0,a0,-1636 # 80008370 <CONSOLE_STATUS+0x360>
    800049dc:	ffffd097          	auipc	ra,0xffffd
    800049e0:	098080e7          	jalr	152(ra) # 80001a74 <_Z17kmem_cache_createPKcmPFvPvES3_>
    800049e4:	00050493          	mv	s1,a0
    kmem_cache_t* cache2 = kmem_cache_create("Cache test 2", 10, nullptr,nullptr);
    800049e8:	00000693          	li	a3,0
    800049ec:	00000613          	li	a2,0
    800049f0:	00a00593          	li	a1,10
    800049f4:	00004517          	auipc	a0,0x4
    800049f8:	98c50513          	addi	a0,a0,-1652 # 80008380 <CONSOLE_STATUS+0x370>
    800049fc:	ffffd097          	auipc	ra,0xffffd
    80004a00:	078080e7          	jalr	120(ra) # 80001a74 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004a04:	00050913          	mv	s2,a0
    kmem_cache_t* cache3 = kmem_cache_create("Cache test 3", 10, nullptr,nullptr);
    80004a08:	00000693          	li	a3,0
    80004a0c:	00000613          	li	a2,0
    80004a10:	00a00593          	li	a1,10
    80004a14:	00004517          	auipc	a0,0x4
    80004a18:	97c50513          	addi	a0,a0,-1668 # 80008390 <CONSOLE_STATUS+0x380>
    80004a1c:	ffffd097          	auipc	ra,0xffffd
    80004a20:	058080e7          	jalr	88(ra) # 80001a74 <_Z17kmem_cache_createPKcmPFvPvES3_>
    if(cache && cache2 && cache3)
    80004a24:	00048a63          	beqz	s1,80004a38 <_Z19slabCacheCreateTestv+0xa0>
    80004a28:	00090863          	beqz	s2,80004a38 <_Z19slabCacheCreateTestv+0xa0>
    80004a2c:	00050663          	beqz	a0,80004a38 <_Z19slabCacheCreateTestv+0xa0>
        printSlabAllocatorInfo();
    80004a30:	ffffd097          	auipc	ra,0xffffd
    80004a34:	268080e7          	jalr	616(ra) # 80001c98 <_Z22printSlabAllocatorInfov>
}
    80004a38:	01813083          	ld	ra,24(sp)
    80004a3c:	01013403          	ld	s0,16(sp)
    80004a40:	00813483          	ld	s1,8(sp)
    80004a44:	00013903          	ld	s2,0(sp)
    80004a48:	02010113          	addi	sp,sp,32
    80004a4c:	00008067          	ret

0000000080004a50 <_Z20slabCacheCreateTest2v>:

void slabCacheCreateTest2()
{
    80004a50:	fe010113          	addi	sp,sp,-32
    80004a54:	00113c23          	sd	ra,24(sp)
    80004a58:	00813823          	sd	s0,16(sp)
    80004a5c:	00913423          	sd	s1,8(sp)
    80004a60:	01213023          	sd	s2,0(sp)
    80004a64:	02010413          	addi	s0,sp,32
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004a68:	00f00593          	li	a1,15
    80004a6c:	00006797          	auipc	a5,0x6
    80004a70:	d847b783          	ld	a5,-636(a5) # 8000a7f0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004a74:	0007b503          	ld	a0,0(a5)
    80004a78:	ffffd097          	auipc	ra,0xffffd
    80004a7c:	ee0080e7          	jalr	-288(ra) # 80001958 <_Z9kmem_initPvi>
    kmem_cache_t * cache = nullptr;
    for(int i = 1;i<=68;i++)
    80004a80:	00100493          	li	s1,1
    kmem_cache_t * cache = nullptr;
    80004a84:	00000913          	li	s2,0
    for(int i = 1;i<=68;i++)
    80004a88:	04400793          	li	a5,68
    80004a8c:	0297c663          	blt	a5,s1,80004ab8 <_Z20slabCacheCreateTest2v+0x68>
    {
        cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    80004a90:	00000693          	li	a3,0
    80004a94:	00000613          	li	a2,0
    80004a98:	00a00593          	li	a1,10
    80004a9c:	00004517          	auipc	a0,0x4
    80004aa0:	8d450513          	addi	a0,a0,-1836 # 80008370 <CONSOLE_STATUS+0x360>
    80004aa4:	ffffd097          	auipc	ra,0xffffd
    80004aa8:	fd0080e7          	jalr	-48(ra) # 80001a74 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004aac:	00050913          	mv	s2,a0
    for(int i = 1;i<=68;i++)
    80004ab0:	0014849b          	addiw	s1,s1,1
    80004ab4:	fd5ff06f          	j	80004a88 <_Z20slabCacheCreateTest2v+0x38>
    }
    printSlabAllocatorInfo();
    80004ab8:	ffffd097          	auipc	ra,0xffffd
    80004abc:	1e0080e7          	jalr	480(ra) # 80001c98 <_Z22printSlabAllocatorInfov>
    kmem_cache_destroy(cache);
    80004ac0:	00090513          	mv	a0,s2
    80004ac4:	ffffd097          	auipc	ra,0xffffd
    80004ac8:	444080e7          	jalr	1092(ra) # 80001f08 <_Z18kmem_cache_destroyP12kmem_cache_s>
    printSlabAllocatorInfo();
    80004acc:	ffffd097          	auipc	ra,0xffffd
    80004ad0:	1cc080e7          	jalr	460(ra) # 80001c98 <_Z22printSlabAllocatorInfov>
    80004ad4:	01813083          	ld	ra,24(sp)
    80004ad8:	01013403          	ld	s0,16(sp)
    80004adc:	00813483          	ld	s1,8(sp)
    80004ae0:	00013903          	ld	s2,0(sp)
    80004ae4:	02010113          	addi	sp,sp,32
    80004ae8:	00008067          	ret

0000000080004aec <_ZN10KSemaphoreC1Ei>:
#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"

KSemaphore::KSemaphore(int val)
    80004aec:	ff010113          	addi	sp,sp,-16
    80004af0:	00813423          	sd	s0,8(sp)
    80004af4:	01010413          	addi	s0,sp,16
{
    this->val = val;
    80004af8:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80004afc:	00053423          	sd	zero,8(a0)
    80004b00:	00053023          	sd	zero,0(a0)
}
    80004b04:	00813403          	ld	s0,8(sp)
    80004b08:	01010113          	addi	sp,sp,16
    80004b0c:	00008067          	ret

0000000080004b10 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80004b10:	ff010113          	addi	sp,sp,-16
    80004b14:	00813423          	sd	s0,8(sp)
    80004b18:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80004b1c:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    80004b20:	00053783          	ld	a5,0(a0)
    80004b24:	00078e63          	beqz	a5,80004b40 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80004b28:	00853783          	ld	a5,8(a0)
    80004b2c:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    80004b30:	00b53423          	sd	a1,8(a0)
    }
}
    80004b34:	00813403          	ld	s0,8(sp)
    80004b38:	01010113          	addi	sp,sp,16
    80004b3c:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80004b40:	00b53423          	sd	a1,8(a0)
    80004b44:	00b53023          	sd	a1,0(a0)
    80004b48:	fedff06f          	j	80004b34 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080004b4c <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    80004b4c:	ff010113          	addi	sp,sp,-16
    80004b50:	00113423          	sd	ra,8(sp)
    80004b54:	00813023          	sd	s0,0(sp)
    80004b58:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80004b5c:	00006797          	auipc	a5,0x6
    80004b60:	cf47b783          	ld	a5,-780(a5) # 8000a850 <_GLOBAL_OFFSET_TABLE_+0x78>
    80004b64:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80004b68:	00200793          	li	a5,2
    80004b6c:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    80004b70:	00000097          	auipc	ra,0x0
    80004b74:	fa0080e7          	jalr	-96(ra) # 80004b10 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80004b78:	ffffe097          	auipc	ra,0xffffe
    80004b7c:	834080e7          	jalr	-1996(ra) # 800023ac <_ZN3PCB8dispatchEv>
}
    80004b80:	00813083          	ld	ra,8(sp)
    80004b84:	00013403          	ld	s0,0(sp)
    80004b88:	01010113          	addi	sp,sp,16
    80004b8c:	00008067          	ret

0000000080004b90 <_ZN10KSemaphore4waitEv>:
    PCB::running->retFromClosedSem = false;
    80004b90:	00006797          	auipc	a5,0x6
    80004b94:	cc07b783          	ld	a5,-832(a5) # 8000a850 <_GLOBAL_OFFSET_TABLE_+0x78>
    80004b98:	0007b783          	ld	a5,0(a5)
    80004b9c:	04078c23          	sb	zero,88(a5)
    if(--val < 0)
    80004ba0:	01052783          	lw	a5,16(a0)
    80004ba4:	fff7879b          	addiw	a5,a5,-1
    80004ba8:	00f52823          	sw	a5,16(a0)
    80004bac:	02079713          	slli	a4,a5,0x20
    80004bb0:	00074663          	bltz	a4,80004bbc <_ZN10KSemaphore4waitEv+0x2c>
}
    80004bb4:	00000513          	li	a0,0
    80004bb8:	00008067          	ret
{
    80004bbc:	ff010113          	addi	sp,sp,-16
    80004bc0:	00113423          	sd	ra,8(sp)
    80004bc4:	00813023          	sd	s0,0(sp)
    80004bc8:	01010413          	addi	s0,sp,16
        block();
    80004bcc:	00000097          	auipc	ra,0x0
    80004bd0:	f80080e7          	jalr	-128(ra) # 80004b4c <_ZN10KSemaphore5blockEv>
}
    80004bd4:	00000513          	li	a0,0
    80004bd8:	00813083          	ld	ra,8(sp)
    80004bdc:	00013403          	ld	s0,0(sp)
    80004be0:	01010113          	addi	sp,sp,16
    80004be4:	00008067          	ret

0000000080004be8 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80004be8:	ff010113          	addi	sp,sp,-16
    80004bec:	00813423          	sd	s0,8(sp)
    80004bf0:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80004bf4:	00053503          	ld	a0,0(a0)
    80004bf8:	00813403          	ld	s0,8(sp)
    80004bfc:	01010113          	addi	sp,sp,16
    80004c00:	00008067          	ret

0000000080004c04 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80004c04:	ff010113          	addi	sp,sp,-16
    80004c08:	00813423          	sd	s0,8(sp)
    80004c0c:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80004c10:	00053783          	ld	a5,0(a0)
    80004c14:	00078c63          	beqz	a5,80004c2c <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80004c18:	0087b703          	ld	a4,8(a5)
    80004c1c:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80004c20:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    80004c24:	00053783          	ld	a5,0(a0)
    80004c28:	00078863          	beqz	a5,80004c38 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    80004c2c:	00813403          	ld	s0,8(sp)
    80004c30:	01010113          	addi	sp,sp,16
    80004c34:	00008067          	ret
        tailBlocked =0;
    80004c38:	00053423          	sd	zero,8(a0)
    80004c3c:	ff1ff06f          	j	80004c2c <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

0000000080004c40 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    80004c40:	fe010113          	addi	sp,sp,-32
    80004c44:	00113c23          	sd	ra,24(sp)
    80004c48:	00813823          	sd	s0,16(sp)
    80004c4c:	00913423          	sd	s1,8(sp)
    80004c50:	01213023          	sd	s2,0(sp)
    80004c54:	02010413          	addi	s0,sp,32
    80004c58:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80004c5c:	00090513          	mv	a0,s2
    80004c60:	00000097          	auipc	ra,0x0
    80004c64:	f88080e7          	jalr	-120(ra) # 80004be8 <_ZN10KSemaphore15getFirstBlockedEv>
    80004c68:	00050493          	mv	s1,a0
    80004c6c:	02050463          	beqz	a0,80004c94 <_ZN10KSemaphoreD1Ev+0x54>
        removeFirstBlocked();
    80004c70:	00090513          	mv	a0,s2
    80004c74:	00000097          	auipc	ra,0x0
    80004c78:	f90080e7          	jalr	-112(ra) # 80004c04 <_ZN10KSemaphore18removeFirstBlockedEv>
        pcb->retFromClosedSem = true;
    80004c7c:	00100793          	li	a5,1
    80004c80:	04f48c23          	sb	a5,88(s1)
        Scheduler::put(pcb);
    80004c84:	00048513          	mv	a0,s1
    80004c88:	fffff097          	auipc	ra,0xfffff
    80004c8c:	910080e7          	jalr	-1776(ra) # 80003598 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80004c90:	fcdff06f          	j	80004c5c <_ZN10KSemaphoreD1Ev+0x1c>
}
    80004c94:	01813083          	ld	ra,24(sp)
    80004c98:	01013403          	ld	s0,16(sp)
    80004c9c:	00813483          	ld	s1,8(sp)
    80004ca0:	00013903          	ld	s2,0(sp)
    80004ca4:	02010113          	addi	sp,sp,32
    80004ca8:	00008067          	ret

0000000080004cac <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    80004cac:	fe010113          	addi	sp,sp,-32
    80004cb0:	00113c23          	sd	ra,24(sp)
    80004cb4:	00813823          	sd	s0,16(sp)
    80004cb8:	00913423          	sd	s1,8(sp)
    80004cbc:	01213023          	sd	s2,0(sp)
    80004cc0:	02010413          	addi	s0,sp,32
    80004cc4:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    80004cc8:	00000097          	auipc	ra,0x0
    80004ccc:	f20080e7          	jalr	-224(ra) # 80004be8 <_ZN10KSemaphore15getFirstBlockedEv>
    80004cd0:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80004cd4:	00090513          	mv	a0,s2
    80004cd8:	00000097          	auipc	ra,0x0
    80004cdc:	f2c080e7          	jalr	-212(ra) # 80004c04 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80004ce0:	00048863          	beqz	s1,80004cf0 <_ZN10KSemaphore7unblockEv+0x44>
    {
        Scheduler::put(fr);
    80004ce4:	00048513          	mv	a0,s1
    80004ce8:	fffff097          	auipc	ra,0xfffff
    80004cec:	8b0080e7          	jalr	-1872(ra) # 80003598 <_ZN9Scheduler3putEP3PCB>
    }
}
    80004cf0:	01813083          	ld	ra,24(sp)
    80004cf4:	01013403          	ld	s0,16(sp)
    80004cf8:	00813483          	ld	s1,8(sp)
    80004cfc:	00013903          	ld	s2,0(sp)
    80004d00:	02010113          	addi	sp,sp,32
    80004d04:	00008067          	ret

0000000080004d08 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80004d08:	01052783          	lw	a5,16(a0)
    80004d0c:	0017879b          	addiw	a5,a5,1
    80004d10:	0007871b          	sext.w	a4,a5
    80004d14:	00f52823          	sw	a5,16(a0)
    80004d18:	00e05663          	blez	a4,80004d24 <_ZN10KSemaphore6signalEv+0x1c>
}
    80004d1c:	00000513          	li	a0,0
    80004d20:	00008067          	ret
uint64 KSemaphore::signal() {
    80004d24:	ff010113          	addi	sp,sp,-16
    80004d28:	00113423          	sd	ra,8(sp)
    80004d2c:	00813023          	sd	s0,0(sp)
    80004d30:	01010413          	addi	s0,sp,16
        unblock();
    80004d34:	00000097          	auipc	ra,0x0
    80004d38:	f78080e7          	jalr	-136(ra) # 80004cac <_ZN10KSemaphore7unblockEv>
}
    80004d3c:	00000513          	li	a0,0
    80004d40:	00813083          	ld	ra,8(sp)
    80004d44:	00013403          	ld	s0,0(sp)
    80004d48:	01010113          	addi	sp,sp,16
    80004d4c:	00008067          	ret

0000000080004d50 <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    80004d50:	ff010113          	addi	sp,sp,-16
    80004d54:	00113423          	sd	ra,8(sp)
    80004d58:	00813023          	sd	s0,0(sp)
    80004d5c:	01010413          	addi	s0,sp,16
    return kmem_cache_alloc(Riscv::semaphoreCache);
    80004d60:	00006797          	auipc	a5,0x6
    80004d64:	a987b783          	ld	a5,-1384(a5) # 8000a7f8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80004d68:	0007b503          	ld	a0,0(a5)
    80004d6c:	ffffd097          	auipc	ra,0xffffd
    80004d70:	c24080e7          	jalr	-988(ra) # 80001990 <_Z16kmem_cache_allocP12kmem_cache_s>
    //return MemoryAllocator::kmalloc(size);
}
    80004d74:	00813083          	ld	ra,8(sp)
    80004d78:	00013403          	ld	s0,0(sp)
    80004d7c:	01010113          	addi	sp,sp,16
    80004d80:	00008067          	ret

0000000080004d84 <_ZN10KSemaphore14semOpenHandlerEv>:
{
    80004d84:	fd010113          	addi	sp,sp,-48
    80004d88:	02113423          	sd	ra,40(sp)
    80004d8c:	02813023          	sd	s0,32(sp)
    80004d90:	00913c23          	sd	s1,24(sp)
    80004d94:	01213823          	sd	s2,16(sp)
    80004d98:	01313423          	sd	s3,8(sp)
    80004d9c:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80004da0:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    80004da4:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    80004da8:	01800513          	li	a0,24
    80004dac:	00000097          	auipc	ra,0x0
    80004db0:	fa4080e7          	jalr	-92(ra) # 80004d50 <_ZN10KSemaphorenwEm>
    80004db4:	00050493          	mv	s1,a0
    80004db8:	0009859b          	sext.w	a1,s3
    80004dbc:	00000097          	auipc	ra,0x0
    80004dc0:	d30080e7          	jalr	-720(ra) # 80004aec <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    80004dc4:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    80004dc8:	02048663          	beqz	s1,80004df4 <_ZN10KSemaphore14semOpenHandlerEv+0x70>
            __asm__ volatile("li a0, 0");
    80004dcc:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80004dd0:	fffff097          	auipc	ra,0xfffff
    80004dd4:	3c8080e7          	jalr	968(ra) # 80004198 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004dd8:	02813083          	ld	ra,40(sp)
    80004ddc:	02013403          	ld	s0,32(sp)
    80004de0:	01813483          	ld	s1,24(sp)
    80004de4:	01013903          	ld	s2,16(sp)
    80004de8:	00813983          	ld	s3,8(sp)
    80004dec:	03010113          	addi	sp,sp,48
    80004df0:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80004df4:	fff00513          	li	a0,-1
    80004df8:	fd9ff06f          	j	80004dd0 <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

0000000080004dfc <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    80004dfc:	ff010113          	addi	sp,sp,-16
    80004e00:	00113423          	sd	ra,8(sp)
    80004e04:	00813023          	sd	s0,0(sp)
    80004e08:	01010413          	addi	s0,sp,16
    80004e0c:	00050593          	mv	a1,a0
    kmem_cache_free(Riscv::semaphoreCache, p);
    80004e10:	00006797          	auipc	a5,0x6
    80004e14:	9e87b783          	ld	a5,-1560(a5) # 8000a7f8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80004e18:	0007b503          	ld	a0,0(a5)
    80004e1c:	ffffd097          	auipc	ra,0xffffd
    80004e20:	d04080e7          	jalr	-764(ra) # 80001b20 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    //MemoryAllocator::kfree(p);
}
    80004e24:	00813083          	ld	ra,8(sp)
    80004e28:	00013403          	ld	s0,0(sp)
    80004e2c:	01010113          	addi	sp,sp,16
    80004e30:	00008067          	ret

0000000080004e34 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    80004e34:	ff010113          	addi	sp,sp,-16
    80004e38:	00113423          	sd	ra,8(sp)
    80004e3c:	00813023          	sd	s0,0(sp)
    80004e40:	01010413          	addi	s0,sp,16
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004e44:	00058513          	mv	a0,a1
    kSem->wait();
    80004e48:	00000097          	auipc	ra,0x0
    80004e4c:	d48080e7          	jalr	-696(ra) # 80004b90 <_ZN10KSemaphore4waitEv>
    if(PCB::running->retFromClosedSem)
    80004e50:	00006797          	auipc	a5,0x6
    80004e54:	a007b783          	ld	a5,-1536(a5) # 8000a850 <_GLOBAL_OFFSET_TABLE_+0x78>
    80004e58:	0007b783          	ld	a5,0(a5)
    80004e5c:	0587c783          	lbu	a5,88(a5)
    80004e60:	02078063          	beqz	a5,80004e80 <_ZN10KSemaphore14semWaitHandlerEv+0x4c>
        __asm__ volatile("li a0, 0x1");
    80004e64:	00100513          	li	a0,1
    else
        __asm__ volatile("li a0, 0x0");
    Riscv::w_a0_sscratch();
    80004e68:	fffff097          	auipc	ra,0xfffff
    80004e6c:	330080e7          	jalr	816(ra) # 80004198 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004e70:	00813083          	ld	ra,8(sp)
    80004e74:	00013403          	ld	s0,0(sp)
    80004e78:	01010113          	addi	sp,sp,16
    80004e7c:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    80004e80:	00000513          	li	a0,0
    80004e84:	fe5ff06f          	j	80004e68 <_ZN10KSemaphore14semWaitHandlerEv+0x34>

0000000080004e88 <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler() {
    80004e88:	ff010113          	addi	sp,sp,-16
    80004e8c:	00113423          	sd	ra,8(sp)
    80004e90:	00813023          	sd	s0,0(sp)
    80004e94:	01010413          	addi	s0,sp,16
    KSemaphore *kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004e98:	00058513          	mv	a0,a1
    if (kSem == 0)
    80004e9c:	02050463          	beqz	a0,80004ec4 <_ZN10KSemaphore16semSignalHandlerEv+0x3c>
    {
        __asm__ volatile("li a0, 0x1");
    }
    else
    {
        kSem->signal();
    80004ea0:	00000097          	auipc	ra,0x0
    80004ea4:	e68080e7          	jalr	-408(ra) # 80004d08 <_ZN10KSemaphore6signalEv>
        __asm__ volatile("li a0, 0x0");
    80004ea8:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80004eac:	fffff097          	auipc	ra,0xfffff
    80004eb0:	2ec080e7          	jalr	748(ra) # 80004198 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004eb4:	00813083          	ld	ra,8(sp)
    80004eb8:	00013403          	ld	s0,0(sp)
    80004ebc:	01010113          	addi	sp,sp,16
    80004ec0:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80004ec4:	00100513          	li	a0,1
    80004ec8:	fe5ff06f          	j	80004eac <_ZN10KSemaphore16semSignalHandlerEv+0x24>

0000000080004ecc <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    80004ecc:	fe010113          	addi	sp,sp,-32
    80004ed0:	00113c23          	sd	ra,24(sp)
    80004ed4:	00813823          	sd	s0,16(sp)
    80004ed8:	00913423          	sd	s1,8(sp)
    80004edc:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004ee0:	00058493          	mv	s1,a1
    delete kSem;
    80004ee4:	00048e63          	beqz	s1,80004f00 <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    80004ee8:	00048513          	mv	a0,s1
    80004eec:	00000097          	auipc	ra,0x0
    80004ef0:	d54080e7          	jalr	-684(ra) # 80004c40 <_ZN10KSemaphoreD1Ev>
    80004ef4:	00048513          	mv	a0,s1
    80004ef8:	00000097          	auipc	ra,0x0
    80004efc:	f04080e7          	jalr	-252(ra) # 80004dfc <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    80004f00:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80004f04:	fffff097          	auipc	ra,0xfffff
    80004f08:	294080e7          	jalr	660(ra) # 80004198 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004f0c:	01813083          	ld	ra,24(sp)
    80004f10:	01013403          	ld	s0,16(sp)
    80004f14:	00813483          	ld	s1,8(sp)
    80004f18:	02010113          	addi	sp,sp,32
    80004f1c:	00008067          	ret

0000000080004f20 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004f20:	fe010113          	addi	sp,sp,-32
    80004f24:	00113c23          	sd	ra,24(sp)
    80004f28:	00813823          	sd	s0,16(sp)
    80004f2c:	00913423          	sd	s1,8(sp)
    80004f30:	02010413          	addi	s0,sp,32
    80004f34:	00050493          	mv	s1,a0
    LOCK();
    80004f38:	00100613          	li	a2,1
    80004f3c:	00000593          	li	a1,0
    80004f40:	0000a517          	auipc	a0,0xa
    80004f44:	a4050513          	addi	a0,a0,-1472 # 8000e980 <lockPrint>
    80004f48:	ffffc097          	auipc	ra,0xffffc
    80004f4c:	2d0080e7          	jalr	720(ra) # 80001218 <copy_and_swap>
    80004f50:	fe0514e3          	bnez	a0,80004f38 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80004f54:	0004c503          	lbu	a0,0(s1)
    80004f58:	00050a63          	beqz	a0,80004f6c <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80004f5c:	ffffd097          	auipc	ra,0xffffd
    80004f60:	2f4080e7          	jalr	756(ra) # 80002250 <_Z4putcc>
        string++;
    80004f64:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004f68:	fedff06f          	j	80004f54 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80004f6c:	00000613          	li	a2,0
    80004f70:	00100593          	li	a1,1
    80004f74:	0000a517          	auipc	a0,0xa
    80004f78:	a0c50513          	addi	a0,a0,-1524 # 8000e980 <lockPrint>
    80004f7c:	ffffc097          	auipc	ra,0xffffc
    80004f80:	29c080e7          	jalr	668(ra) # 80001218 <copy_and_swap>
    80004f84:	fe0514e3          	bnez	a0,80004f6c <_Z11printStringPKc+0x4c>
}
    80004f88:	01813083          	ld	ra,24(sp)
    80004f8c:	01013403          	ld	s0,16(sp)
    80004f90:	00813483          	ld	s1,8(sp)
    80004f94:	02010113          	addi	sp,sp,32
    80004f98:	00008067          	ret

0000000080004f9c <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80004f9c:	fd010113          	addi	sp,sp,-48
    80004fa0:	02113423          	sd	ra,40(sp)
    80004fa4:	02813023          	sd	s0,32(sp)
    80004fa8:	00913c23          	sd	s1,24(sp)
    80004fac:	01213823          	sd	s2,16(sp)
    80004fb0:	01313423          	sd	s3,8(sp)
    80004fb4:	01413023          	sd	s4,0(sp)
    80004fb8:	03010413          	addi	s0,sp,48
    80004fbc:	00050993          	mv	s3,a0
    80004fc0:	00058a13          	mv	s4,a1
    LOCK();
    80004fc4:	00100613          	li	a2,1
    80004fc8:	00000593          	li	a1,0
    80004fcc:	0000a517          	auipc	a0,0xa
    80004fd0:	9b450513          	addi	a0,a0,-1612 # 8000e980 <lockPrint>
    80004fd4:	ffffc097          	auipc	ra,0xffffc
    80004fd8:	244080e7          	jalr	580(ra) # 80001218 <copy_and_swap>
    80004fdc:	fe0514e3          	bnez	a0,80004fc4 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004fe0:	00000913          	li	s2,0
    80004fe4:	00090493          	mv	s1,s2
    80004fe8:	0019091b          	addiw	s2,s2,1
    80004fec:	03495a63          	bge	s2,s4,80005020 <_Z9getStringPci+0x84>
        cc = getc();
    80004ff0:	ffffd097          	auipc	ra,0xffffd
    80004ff4:	238080e7          	jalr	568(ra) # 80002228 <_Z4getcv>
        if(cc < 1)
    80004ff8:	02050463          	beqz	a0,80005020 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80004ffc:	009984b3          	add	s1,s3,s1
    80005000:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005004:	00a00793          	li	a5,10
    80005008:	00f50a63          	beq	a0,a5,8000501c <_Z9getStringPci+0x80>
    8000500c:	00d00793          	li	a5,13
    80005010:	fcf51ae3          	bne	a0,a5,80004fe4 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80005014:	00090493          	mv	s1,s2
    80005018:	0080006f          	j	80005020 <_Z9getStringPci+0x84>
    8000501c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005020:	009984b3          	add	s1,s3,s1
    80005024:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005028:	00000613          	li	a2,0
    8000502c:	00100593          	li	a1,1
    80005030:	0000a517          	auipc	a0,0xa
    80005034:	95050513          	addi	a0,a0,-1712 # 8000e980 <lockPrint>
    80005038:	ffffc097          	auipc	ra,0xffffc
    8000503c:	1e0080e7          	jalr	480(ra) # 80001218 <copy_and_swap>
    80005040:	fe0514e3          	bnez	a0,80005028 <_Z9getStringPci+0x8c>
    return buf;
}
    80005044:	00098513          	mv	a0,s3
    80005048:	02813083          	ld	ra,40(sp)
    8000504c:	02013403          	ld	s0,32(sp)
    80005050:	01813483          	ld	s1,24(sp)
    80005054:	01013903          	ld	s2,16(sp)
    80005058:	00813983          	ld	s3,8(sp)
    8000505c:	00013a03          	ld	s4,0(sp)
    80005060:	03010113          	addi	sp,sp,48
    80005064:	00008067          	ret

0000000080005068 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005068:	ff010113          	addi	sp,sp,-16
    8000506c:	00813423          	sd	s0,8(sp)
    80005070:	01010413          	addi	s0,sp,16
    80005074:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005078:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000507c:	0006c603          	lbu	a2,0(a3)
    80005080:	fd06071b          	addiw	a4,a2,-48
    80005084:	0ff77713          	andi	a4,a4,255
    80005088:	00900793          	li	a5,9
    8000508c:	02e7e063          	bltu	a5,a4,800050ac <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005090:	0025179b          	slliw	a5,a0,0x2
    80005094:	00a787bb          	addw	a5,a5,a0
    80005098:	0017979b          	slliw	a5,a5,0x1
    8000509c:	00168693          	addi	a3,a3,1
    800050a0:	00c787bb          	addw	a5,a5,a2
    800050a4:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800050a8:	fd5ff06f          	j	8000507c <_Z11stringToIntPKc+0x14>
    return n;
}
    800050ac:	00813403          	ld	s0,8(sp)
    800050b0:	01010113          	addi	sp,sp,16
    800050b4:	00008067          	ret

00000000800050b8 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800050b8:	fc010113          	addi	sp,sp,-64
    800050bc:	02113c23          	sd	ra,56(sp)
    800050c0:	02813823          	sd	s0,48(sp)
    800050c4:	02913423          	sd	s1,40(sp)
    800050c8:	03213023          	sd	s2,32(sp)
    800050cc:	01313c23          	sd	s3,24(sp)
    800050d0:	04010413          	addi	s0,sp,64
    800050d4:	00050493          	mv	s1,a0
    800050d8:	00058913          	mv	s2,a1
    800050dc:	00060993          	mv	s3,a2
    LOCK();
    800050e0:	00100613          	li	a2,1
    800050e4:	00000593          	li	a1,0
    800050e8:	0000a517          	auipc	a0,0xa
    800050ec:	89850513          	addi	a0,a0,-1896 # 8000e980 <lockPrint>
    800050f0:	ffffc097          	auipc	ra,0xffffc
    800050f4:	128080e7          	jalr	296(ra) # 80001218 <copy_and_swap>
    800050f8:	fe0514e3          	bnez	a0,800050e0 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800050fc:	00098463          	beqz	s3,80005104 <_Z8printIntiii+0x4c>
    80005100:	0804c463          	bltz	s1,80005188 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005104:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005108:	00000593          	li	a1,0
    }

    i = 0;
    8000510c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005110:	0009079b          	sext.w	a5,s2
    80005114:	0325773b          	remuw	a4,a0,s2
    80005118:	00048613          	mv	a2,s1
    8000511c:	0014849b          	addiw	s1,s1,1
    80005120:	02071693          	slli	a3,a4,0x20
    80005124:	0206d693          	srli	a3,a3,0x20
    80005128:	00005717          	auipc	a4,0x5
    8000512c:	69870713          	addi	a4,a4,1688 # 8000a7c0 <digits>
    80005130:	00d70733          	add	a4,a4,a3
    80005134:	00074683          	lbu	a3,0(a4)
    80005138:	fd040713          	addi	a4,s0,-48
    8000513c:	00c70733          	add	a4,a4,a2
    80005140:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005144:	0005071b          	sext.w	a4,a0
    80005148:	0325553b          	divuw	a0,a0,s2
    8000514c:	fcf772e3          	bgeu	a4,a5,80005110 <_Z8printIntiii+0x58>
    if(neg)
    80005150:	00058c63          	beqz	a1,80005168 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80005154:	fd040793          	addi	a5,s0,-48
    80005158:	009784b3          	add	s1,a5,s1
    8000515c:	02d00793          	li	a5,45
    80005160:	fef48823          	sb	a5,-16(s1)
    80005164:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005168:	fff4849b          	addiw	s1,s1,-1
    8000516c:	0204c463          	bltz	s1,80005194 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80005170:	fd040793          	addi	a5,s0,-48
    80005174:	009787b3          	add	a5,a5,s1
    80005178:	ff07c503          	lbu	a0,-16(a5)
    8000517c:	ffffd097          	auipc	ra,0xffffd
    80005180:	0d4080e7          	jalr	212(ra) # 80002250 <_Z4putcc>
    80005184:	fe5ff06f          	j	80005168 <_Z8printIntiii+0xb0>
        x = -xx;
    80005188:	4090053b          	negw	a0,s1
        neg = 1;
    8000518c:	00100593          	li	a1,1
        x = -xx;
    80005190:	f7dff06f          	j	8000510c <_Z8printIntiii+0x54>

    UNLOCK();
    80005194:	00000613          	li	a2,0
    80005198:	00100593          	li	a1,1
    8000519c:	00009517          	auipc	a0,0x9
    800051a0:	7e450513          	addi	a0,a0,2020 # 8000e980 <lockPrint>
    800051a4:	ffffc097          	auipc	ra,0xffffc
    800051a8:	074080e7          	jalr	116(ra) # 80001218 <copy_and_swap>
    800051ac:	fe0514e3          	bnez	a0,80005194 <_Z8printIntiii+0xdc>
}
    800051b0:	03813083          	ld	ra,56(sp)
    800051b4:	03013403          	ld	s0,48(sp)
    800051b8:	02813483          	ld	s1,40(sp)
    800051bc:	02013903          	ld	s2,32(sp)
    800051c0:	01813983          	ld	s3,24(sp)
    800051c4:	04010113          	addi	sp,sp,64
    800051c8:	00008067          	ret

00000000800051cc <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "printing.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800051cc:	fd010113          	addi	sp,sp,-48
    800051d0:	02113423          	sd	ra,40(sp)
    800051d4:	02813023          	sd	s0,32(sp)
    800051d8:	00913c23          	sd	s1,24(sp)
    800051dc:	01213823          	sd	s2,16(sp)
    800051e0:	01313423          	sd	s3,8(sp)
    800051e4:	03010413          	addi	s0,sp,48
    800051e8:	00050493          	mv	s1,a0
    800051ec:	00058913          	mv	s2,a1
    800051f0:	0015879b          	addiw	a5,a1,1
    800051f4:	0007851b          	sext.w	a0,a5
    800051f8:	00f4a023          	sw	a5,0(s1)
    800051fc:	0004a823          	sw	zero,16(s1)
    80005200:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005204:	00251513          	slli	a0,a0,0x2
    80005208:	ffffd097          	auipc	ra,0xffffd
    8000520c:	d68080e7          	jalr	-664(ra) # 80001f70 <_Z9mem_allocm>
    80005210:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005214:	01000513          	li	a0,16
    80005218:	fffff097          	auipc	ra,0xfffff
    8000521c:	804080e7          	jalr	-2044(ra) # 80003a1c <_Znwm>
    80005220:	00050993          	mv	s3,a0
    80005224:	00000593          	li	a1,0
    80005228:	fffff097          	auipc	ra,0xfffff
    8000522c:	a48080e7          	jalr	-1464(ra) # 80003c70 <_ZN9SemaphoreC1Ej>
    80005230:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005234:	01000513          	li	a0,16
    80005238:	ffffe097          	auipc	ra,0xffffe
    8000523c:	7e4080e7          	jalr	2020(ra) # 80003a1c <_Znwm>
    80005240:	00050993          	mv	s3,a0
    80005244:	00090593          	mv	a1,s2
    80005248:	fffff097          	auipc	ra,0xfffff
    8000524c:	a28080e7          	jalr	-1496(ra) # 80003c70 <_ZN9SemaphoreC1Ej>
    80005250:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005254:	01000513          	li	a0,16
    80005258:	ffffe097          	auipc	ra,0xffffe
    8000525c:	7c4080e7          	jalr	1988(ra) # 80003a1c <_Znwm>
    80005260:	00050913          	mv	s2,a0
    80005264:	00100593          	li	a1,1
    80005268:	fffff097          	auipc	ra,0xfffff
    8000526c:	a08080e7          	jalr	-1528(ra) # 80003c70 <_ZN9SemaphoreC1Ej>
    80005270:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005274:	01000513          	li	a0,16
    80005278:	ffffe097          	auipc	ra,0xffffe
    8000527c:	7a4080e7          	jalr	1956(ra) # 80003a1c <_Znwm>
    80005280:	00050913          	mv	s2,a0
    80005284:	00100593          	li	a1,1
    80005288:	fffff097          	auipc	ra,0xfffff
    8000528c:	9e8080e7          	jalr	-1560(ra) # 80003c70 <_ZN9SemaphoreC1Ej>
    80005290:	0324b823          	sd	s2,48(s1)
}
    80005294:	02813083          	ld	ra,40(sp)
    80005298:	02013403          	ld	s0,32(sp)
    8000529c:	01813483          	ld	s1,24(sp)
    800052a0:	01013903          	ld	s2,16(sp)
    800052a4:	00813983          	ld	s3,8(sp)
    800052a8:	03010113          	addi	sp,sp,48
    800052ac:	00008067          	ret
    800052b0:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800052b4:	00098513          	mv	a0,s3
    800052b8:	ffffe097          	auipc	ra,0xffffe
    800052bc:	78c080e7          	jalr	1932(ra) # 80003a44 <_ZdlPv>
    800052c0:	00048513          	mv	a0,s1
    800052c4:	0000a097          	auipc	ra,0xa
    800052c8:	794080e7          	jalr	1940(ra) # 8000fa58 <_Unwind_Resume>
    800052cc:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800052d0:	00098513          	mv	a0,s3
    800052d4:	ffffe097          	auipc	ra,0xffffe
    800052d8:	770080e7          	jalr	1904(ra) # 80003a44 <_ZdlPv>
    800052dc:	00048513          	mv	a0,s1
    800052e0:	0000a097          	auipc	ra,0xa
    800052e4:	778080e7          	jalr	1912(ra) # 8000fa58 <_Unwind_Resume>
    800052e8:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800052ec:	00090513          	mv	a0,s2
    800052f0:	ffffe097          	auipc	ra,0xffffe
    800052f4:	754080e7          	jalr	1876(ra) # 80003a44 <_ZdlPv>
    800052f8:	00048513          	mv	a0,s1
    800052fc:	0000a097          	auipc	ra,0xa
    80005300:	75c080e7          	jalr	1884(ra) # 8000fa58 <_Unwind_Resume>
    80005304:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005308:	00090513          	mv	a0,s2
    8000530c:	ffffe097          	auipc	ra,0xffffe
    80005310:	738080e7          	jalr	1848(ra) # 80003a44 <_ZdlPv>
    80005314:	00048513          	mv	a0,s1
    80005318:	0000a097          	auipc	ra,0xa
    8000531c:	740080e7          	jalr	1856(ra) # 8000fa58 <_Unwind_Resume>

0000000080005320 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005320:	fe010113          	addi	sp,sp,-32
    80005324:	00113c23          	sd	ra,24(sp)
    80005328:	00813823          	sd	s0,16(sp)
    8000532c:	00913423          	sd	s1,8(sp)
    80005330:	01213023          	sd	s2,0(sp)
    80005334:	02010413          	addi	s0,sp,32
    80005338:	00050493          	mv	s1,a0
    8000533c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005340:	01853503          	ld	a0,24(a0)
    80005344:	fffff097          	auipc	ra,0xfffff
    80005348:	8f4080e7          	jalr	-1804(ra) # 80003c38 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    8000534c:	0304b503          	ld	a0,48(s1)
    80005350:	fffff097          	auipc	ra,0xfffff
    80005354:	8e8080e7          	jalr	-1816(ra) # 80003c38 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005358:	0084b783          	ld	a5,8(s1)
    8000535c:	0144a703          	lw	a4,20(s1)
    80005360:	00271713          	slli	a4,a4,0x2
    80005364:	00e787b3          	add	a5,a5,a4
    80005368:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000536c:	0144a783          	lw	a5,20(s1)
    80005370:	0017879b          	addiw	a5,a5,1
    80005374:	0004a703          	lw	a4,0(s1)
    80005378:	02e7e7bb          	remw	a5,a5,a4
    8000537c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005380:	0304b503          	ld	a0,48(s1)
    80005384:	fffff097          	auipc	ra,0xfffff
    80005388:	938080e7          	jalr	-1736(ra) # 80003cbc <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    8000538c:	0204b503          	ld	a0,32(s1)
    80005390:	fffff097          	auipc	ra,0xfffff
    80005394:	92c080e7          	jalr	-1748(ra) # 80003cbc <_ZN9Semaphore6signalEv>

}
    80005398:	01813083          	ld	ra,24(sp)
    8000539c:	01013403          	ld	s0,16(sp)
    800053a0:	00813483          	ld	s1,8(sp)
    800053a4:	00013903          	ld	s2,0(sp)
    800053a8:	02010113          	addi	sp,sp,32
    800053ac:	00008067          	ret

00000000800053b0 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800053b0:	fe010113          	addi	sp,sp,-32
    800053b4:	00113c23          	sd	ra,24(sp)
    800053b8:	00813823          	sd	s0,16(sp)
    800053bc:	00913423          	sd	s1,8(sp)
    800053c0:	01213023          	sd	s2,0(sp)
    800053c4:	02010413          	addi	s0,sp,32
    800053c8:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800053cc:	02053503          	ld	a0,32(a0)
    800053d0:	fffff097          	auipc	ra,0xfffff
    800053d4:	868080e7          	jalr	-1944(ra) # 80003c38 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800053d8:	0284b503          	ld	a0,40(s1)
    800053dc:	fffff097          	auipc	ra,0xfffff
    800053e0:	85c080e7          	jalr	-1956(ra) # 80003c38 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800053e4:	0084b703          	ld	a4,8(s1)
    800053e8:	0104a783          	lw	a5,16(s1)
    800053ec:	00279693          	slli	a3,a5,0x2
    800053f0:	00d70733          	add	a4,a4,a3
    800053f4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800053f8:	0017879b          	addiw	a5,a5,1
    800053fc:	0004a703          	lw	a4,0(s1)
    80005400:	02e7e7bb          	remw	a5,a5,a4
    80005404:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005408:	0284b503          	ld	a0,40(s1)
    8000540c:	fffff097          	auipc	ra,0xfffff
    80005410:	8b0080e7          	jalr	-1872(ra) # 80003cbc <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005414:	0184b503          	ld	a0,24(s1)
    80005418:	fffff097          	auipc	ra,0xfffff
    8000541c:	8a4080e7          	jalr	-1884(ra) # 80003cbc <_ZN9Semaphore6signalEv>

    return ret;
}
    80005420:	00090513          	mv	a0,s2
    80005424:	01813083          	ld	ra,24(sp)
    80005428:	01013403          	ld	s0,16(sp)
    8000542c:	00813483          	ld	s1,8(sp)
    80005430:	00013903          	ld	s2,0(sp)
    80005434:	02010113          	addi	sp,sp,32
    80005438:	00008067          	ret

000000008000543c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    8000543c:	fe010113          	addi	sp,sp,-32
    80005440:	00113c23          	sd	ra,24(sp)
    80005444:	00813823          	sd	s0,16(sp)
    80005448:	00913423          	sd	s1,8(sp)
    8000544c:	01213023          	sd	s2,0(sp)
    80005450:	02010413          	addi	s0,sp,32
    80005454:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005458:	02853503          	ld	a0,40(a0)
    8000545c:	ffffe097          	auipc	ra,0xffffe
    80005460:	7dc080e7          	jalr	2012(ra) # 80003c38 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005464:	0304b503          	ld	a0,48(s1)
    80005468:	ffffe097          	auipc	ra,0xffffe
    8000546c:	7d0080e7          	jalr	2000(ra) # 80003c38 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005470:	0144a783          	lw	a5,20(s1)
    80005474:	0104a903          	lw	s2,16(s1)
    80005478:	0327ce63          	blt	a5,s2,800054b4 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    8000547c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005480:	0304b503          	ld	a0,48(s1)
    80005484:	fffff097          	auipc	ra,0xfffff
    80005488:	838080e7          	jalr	-1992(ra) # 80003cbc <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    8000548c:	0284b503          	ld	a0,40(s1)
    80005490:	fffff097          	auipc	ra,0xfffff
    80005494:	82c080e7          	jalr	-2004(ra) # 80003cbc <_ZN9Semaphore6signalEv>

    return ret;
}
    80005498:	00090513          	mv	a0,s2
    8000549c:	01813083          	ld	ra,24(sp)
    800054a0:	01013403          	ld	s0,16(sp)
    800054a4:	00813483          	ld	s1,8(sp)
    800054a8:	00013903          	ld	s2,0(sp)
    800054ac:	02010113          	addi	sp,sp,32
    800054b0:	00008067          	ret
        ret = cap - head + tail;
    800054b4:	0004a703          	lw	a4,0(s1)
    800054b8:	4127093b          	subw	s2,a4,s2
    800054bc:	00f9093b          	addw	s2,s2,a5
    800054c0:	fc1ff06f          	j	80005480 <_ZN9BufferCPP6getCntEv+0x44>

00000000800054c4 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800054c4:	fe010113          	addi	sp,sp,-32
    800054c8:	00113c23          	sd	ra,24(sp)
    800054cc:	00813823          	sd	s0,16(sp)
    800054d0:	00913423          	sd	s1,8(sp)
    800054d4:	02010413          	addi	s0,sp,32
    800054d8:	00050493          	mv	s1,a0
    Console::putc('\n');
    800054dc:	00a00513          	li	a0,10
    800054e0:	fffff097          	auipc	ra,0xfffff
    800054e4:	83c080e7          	jalr	-1988(ra) # 80003d1c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800054e8:	00003517          	auipc	a0,0x3
    800054ec:	eb850513          	addi	a0,a0,-328 # 800083a0 <CONSOLE_STATUS+0x390>
    800054f0:	00000097          	auipc	ra,0x0
    800054f4:	a30080e7          	jalr	-1488(ra) # 80004f20 <_Z11printStringPKc>
    while (getCnt()) {
    800054f8:	00048513          	mv	a0,s1
    800054fc:	00000097          	auipc	ra,0x0
    80005500:	f40080e7          	jalr	-192(ra) # 8000543c <_ZN9BufferCPP6getCntEv>
    80005504:	02050c63          	beqz	a0,8000553c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005508:	0084b783          	ld	a5,8(s1)
    8000550c:	0104a703          	lw	a4,16(s1)
    80005510:	00271713          	slli	a4,a4,0x2
    80005514:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005518:	0007c503          	lbu	a0,0(a5)
    8000551c:	fffff097          	auipc	ra,0xfffff
    80005520:	800080e7          	jalr	-2048(ra) # 80003d1c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005524:	0104a783          	lw	a5,16(s1)
    80005528:	0017879b          	addiw	a5,a5,1
    8000552c:	0004a703          	lw	a4,0(s1)
    80005530:	02e7e7bb          	remw	a5,a5,a4
    80005534:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005538:	fc1ff06f          	j	800054f8 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    8000553c:	02100513          	li	a0,33
    80005540:	ffffe097          	auipc	ra,0xffffe
    80005544:	7dc080e7          	jalr	2012(ra) # 80003d1c <_ZN7Console4putcEc>
    Console::putc('\n');
    80005548:	00a00513          	li	a0,10
    8000554c:	ffffe097          	auipc	ra,0xffffe
    80005550:	7d0080e7          	jalr	2000(ra) # 80003d1c <_ZN7Console4putcEc>
    mem_free(buffer);
    80005554:	0084b503          	ld	a0,8(s1)
    80005558:	ffffd097          	auipc	ra,0xffffd
    8000555c:	a48080e7          	jalr	-1464(ra) # 80001fa0 <_Z8mem_freePv>
    delete itemAvailable;
    80005560:	0204b503          	ld	a0,32(s1)
    80005564:	00050863          	beqz	a0,80005574 <_ZN9BufferCPPD1Ev+0xb0>
    80005568:	00053783          	ld	a5,0(a0)
    8000556c:	0087b783          	ld	a5,8(a5)
    80005570:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005574:	0184b503          	ld	a0,24(s1)
    80005578:	00050863          	beqz	a0,80005588 <_ZN9BufferCPPD1Ev+0xc4>
    8000557c:	00053783          	ld	a5,0(a0)
    80005580:	0087b783          	ld	a5,8(a5)
    80005584:	000780e7          	jalr	a5
    delete mutexTail;
    80005588:	0304b503          	ld	a0,48(s1)
    8000558c:	00050863          	beqz	a0,8000559c <_ZN9BufferCPPD1Ev+0xd8>
    80005590:	00053783          	ld	a5,0(a0)
    80005594:	0087b783          	ld	a5,8(a5)
    80005598:	000780e7          	jalr	a5
    delete mutexHead;
    8000559c:	0284b503          	ld	a0,40(s1)
    800055a0:	00050863          	beqz	a0,800055b0 <_ZN9BufferCPPD1Ev+0xec>
    800055a4:	00053783          	ld	a5,0(a0)
    800055a8:	0087b783          	ld	a5,8(a5)
    800055ac:	000780e7          	jalr	a5
}
    800055b0:	01813083          	ld	ra,24(sp)
    800055b4:	01013403          	ld	s0,16(sp)
    800055b8:	00813483          	ld	s1,8(sp)
    800055bc:	02010113          	addi	sp,sp,32
    800055c0:	00008067          	ret

00000000800055c4 <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    800055c4:	fe010113          	addi	sp,sp,-32
    800055c8:	00113c23          	sd	ra,24(sp)
    800055cc:	00813823          	sd	s0,16(sp)
    800055d0:	00913423          	sd	s1,8(sp)
    800055d4:	01213023          	sd	s2,0(sp)
    800055d8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800055dc:	00000913          	li	s2,0
    800055e0:	0380006f          	j	80005618 <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800055e4:	ffffd097          	auipc	ra,0xffffd
    800055e8:	a68080e7          	jalr	-1432(ra) # 8000204c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800055ec:	00148493          	addi	s1,s1,1
    800055f0:	000027b7          	lui	a5,0x2
    800055f4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800055f8:	0097ee63          	bltu	a5,s1,80005614 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800055fc:	00000713          	li	a4,0
    80005600:	000077b7          	lui	a5,0x7
    80005604:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005608:	fce7eee3          	bltu	a5,a4,800055e4 <_Z11workerBodyAPv+0x20>
    8000560c:	00170713          	addi	a4,a4,1
    80005610:	ff1ff06f          	j	80005600 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005614:	00190913          	addi	s2,s2,1
    80005618:	00900793          	li	a5,9
    8000561c:	0527e063          	bltu	a5,s2,8000565c <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005620:	00003517          	auipc	a0,0x3
    80005624:	d9850513          	addi	a0,a0,-616 # 800083b8 <CONSOLE_STATUS+0x3a8>
    80005628:	00000097          	auipc	ra,0x0
    8000562c:	8f8080e7          	jalr	-1800(ra) # 80004f20 <_Z11printStringPKc>
    80005630:	00000613          	li	a2,0
    80005634:	00a00593          	li	a1,10
    80005638:	0009051b          	sext.w	a0,s2
    8000563c:	00000097          	auipc	ra,0x0
    80005640:	a7c080e7          	jalr	-1412(ra) # 800050b8 <_Z8printIntiii>
    80005644:	00003517          	auipc	a0,0x3
    80005648:	f7c50513          	addi	a0,a0,-132 # 800085c0 <CONSOLE_STATUS+0x5b0>
    8000564c:	00000097          	auipc	ra,0x0
    80005650:	8d4080e7          	jalr	-1836(ra) # 80004f20 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005654:	00000493          	li	s1,0
    80005658:	f99ff06f          	j	800055f0 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    8000565c:	00003517          	auipc	a0,0x3
    80005660:	d6450513          	addi	a0,a0,-668 # 800083c0 <CONSOLE_STATUS+0x3b0>
    80005664:	00000097          	auipc	ra,0x0
    80005668:	8bc080e7          	jalr	-1860(ra) # 80004f20 <_Z11printStringPKc>
    finishedA = true;
    8000566c:	00100793          	li	a5,1
    80005670:	00009717          	auipc	a4,0x9
    80005674:	30f70c23          	sb	a5,792(a4) # 8000e988 <finishedA>
}
    80005678:	01813083          	ld	ra,24(sp)
    8000567c:	01013403          	ld	s0,16(sp)
    80005680:	00813483          	ld	s1,8(sp)
    80005684:	00013903          	ld	s2,0(sp)
    80005688:	02010113          	addi	sp,sp,32
    8000568c:	00008067          	ret

0000000080005690 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    80005690:	fe010113          	addi	sp,sp,-32
    80005694:	00113c23          	sd	ra,24(sp)
    80005698:	00813823          	sd	s0,16(sp)
    8000569c:	00913423          	sd	s1,8(sp)
    800056a0:	01213023          	sd	s2,0(sp)
    800056a4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800056a8:	00000913          	li	s2,0
    800056ac:	0380006f          	j	800056e4 <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800056b0:	ffffd097          	auipc	ra,0xffffd
    800056b4:	99c080e7          	jalr	-1636(ra) # 8000204c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800056b8:	00148493          	addi	s1,s1,1
    800056bc:	000027b7          	lui	a5,0x2
    800056c0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800056c4:	0097ee63          	bltu	a5,s1,800056e0 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800056c8:	00000713          	li	a4,0
    800056cc:	000077b7          	lui	a5,0x7
    800056d0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800056d4:	fce7eee3          	bltu	a5,a4,800056b0 <_Z11workerBodyBPv+0x20>
    800056d8:	00170713          	addi	a4,a4,1
    800056dc:	ff1ff06f          	j	800056cc <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800056e0:	00190913          	addi	s2,s2,1
    800056e4:	00f00793          	li	a5,15
    800056e8:	0527e063          	bltu	a5,s2,80005728 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800056ec:	00003517          	auipc	a0,0x3
    800056f0:	ce450513          	addi	a0,a0,-796 # 800083d0 <CONSOLE_STATUS+0x3c0>
    800056f4:	00000097          	auipc	ra,0x0
    800056f8:	82c080e7          	jalr	-2004(ra) # 80004f20 <_Z11printStringPKc>
    800056fc:	00000613          	li	a2,0
    80005700:	00a00593          	li	a1,10
    80005704:	0009051b          	sext.w	a0,s2
    80005708:	00000097          	auipc	ra,0x0
    8000570c:	9b0080e7          	jalr	-1616(ra) # 800050b8 <_Z8printIntiii>
    80005710:	00003517          	auipc	a0,0x3
    80005714:	eb050513          	addi	a0,a0,-336 # 800085c0 <CONSOLE_STATUS+0x5b0>
    80005718:	00000097          	auipc	ra,0x0
    8000571c:	808080e7          	jalr	-2040(ra) # 80004f20 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005720:	00000493          	li	s1,0
    80005724:	f99ff06f          	j	800056bc <_Z11workerBodyBPv+0x2c>
        }
    }
    thread_dispatch();
    80005728:	ffffd097          	auipc	ra,0xffffd
    8000572c:	924080e7          	jalr	-1756(ra) # 8000204c <_Z15thread_dispatchv>
    printString("B finished!\n");
    80005730:	00003517          	auipc	a0,0x3
    80005734:	ca850513          	addi	a0,a0,-856 # 800083d8 <CONSOLE_STATUS+0x3c8>
    80005738:	fffff097          	auipc	ra,0xfffff
    8000573c:	7e8080e7          	jalr	2024(ra) # 80004f20 <_Z11printStringPKc>
    finishedB = true;
    80005740:	00100793          	li	a5,1
    80005744:	00009717          	auipc	a4,0x9
    80005748:	24f702a3          	sb	a5,581(a4) # 8000e989 <finishedB>
}
    8000574c:	01813083          	ld	ra,24(sp)
    80005750:	01013403          	ld	s0,16(sp)
    80005754:	00813483          	ld	s1,8(sp)
    80005758:	00013903          	ld	s2,0(sp)
    8000575c:	02010113          	addi	sp,sp,32
    80005760:	00008067          	ret

0000000080005764 <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    80005764:	fe010113          	addi	sp,sp,-32
    80005768:	00113c23          	sd	ra,24(sp)
    8000576c:	00813823          	sd	s0,16(sp)
    80005770:	00913423          	sd	s1,8(sp)
    80005774:	01213023          	sd	s2,0(sp)
    80005778:	02010413          	addi	s0,sp,32
    8000577c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005780:	00100793          	li	a5,1
    80005784:	02a7f863          	bgeu	a5,a0,800057b4 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005788:	00a00793          	li	a5,10
    8000578c:	02f577b3          	remu	a5,a0,a5
    80005790:	02078e63          	beqz	a5,800057cc <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005794:	fff48513          	addi	a0,s1,-1
    80005798:	00000097          	auipc	ra,0x0
    8000579c:	fcc080e7          	jalr	-52(ra) # 80005764 <_Z9fibonaccim>
    800057a0:	00050913          	mv	s2,a0
    800057a4:	ffe48513          	addi	a0,s1,-2
    800057a8:	00000097          	auipc	ra,0x0
    800057ac:	fbc080e7          	jalr	-68(ra) # 80005764 <_Z9fibonaccim>
    800057b0:	00a90533          	add	a0,s2,a0
}
    800057b4:	01813083          	ld	ra,24(sp)
    800057b8:	01013403          	ld	s0,16(sp)
    800057bc:	00813483          	ld	s1,8(sp)
    800057c0:	00013903          	ld	s2,0(sp)
    800057c4:	02010113          	addi	sp,sp,32
    800057c8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800057cc:	ffffd097          	auipc	ra,0xffffd
    800057d0:	880080e7          	jalr	-1920(ra) # 8000204c <_Z15thread_dispatchv>
    800057d4:	fc1ff06f          	j	80005794 <_Z9fibonaccim+0x30>

00000000800057d8 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    800057d8:	fe010113          	addi	sp,sp,-32
    800057dc:	00113c23          	sd	ra,24(sp)
    800057e0:	00813823          	sd	s0,16(sp)
    800057e4:	00913423          	sd	s1,8(sp)
    800057e8:	01213023          	sd	s2,0(sp)
    800057ec:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800057f0:	00000493          	li	s1,0
    800057f4:	0400006f          	j	80005834 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800057f8:	00003517          	auipc	a0,0x3
    800057fc:	bf050513          	addi	a0,a0,-1040 # 800083e8 <CONSOLE_STATUS+0x3d8>
    80005800:	fffff097          	auipc	ra,0xfffff
    80005804:	720080e7          	jalr	1824(ra) # 80004f20 <_Z11printStringPKc>
    80005808:	00000613          	li	a2,0
    8000580c:	00a00593          	li	a1,10
    80005810:	00048513          	mv	a0,s1
    80005814:	00000097          	auipc	ra,0x0
    80005818:	8a4080e7          	jalr	-1884(ra) # 800050b8 <_Z8printIntiii>
    8000581c:	00003517          	auipc	a0,0x3
    80005820:	da450513          	addi	a0,a0,-604 # 800085c0 <CONSOLE_STATUS+0x5b0>
    80005824:	fffff097          	auipc	ra,0xfffff
    80005828:	6fc080e7          	jalr	1788(ra) # 80004f20 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000582c:	0014849b          	addiw	s1,s1,1
    80005830:	0ff4f493          	andi	s1,s1,255
    80005834:	00200793          	li	a5,2
    80005838:	fc97f0e3          	bgeu	a5,s1,800057f8 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    8000583c:	00003517          	auipc	a0,0x3
    80005840:	bb450513          	addi	a0,a0,-1100 # 800083f0 <CONSOLE_STATUS+0x3e0>
    80005844:	fffff097          	auipc	ra,0xfffff
    80005848:	6dc080e7          	jalr	1756(ra) # 80004f20 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000584c:	00700313          	li	t1,7
    thread_dispatch();
    80005850:	ffffc097          	auipc	ra,0xffffc
    80005854:	7fc080e7          	jalr	2044(ra) # 8000204c <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005858:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    8000585c:	00003517          	auipc	a0,0x3
    80005860:	ba450513          	addi	a0,a0,-1116 # 80008400 <CONSOLE_STATUS+0x3f0>
    80005864:	fffff097          	auipc	ra,0xfffff
    80005868:	6bc080e7          	jalr	1724(ra) # 80004f20 <_Z11printStringPKc>
    8000586c:	00000613          	li	a2,0
    80005870:	00a00593          	li	a1,10
    80005874:	0009051b          	sext.w	a0,s2
    80005878:	00000097          	auipc	ra,0x0
    8000587c:	840080e7          	jalr	-1984(ra) # 800050b8 <_Z8printIntiii>
    80005880:	00003517          	auipc	a0,0x3
    80005884:	d4050513          	addi	a0,a0,-704 # 800085c0 <CONSOLE_STATUS+0x5b0>
    80005888:	fffff097          	auipc	ra,0xfffff
    8000588c:	698080e7          	jalr	1688(ra) # 80004f20 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80005890:	00c00513          	li	a0,12
    80005894:	00000097          	auipc	ra,0x0
    80005898:	ed0080e7          	jalr	-304(ra) # 80005764 <_Z9fibonaccim>
    8000589c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800058a0:	00003517          	auipc	a0,0x3
    800058a4:	b6850513          	addi	a0,a0,-1176 # 80008408 <CONSOLE_STATUS+0x3f8>
    800058a8:	fffff097          	auipc	ra,0xfffff
    800058ac:	678080e7          	jalr	1656(ra) # 80004f20 <_Z11printStringPKc>
    800058b0:	00000613          	li	a2,0
    800058b4:	00a00593          	li	a1,10
    800058b8:	0009051b          	sext.w	a0,s2
    800058bc:	fffff097          	auipc	ra,0xfffff
    800058c0:	7fc080e7          	jalr	2044(ra) # 800050b8 <_Z8printIntiii>
    800058c4:	00003517          	auipc	a0,0x3
    800058c8:	cfc50513          	addi	a0,a0,-772 # 800085c0 <CONSOLE_STATUS+0x5b0>
    800058cc:	fffff097          	auipc	ra,0xfffff
    800058d0:	654080e7          	jalr	1620(ra) # 80004f20 <_Z11printStringPKc>
    800058d4:	0400006f          	j	80005914 <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800058d8:	00003517          	auipc	a0,0x3
    800058dc:	b1050513          	addi	a0,a0,-1264 # 800083e8 <CONSOLE_STATUS+0x3d8>
    800058e0:	fffff097          	auipc	ra,0xfffff
    800058e4:	640080e7          	jalr	1600(ra) # 80004f20 <_Z11printStringPKc>
    800058e8:	00000613          	li	a2,0
    800058ec:	00a00593          	li	a1,10
    800058f0:	00048513          	mv	a0,s1
    800058f4:	fffff097          	auipc	ra,0xfffff
    800058f8:	7c4080e7          	jalr	1988(ra) # 800050b8 <_Z8printIntiii>
    800058fc:	00003517          	auipc	a0,0x3
    80005900:	cc450513          	addi	a0,a0,-828 # 800085c0 <CONSOLE_STATUS+0x5b0>
    80005904:	fffff097          	auipc	ra,0xfffff
    80005908:	61c080e7          	jalr	1564(ra) # 80004f20 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000590c:	0014849b          	addiw	s1,s1,1
    80005910:	0ff4f493          	andi	s1,s1,255
    80005914:	00500793          	li	a5,5
    80005918:	fc97f0e3          	bgeu	a5,s1,800058d8 <_Z11workerBodyCPv+0x100>
    }

    thread_dispatch();
    8000591c:	ffffc097          	auipc	ra,0xffffc
    80005920:	730080e7          	jalr	1840(ra) # 8000204c <_Z15thread_dispatchv>
    printString("A finished!\n");
    80005924:	00003517          	auipc	a0,0x3
    80005928:	a9c50513          	addi	a0,a0,-1380 # 800083c0 <CONSOLE_STATUS+0x3b0>
    8000592c:	fffff097          	auipc	ra,0xfffff
    80005930:	5f4080e7          	jalr	1524(ra) # 80004f20 <_Z11printStringPKc>
    finishedC = true;
    80005934:	00100793          	li	a5,1
    80005938:	00009717          	auipc	a4,0x9
    8000593c:	04f70923          	sb	a5,82(a4) # 8000e98a <finishedC>
}
    80005940:	01813083          	ld	ra,24(sp)
    80005944:	01013403          	ld	s0,16(sp)
    80005948:	00813483          	ld	s1,8(sp)
    8000594c:	00013903          	ld	s2,0(sp)
    80005950:	02010113          	addi	sp,sp,32
    80005954:	00008067          	ret

0000000080005958 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80005958:	fe010113          	addi	sp,sp,-32
    8000595c:	00113c23          	sd	ra,24(sp)
    80005960:	00813823          	sd	s0,16(sp)
    80005964:	00913423          	sd	s1,8(sp)
    80005968:	01213023          	sd	s2,0(sp)
    8000596c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005970:	00a00493          	li	s1,10
    80005974:	0400006f          	j	800059b4 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005978:	00003517          	auipc	a0,0x3
    8000597c:	aa050513          	addi	a0,a0,-1376 # 80008418 <CONSOLE_STATUS+0x408>
    80005980:	fffff097          	auipc	ra,0xfffff
    80005984:	5a0080e7          	jalr	1440(ra) # 80004f20 <_Z11printStringPKc>
    80005988:	00000613          	li	a2,0
    8000598c:	00a00593          	li	a1,10
    80005990:	00048513          	mv	a0,s1
    80005994:	fffff097          	auipc	ra,0xfffff
    80005998:	724080e7          	jalr	1828(ra) # 800050b8 <_Z8printIntiii>
    8000599c:	00003517          	auipc	a0,0x3
    800059a0:	c2450513          	addi	a0,a0,-988 # 800085c0 <CONSOLE_STATUS+0x5b0>
    800059a4:	fffff097          	auipc	ra,0xfffff
    800059a8:	57c080e7          	jalr	1404(ra) # 80004f20 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800059ac:	0014849b          	addiw	s1,s1,1
    800059b0:	0ff4f493          	andi	s1,s1,255
    800059b4:	00c00793          	li	a5,12
    800059b8:	fc97f0e3          	bgeu	a5,s1,80005978 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800059bc:	00003517          	auipc	a0,0x3
    800059c0:	a6450513          	addi	a0,a0,-1436 # 80008420 <CONSOLE_STATUS+0x410>
    800059c4:	fffff097          	auipc	ra,0xfffff
    800059c8:	55c080e7          	jalr	1372(ra) # 80004f20 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800059cc:	00500313          	li	t1,5
    thread_dispatch();
    800059d0:	ffffc097          	auipc	ra,0xffffc
    800059d4:	67c080e7          	jalr	1660(ra) # 8000204c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800059d8:	01000513          	li	a0,16
    800059dc:	00000097          	auipc	ra,0x0
    800059e0:	d88080e7          	jalr	-632(ra) # 80005764 <_Z9fibonaccim>
    800059e4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800059e8:	00003517          	auipc	a0,0x3
    800059ec:	a4850513          	addi	a0,a0,-1464 # 80008430 <CONSOLE_STATUS+0x420>
    800059f0:	fffff097          	auipc	ra,0xfffff
    800059f4:	530080e7          	jalr	1328(ra) # 80004f20 <_Z11printStringPKc>
    800059f8:	00000613          	li	a2,0
    800059fc:	00a00593          	li	a1,10
    80005a00:	0009051b          	sext.w	a0,s2
    80005a04:	fffff097          	auipc	ra,0xfffff
    80005a08:	6b4080e7          	jalr	1716(ra) # 800050b8 <_Z8printIntiii>
    80005a0c:	00003517          	auipc	a0,0x3
    80005a10:	bb450513          	addi	a0,a0,-1100 # 800085c0 <CONSOLE_STATUS+0x5b0>
    80005a14:	fffff097          	auipc	ra,0xfffff
    80005a18:	50c080e7          	jalr	1292(ra) # 80004f20 <_Z11printStringPKc>
    80005a1c:	0400006f          	j	80005a5c <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005a20:	00003517          	auipc	a0,0x3
    80005a24:	9f850513          	addi	a0,a0,-1544 # 80008418 <CONSOLE_STATUS+0x408>
    80005a28:	fffff097          	auipc	ra,0xfffff
    80005a2c:	4f8080e7          	jalr	1272(ra) # 80004f20 <_Z11printStringPKc>
    80005a30:	00000613          	li	a2,0
    80005a34:	00a00593          	li	a1,10
    80005a38:	00048513          	mv	a0,s1
    80005a3c:	fffff097          	auipc	ra,0xfffff
    80005a40:	67c080e7          	jalr	1660(ra) # 800050b8 <_Z8printIntiii>
    80005a44:	00003517          	auipc	a0,0x3
    80005a48:	b7c50513          	addi	a0,a0,-1156 # 800085c0 <CONSOLE_STATUS+0x5b0>
    80005a4c:	fffff097          	auipc	ra,0xfffff
    80005a50:	4d4080e7          	jalr	1236(ra) # 80004f20 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005a54:	0014849b          	addiw	s1,s1,1
    80005a58:	0ff4f493          	andi	s1,s1,255
    80005a5c:	00f00793          	li	a5,15
    80005a60:	fc97f0e3          	bgeu	a5,s1,80005a20 <_Z11workerBodyDPv+0xc8>
    }

    thread_dispatch();
    80005a64:	ffffc097          	auipc	ra,0xffffc
    80005a68:	5e8080e7          	jalr	1512(ra) # 8000204c <_Z15thread_dispatchv>
    printString("D finished!\n");
    80005a6c:	00003517          	auipc	a0,0x3
    80005a70:	9d450513          	addi	a0,a0,-1580 # 80008440 <CONSOLE_STATUS+0x430>
    80005a74:	fffff097          	auipc	ra,0xfffff
    80005a78:	4ac080e7          	jalr	1196(ra) # 80004f20 <_Z11printStringPKc>
    finishedD = true;
    80005a7c:	00100793          	li	a5,1
    80005a80:	00009717          	auipc	a4,0x9
    80005a84:	f0f705a3          	sb	a5,-245(a4) # 8000e98b <finishedD>
}
    80005a88:	01813083          	ld	ra,24(sp)
    80005a8c:	01013403          	ld	s0,16(sp)
    80005a90:	00813483          	ld	s1,8(sp)
    80005a94:	00013903          	ld	s2,0(sp)
    80005a98:	02010113          	addi	sp,sp,32
    80005a9c:	00008067          	ret

0000000080005aa0 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80005aa0:	fc010113          	addi	sp,sp,-64
    80005aa4:	02113c23          	sd	ra,56(sp)
    80005aa8:	02813823          	sd	s0,48(sp)
    80005aac:	02913423          	sd	s1,40(sp)
    80005ab0:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005ab4:	00000613          	li	a2,0
    80005ab8:	00000597          	auipc	a1,0x0
    80005abc:	b0c58593          	addi	a1,a1,-1268 # 800055c4 <_Z11workerBodyAPv>
    80005ac0:	fc040513          	addi	a0,s0,-64
    80005ac4:	ffffc097          	auipc	ra,0xffffc
    80005ac8:	508080e7          	jalr	1288(ra) # 80001fcc <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80005acc:	00003517          	auipc	a0,0x3
    80005ad0:	98450513          	addi	a0,a0,-1660 # 80008450 <CONSOLE_STATUS+0x440>
    80005ad4:	fffff097          	auipc	ra,0xfffff
    80005ad8:	44c080e7          	jalr	1100(ra) # 80004f20 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005adc:	00000613          	li	a2,0
    80005ae0:	00000597          	auipc	a1,0x0
    80005ae4:	bb058593          	addi	a1,a1,-1104 # 80005690 <_Z11workerBodyBPv>
    80005ae8:	fc840513          	addi	a0,s0,-56
    80005aec:	ffffc097          	auipc	ra,0xffffc
    80005af0:	4e0080e7          	jalr	1248(ra) # 80001fcc <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80005af4:	00003517          	auipc	a0,0x3
    80005af8:	97450513          	addi	a0,a0,-1676 # 80008468 <CONSOLE_STATUS+0x458>
    80005afc:	fffff097          	auipc	ra,0xfffff
    80005b00:	424080e7          	jalr	1060(ra) # 80004f20 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005b04:	00000613          	li	a2,0
    80005b08:	00000597          	auipc	a1,0x0
    80005b0c:	cd058593          	addi	a1,a1,-816 # 800057d8 <_Z11workerBodyCPv>
    80005b10:	fd040513          	addi	a0,s0,-48
    80005b14:	ffffc097          	auipc	ra,0xffffc
    80005b18:	4b8080e7          	jalr	1208(ra) # 80001fcc <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80005b1c:	00003517          	auipc	a0,0x3
    80005b20:	96450513          	addi	a0,a0,-1692 # 80008480 <CONSOLE_STATUS+0x470>
    80005b24:	fffff097          	auipc	ra,0xfffff
    80005b28:	3fc080e7          	jalr	1020(ra) # 80004f20 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005b2c:	00000613          	li	a2,0
    80005b30:	00000597          	auipc	a1,0x0
    80005b34:	e2858593          	addi	a1,a1,-472 # 80005958 <_Z11workerBodyDPv>
    80005b38:	fd840513          	addi	a0,s0,-40
    80005b3c:	ffffc097          	auipc	ra,0xffffc
    80005b40:	490080e7          	jalr	1168(ra) # 80001fcc <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80005b44:	00003517          	auipc	a0,0x3
    80005b48:	95450513          	addi	a0,a0,-1708 # 80008498 <CONSOLE_STATUS+0x488>
    80005b4c:	fffff097          	auipc	ra,0xfffff
    80005b50:	3d4080e7          	jalr	980(ra) # 80004f20 <_Z11printStringPKc>
    80005b54:	00c0006f          	j	80005b60 <_Z18Threads_C_API_testv+0xc0>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005b58:	ffffc097          	auipc	ra,0xffffc
    80005b5c:	4f4080e7          	jalr	1268(ra) # 8000204c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005b60:	00009797          	auipc	a5,0x9
    80005b64:	e287c783          	lbu	a5,-472(a5) # 8000e988 <finishedA>
    80005b68:	fe0788e3          	beqz	a5,80005b58 <_Z18Threads_C_API_testv+0xb8>
    80005b6c:	00009797          	auipc	a5,0x9
    80005b70:	e1d7c783          	lbu	a5,-483(a5) # 8000e989 <finishedB>
    80005b74:	fe0782e3          	beqz	a5,80005b58 <_Z18Threads_C_API_testv+0xb8>
    80005b78:	00009797          	auipc	a5,0x9
    80005b7c:	e127c783          	lbu	a5,-494(a5) # 8000e98a <finishedC>
    80005b80:	fc078ce3          	beqz	a5,80005b58 <_Z18Threads_C_API_testv+0xb8>
    80005b84:	00009797          	auipc	a5,0x9
    80005b88:	e077c783          	lbu	a5,-505(a5) # 8000e98b <finishedD>
    80005b8c:	fc0786e3          	beqz	a5,80005b58 <_Z18Threads_C_API_testv+0xb8>
    }

    for (auto &thread: threads) { delete thread; }
    80005b90:	fc040493          	addi	s1,s0,-64
    80005b94:	0080006f          	j	80005b9c <_Z18Threads_C_API_testv+0xfc>
    80005b98:	00848493          	addi	s1,s1,8
    80005b9c:	fe040793          	addi	a5,s0,-32
    80005ba0:	00f48c63          	beq	s1,a5,80005bb8 <_Z18Threads_C_API_testv+0x118>
    80005ba4:	0004b503          	ld	a0,0(s1)
    80005ba8:	fe0508e3          	beqz	a0,80005b98 <_Z18Threads_C_API_testv+0xf8>
    80005bac:	ffffc097          	auipc	ra,0xffffc
    80005bb0:	71c080e7          	jalr	1820(ra) # 800022c8 <_ZN7_threaddlEPv>
    80005bb4:	fe5ff06f          	j	80005b98 <_Z18Threads_C_API_testv+0xf8>
}
    80005bb8:	03813083          	ld	ra,56(sp)
    80005bbc:	03013403          	ld	s0,48(sp)
    80005bc0:	02813483          	ld	s1,40(sp)
    80005bc4:	04010113          	addi	sp,sp,64
    80005bc8:	00008067          	ret

0000000080005bcc <_Z8userMainv>:

//#include "ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain()
{
    80005bcc:	ff010113          	addi	sp,sp,-16
    80005bd0:	00113423          	sd	ra,8(sp)
    80005bd4:	00813023          	sd	s0,0(sp)
    80005bd8:	01010413          	addi	s0,sp,16
    //__asm__ volatile("csrr a0, sstatus"); // test for changing privilege

    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    80005bdc:	00000097          	auipc	ra,0x0
    80005be0:	ec4080e7          	jalr	-316(ra) # 80005aa0 <_Z18Threads_C_API_testv>
    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    80005be4:	00813083          	ld	ra,8(sp)
    80005be8:	00013403          	ld	s0,0(sp)
    80005bec:	01010113          	addi	sp,sp,16
    80005bf0:	00008067          	ret

0000000080005bf4 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005bf4:	fe010113          	addi	sp,sp,-32
    80005bf8:	00113c23          	sd	ra,24(sp)
    80005bfc:	00813823          	sd	s0,16(sp)
    80005c00:	00913423          	sd	s1,8(sp)
    80005c04:	01213023          	sd	s2,0(sp)
    80005c08:	02010413          	addi	s0,sp,32
    80005c0c:	00050493          	mv	s1,a0
    80005c10:	00058913          	mv	s2,a1
    80005c14:	0015879b          	addiw	a5,a1,1
    80005c18:	0007851b          	sext.w	a0,a5
    80005c1c:	00f4a023          	sw	a5,0(s1)
    80005c20:	0004a823          	sw	zero,16(s1)
    80005c24:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005c28:	00251513          	slli	a0,a0,0x2
    80005c2c:	ffffc097          	auipc	ra,0xffffc
    80005c30:	344080e7          	jalr	836(ra) # 80001f70 <_Z9mem_allocm>
    80005c34:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005c38:	00000593          	li	a1,0
    80005c3c:	02048513          	addi	a0,s1,32
    80005c40:	ffffc097          	auipc	ra,0xffffc
    80005c44:	454080e7          	jalr	1108(ra) # 80002094 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80005c48:	00090593          	mv	a1,s2
    80005c4c:	01848513          	addi	a0,s1,24
    80005c50:	ffffc097          	auipc	ra,0xffffc
    80005c54:	444080e7          	jalr	1092(ra) # 80002094 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80005c58:	00100593          	li	a1,1
    80005c5c:	02848513          	addi	a0,s1,40
    80005c60:	ffffc097          	auipc	ra,0xffffc
    80005c64:	434080e7          	jalr	1076(ra) # 80002094 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80005c68:	00100593          	li	a1,1
    80005c6c:	03048513          	addi	a0,s1,48
    80005c70:	ffffc097          	auipc	ra,0xffffc
    80005c74:	424080e7          	jalr	1060(ra) # 80002094 <_Z8sem_openPP4_semj>
}
    80005c78:	01813083          	ld	ra,24(sp)
    80005c7c:	01013403          	ld	s0,16(sp)
    80005c80:	00813483          	ld	s1,8(sp)
    80005c84:	00013903          	ld	s2,0(sp)
    80005c88:	02010113          	addi	sp,sp,32
    80005c8c:	00008067          	ret

0000000080005c90 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005c90:	fe010113          	addi	sp,sp,-32
    80005c94:	00113c23          	sd	ra,24(sp)
    80005c98:	00813823          	sd	s0,16(sp)
    80005c9c:	00913423          	sd	s1,8(sp)
    80005ca0:	01213023          	sd	s2,0(sp)
    80005ca4:	02010413          	addi	s0,sp,32
    80005ca8:	00050493          	mv	s1,a0
    80005cac:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005cb0:	01853503          	ld	a0,24(a0)
    80005cb4:	ffffc097          	auipc	ra,0xffffc
    80005cb8:	444080e7          	jalr	1092(ra) # 800020f8 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80005cbc:	0304b503          	ld	a0,48(s1)
    80005cc0:	ffffc097          	auipc	ra,0xffffc
    80005cc4:	438080e7          	jalr	1080(ra) # 800020f8 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80005cc8:	0084b783          	ld	a5,8(s1)
    80005ccc:	0144a703          	lw	a4,20(s1)
    80005cd0:	00271713          	slli	a4,a4,0x2
    80005cd4:	00e787b3          	add	a5,a5,a4
    80005cd8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005cdc:	0144a783          	lw	a5,20(s1)
    80005ce0:	0017879b          	addiw	a5,a5,1
    80005ce4:	0004a703          	lw	a4,0(s1)
    80005ce8:	02e7e7bb          	remw	a5,a5,a4
    80005cec:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005cf0:	0304b503          	ld	a0,48(s1)
    80005cf4:	ffffc097          	auipc	ra,0xffffc
    80005cf8:	430080e7          	jalr	1072(ra) # 80002124 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80005cfc:	0204b503          	ld	a0,32(s1)
    80005d00:	ffffc097          	auipc	ra,0xffffc
    80005d04:	424080e7          	jalr	1060(ra) # 80002124 <_Z10sem_signalP4_sem>

}
    80005d08:	01813083          	ld	ra,24(sp)
    80005d0c:	01013403          	ld	s0,16(sp)
    80005d10:	00813483          	ld	s1,8(sp)
    80005d14:	00013903          	ld	s2,0(sp)
    80005d18:	02010113          	addi	sp,sp,32
    80005d1c:	00008067          	ret

0000000080005d20 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005d20:	fe010113          	addi	sp,sp,-32
    80005d24:	00113c23          	sd	ra,24(sp)
    80005d28:	00813823          	sd	s0,16(sp)
    80005d2c:	00913423          	sd	s1,8(sp)
    80005d30:	01213023          	sd	s2,0(sp)
    80005d34:	02010413          	addi	s0,sp,32
    80005d38:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005d3c:	02053503          	ld	a0,32(a0)
    80005d40:	ffffc097          	auipc	ra,0xffffc
    80005d44:	3b8080e7          	jalr	952(ra) # 800020f8 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80005d48:	0284b503          	ld	a0,40(s1)
    80005d4c:	ffffc097          	auipc	ra,0xffffc
    80005d50:	3ac080e7          	jalr	940(ra) # 800020f8 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80005d54:	0084b703          	ld	a4,8(s1)
    80005d58:	0104a783          	lw	a5,16(s1)
    80005d5c:	00279693          	slli	a3,a5,0x2
    80005d60:	00d70733          	add	a4,a4,a3
    80005d64:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005d68:	0017879b          	addiw	a5,a5,1
    80005d6c:	0004a703          	lw	a4,0(s1)
    80005d70:	02e7e7bb          	remw	a5,a5,a4
    80005d74:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005d78:	0284b503          	ld	a0,40(s1)
    80005d7c:	ffffc097          	auipc	ra,0xffffc
    80005d80:	3a8080e7          	jalr	936(ra) # 80002124 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80005d84:	0184b503          	ld	a0,24(s1)
    80005d88:	ffffc097          	auipc	ra,0xffffc
    80005d8c:	39c080e7          	jalr	924(ra) # 80002124 <_Z10sem_signalP4_sem>

    return ret;
}
    80005d90:	00090513          	mv	a0,s2
    80005d94:	01813083          	ld	ra,24(sp)
    80005d98:	01013403          	ld	s0,16(sp)
    80005d9c:	00813483          	ld	s1,8(sp)
    80005da0:	00013903          	ld	s2,0(sp)
    80005da4:	02010113          	addi	sp,sp,32
    80005da8:	00008067          	ret

0000000080005dac <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005dac:	fe010113          	addi	sp,sp,-32
    80005db0:	00113c23          	sd	ra,24(sp)
    80005db4:	00813823          	sd	s0,16(sp)
    80005db8:	00913423          	sd	s1,8(sp)
    80005dbc:	01213023          	sd	s2,0(sp)
    80005dc0:	02010413          	addi	s0,sp,32
    80005dc4:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005dc8:	02853503          	ld	a0,40(a0)
    80005dcc:	ffffc097          	auipc	ra,0xffffc
    80005dd0:	32c080e7          	jalr	812(ra) # 800020f8 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80005dd4:	0304b503          	ld	a0,48(s1)
    80005dd8:	ffffc097          	auipc	ra,0xffffc
    80005ddc:	320080e7          	jalr	800(ra) # 800020f8 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80005de0:	0144a783          	lw	a5,20(s1)
    80005de4:	0104a903          	lw	s2,16(s1)
    80005de8:	0327ce63          	blt	a5,s2,80005e24 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005dec:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80005df0:	0304b503          	ld	a0,48(s1)
    80005df4:	ffffc097          	auipc	ra,0xffffc
    80005df8:	330080e7          	jalr	816(ra) # 80002124 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80005dfc:	0284b503          	ld	a0,40(s1)
    80005e00:	ffffc097          	auipc	ra,0xffffc
    80005e04:	324080e7          	jalr	804(ra) # 80002124 <_Z10sem_signalP4_sem>

    return ret;
    80005e08:	00090513          	mv	a0,s2
    80005e0c:	01813083          	ld	ra,24(sp)
    80005e10:	01013403          	ld	s0,16(sp)
    80005e14:	00813483          	ld	s1,8(sp)
    80005e18:	00013903          	ld	s2,0(sp)
    80005e1c:	02010113          	addi	sp,sp,32
    80005e20:	00008067          	ret
        ret = cap - head + tail;
    80005e24:	0004a703          	lw	a4,0(s1)
    80005e28:	4127093b          	subw	s2,a4,s2
    80005e2c:	00f9093b          	addw	s2,s2,a5
    80005e30:	fc1ff06f          	j	80005df0 <_ZN6Buffer6getCntEv+0x44>

0000000080005e34 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80005e34:	fe010113          	addi	sp,sp,-32
    80005e38:	00113c23          	sd	ra,24(sp)
    80005e3c:	00813823          	sd	s0,16(sp)
    80005e40:	00913423          	sd	s1,8(sp)
    80005e44:	02010413          	addi	s0,sp,32
    80005e48:	00050493          	mv	s1,a0
    putc('\n');
    80005e4c:	00a00513          	li	a0,10
    80005e50:	ffffc097          	auipc	ra,0xffffc
    80005e54:	400080e7          	jalr	1024(ra) # 80002250 <_Z4putcc>
    printString("Buffer deleted!\n");
    80005e58:	00002517          	auipc	a0,0x2
    80005e5c:	54850513          	addi	a0,a0,1352 # 800083a0 <CONSOLE_STATUS+0x390>
    80005e60:	fffff097          	auipc	ra,0xfffff
    80005e64:	0c0080e7          	jalr	192(ra) # 80004f20 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005e68:	00048513          	mv	a0,s1
    80005e6c:	00000097          	auipc	ra,0x0
    80005e70:	f40080e7          	jalr	-192(ra) # 80005dac <_ZN6Buffer6getCntEv>
    80005e74:	02a05c63          	blez	a0,80005eac <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005e78:	0084b783          	ld	a5,8(s1)
    80005e7c:	0104a703          	lw	a4,16(s1)
    80005e80:	00271713          	slli	a4,a4,0x2
    80005e84:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005e88:	0007c503          	lbu	a0,0(a5)
    80005e8c:	ffffc097          	auipc	ra,0xffffc
    80005e90:	3c4080e7          	jalr	964(ra) # 80002250 <_Z4putcc>
        head = (head + 1) % cap;
    80005e94:	0104a783          	lw	a5,16(s1)
    80005e98:	0017879b          	addiw	a5,a5,1
    80005e9c:	0004a703          	lw	a4,0(s1)
    80005ea0:	02e7e7bb          	remw	a5,a5,a4
    80005ea4:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005ea8:	fc1ff06f          	j	80005e68 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005eac:	02100513          	li	a0,33
    80005eb0:	ffffc097          	auipc	ra,0xffffc
    80005eb4:	3a0080e7          	jalr	928(ra) # 80002250 <_Z4putcc>
    putc('\n');
    80005eb8:	00a00513          	li	a0,10
    80005ebc:	ffffc097          	auipc	ra,0xffffc
    80005ec0:	394080e7          	jalr	916(ra) # 80002250 <_Z4putcc>
    mem_free(buffer);
    80005ec4:	0084b503          	ld	a0,8(s1)
    80005ec8:	ffffc097          	auipc	ra,0xffffc
    80005ecc:	0d8080e7          	jalr	216(ra) # 80001fa0 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80005ed0:	0204b503          	ld	a0,32(s1)
    80005ed4:	ffffc097          	auipc	ra,0xffffc
    80005ed8:	1f8080e7          	jalr	504(ra) # 800020cc <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80005edc:	0184b503          	ld	a0,24(s1)
    80005ee0:	ffffc097          	auipc	ra,0xffffc
    80005ee4:	1ec080e7          	jalr	492(ra) # 800020cc <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80005ee8:	0304b503          	ld	a0,48(s1)
    80005eec:	ffffc097          	auipc	ra,0xffffc
    80005ef0:	1e0080e7          	jalr	480(ra) # 800020cc <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80005ef4:	0284b503          	ld	a0,40(s1)
    80005ef8:	ffffc097          	auipc	ra,0xffffc
    80005efc:	1d4080e7          	jalr	468(ra) # 800020cc <_Z9sem_closeP4_sem>
}
    80005f00:	01813083          	ld	ra,24(sp)
    80005f04:	01013403          	ld	s0,16(sp)
    80005f08:	00813483          	ld	s1,8(sp)
    80005f0c:	02010113          	addi	sp,sp,32
    80005f10:	00008067          	ret

0000000080005f14 <start>:
    80005f14:	ff010113          	addi	sp,sp,-16
    80005f18:	00813423          	sd	s0,8(sp)
    80005f1c:	01010413          	addi	s0,sp,16
    80005f20:	300027f3          	csrr	a5,mstatus
    80005f24:	ffffe737          	lui	a4,0xffffe
    80005f28:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffeec0f>
    80005f2c:	00e7f7b3          	and	a5,a5,a4
    80005f30:	00001737          	lui	a4,0x1
    80005f34:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005f38:	00e7e7b3          	or	a5,a5,a4
    80005f3c:	30079073          	csrw	mstatus,a5
    80005f40:	00000797          	auipc	a5,0x0
    80005f44:	16078793          	addi	a5,a5,352 # 800060a0 <system_main>
    80005f48:	34179073          	csrw	mepc,a5
    80005f4c:	00000793          	li	a5,0
    80005f50:	18079073          	csrw	satp,a5
    80005f54:	000107b7          	lui	a5,0x10
    80005f58:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005f5c:	30279073          	csrw	medeleg,a5
    80005f60:	30379073          	csrw	mideleg,a5
    80005f64:	104027f3          	csrr	a5,sie
    80005f68:	2227e793          	ori	a5,a5,546
    80005f6c:	10479073          	csrw	sie,a5
    80005f70:	fff00793          	li	a5,-1
    80005f74:	00a7d793          	srli	a5,a5,0xa
    80005f78:	3b079073          	csrw	pmpaddr0,a5
    80005f7c:	00f00793          	li	a5,15
    80005f80:	3a079073          	csrw	pmpcfg0,a5
    80005f84:	f14027f3          	csrr	a5,mhartid
    80005f88:	0200c737          	lui	a4,0x200c
    80005f8c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005f90:	0007869b          	sext.w	a3,a5
    80005f94:	00269713          	slli	a4,a3,0x2
    80005f98:	000f4637          	lui	a2,0xf4
    80005f9c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005fa0:	00d70733          	add	a4,a4,a3
    80005fa4:	0037979b          	slliw	a5,a5,0x3
    80005fa8:	020046b7          	lui	a3,0x2004
    80005fac:	00d787b3          	add	a5,a5,a3
    80005fb0:	00c585b3          	add	a1,a1,a2
    80005fb4:	00371693          	slli	a3,a4,0x3
    80005fb8:	00009717          	auipc	a4,0x9
    80005fbc:	9d870713          	addi	a4,a4,-1576 # 8000e990 <timer_scratch>
    80005fc0:	00b7b023          	sd	a1,0(a5)
    80005fc4:	00d70733          	add	a4,a4,a3
    80005fc8:	00f73c23          	sd	a5,24(a4)
    80005fcc:	02c73023          	sd	a2,32(a4)
    80005fd0:	34071073          	csrw	mscratch,a4
    80005fd4:	00000797          	auipc	a5,0x0
    80005fd8:	6ec78793          	addi	a5,a5,1772 # 800066c0 <timervec>
    80005fdc:	30579073          	csrw	mtvec,a5
    80005fe0:	300027f3          	csrr	a5,mstatus
    80005fe4:	0087e793          	ori	a5,a5,8
    80005fe8:	30079073          	csrw	mstatus,a5
    80005fec:	304027f3          	csrr	a5,mie
    80005ff0:	0807e793          	ori	a5,a5,128
    80005ff4:	30479073          	csrw	mie,a5
    80005ff8:	f14027f3          	csrr	a5,mhartid
    80005ffc:	0007879b          	sext.w	a5,a5
    80006000:	00078213          	mv	tp,a5
    80006004:	30200073          	mret
    80006008:	00813403          	ld	s0,8(sp)
    8000600c:	01010113          	addi	sp,sp,16
    80006010:	00008067          	ret

0000000080006014 <timerinit>:
    80006014:	ff010113          	addi	sp,sp,-16
    80006018:	00813423          	sd	s0,8(sp)
    8000601c:	01010413          	addi	s0,sp,16
    80006020:	f14027f3          	csrr	a5,mhartid
    80006024:	0200c737          	lui	a4,0x200c
    80006028:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000602c:	0007869b          	sext.w	a3,a5
    80006030:	00269713          	slli	a4,a3,0x2
    80006034:	000f4637          	lui	a2,0xf4
    80006038:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000603c:	00d70733          	add	a4,a4,a3
    80006040:	0037979b          	slliw	a5,a5,0x3
    80006044:	020046b7          	lui	a3,0x2004
    80006048:	00d787b3          	add	a5,a5,a3
    8000604c:	00c585b3          	add	a1,a1,a2
    80006050:	00371693          	slli	a3,a4,0x3
    80006054:	00009717          	auipc	a4,0x9
    80006058:	93c70713          	addi	a4,a4,-1732 # 8000e990 <timer_scratch>
    8000605c:	00b7b023          	sd	a1,0(a5)
    80006060:	00d70733          	add	a4,a4,a3
    80006064:	00f73c23          	sd	a5,24(a4)
    80006068:	02c73023          	sd	a2,32(a4)
    8000606c:	34071073          	csrw	mscratch,a4
    80006070:	00000797          	auipc	a5,0x0
    80006074:	65078793          	addi	a5,a5,1616 # 800066c0 <timervec>
    80006078:	30579073          	csrw	mtvec,a5
    8000607c:	300027f3          	csrr	a5,mstatus
    80006080:	0087e793          	ori	a5,a5,8
    80006084:	30079073          	csrw	mstatus,a5
    80006088:	304027f3          	csrr	a5,mie
    8000608c:	0807e793          	ori	a5,a5,128
    80006090:	30479073          	csrw	mie,a5
    80006094:	00813403          	ld	s0,8(sp)
    80006098:	01010113          	addi	sp,sp,16
    8000609c:	00008067          	ret

00000000800060a0 <system_main>:
    800060a0:	fe010113          	addi	sp,sp,-32
    800060a4:	00813823          	sd	s0,16(sp)
    800060a8:	00913423          	sd	s1,8(sp)
    800060ac:	00113c23          	sd	ra,24(sp)
    800060b0:	02010413          	addi	s0,sp,32
    800060b4:	00000097          	auipc	ra,0x0
    800060b8:	0c4080e7          	jalr	196(ra) # 80006178 <cpuid>
    800060bc:	00004497          	auipc	s1,0x4
    800060c0:	7d448493          	addi	s1,s1,2004 # 8000a890 <started>
    800060c4:	02050263          	beqz	a0,800060e8 <system_main+0x48>
    800060c8:	0004a783          	lw	a5,0(s1)
    800060cc:	0007879b          	sext.w	a5,a5
    800060d0:	fe078ce3          	beqz	a5,800060c8 <system_main+0x28>
    800060d4:	0ff0000f          	fence
    800060d8:	00002517          	auipc	a0,0x2
    800060dc:	40850513          	addi	a0,a0,1032 # 800084e0 <CONSOLE_STATUS+0x4d0>
    800060e0:	00001097          	auipc	ra,0x1
    800060e4:	a7c080e7          	jalr	-1412(ra) # 80006b5c <panic>
    800060e8:	00001097          	auipc	ra,0x1
    800060ec:	9d0080e7          	jalr	-1584(ra) # 80006ab8 <consoleinit>
    800060f0:	00001097          	auipc	ra,0x1
    800060f4:	15c080e7          	jalr	348(ra) # 8000724c <printfinit>
    800060f8:	00002517          	auipc	a0,0x2
    800060fc:	4c850513          	addi	a0,a0,1224 # 800085c0 <CONSOLE_STATUS+0x5b0>
    80006100:	00001097          	auipc	ra,0x1
    80006104:	ab8080e7          	jalr	-1352(ra) # 80006bb8 <__printf>
    80006108:	00002517          	auipc	a0,0x2
    8000610c:	3a850513          	addi	a0,a0,936 # 800084b0 <CONSOLE_STATUS+0x4a0>
    80006110:	00001097          	auipc	ra,0x1
    80006114:	aa8080e7          	jalr	-1368(ra) # 80006bb8 <__printf>
    80006118:	00002517          	auipc	a0,0x2
    8000611c:	4a850513          	addi	a0,a0,1192 # 800085c0 <CONSOLE_STATUS+0x5b0>
    80006120:	00001097          	auipc	ra,0x1
    80006124:	a98080e7          	jalr	-1384(ra) # 80006bb8 <__printf>
    80006128:	00001097          	auipc	ra,0x1
    8000612c:	4b0080e7          	jalr	1200(ra) # 800075d8 <kinit>
    80006130:	00000097          	auipc	ra,0x0
    80006134:	148080e7          	jalr	328(ra) # 80006278 <trapinit>
    80006138:	00000097          	auipc	ra,0x0
    8000613c:	16c080e7          	jalr	364(ra) # 800062a4 <trapinithart>
    80006140:	00000097          	auipc	ra,0x0
    80006144:	5c0080e7          	jalr	1472(ra) # 80006700 <plicinit>
    80006148:	00000097          	auipc	ra,0x0
    8000614c:	5e0080e7          	jalr	1504(ra) # 80006728 <plicinithart>
    80006150:	00000097          	auipc	ra,0x0
    80006154:	078080e7          	jalr	120(ra) # 800061c8 <userinit>
    80006158:	0ff0000f          	fence
    8000615c:	00100793          	li	a5,1
    80006160:	00002517          	auipc	a0,0x2
    80006164:	36850513          	addi	a0,a0,872 # 800084c8 <CONSOLE_STATUS+0x4b8>
    80006168:	00f4a023          	sw	a5,0(s1)
    8000616c:	00001097          	auipc	ra,0x1
    80006170:	a4c080e7          	jalr	-1460(ra) # 80006bb8 <__printf>
    80006174:	0000006f          	j	80006174 <system_main+0xd4>

0000000080006178 <cpuid>:
    80006178:	ff010113          	addi	sp,sp,-16
    8000617c:	00813423          	sd	s0,8(sp)
    80006180:	01010413          	addi	s0,sp,16
    80006184:	00020513          	mv	a0,tp
    80006188:	00813403          	ld	s0,8(sp)
    8000618c:	0005051b          	sext.w	a0,a0
    80006190:	01010113          	addi	sp,sp,16
    80006194:	00008067          	ret

0000000080006198 <mycpu>:
    80006198:	ff010113          	addi	sp,sp,-16
    8000619c:	00813423          	sd	s0,8(sp)
    800061a0:	01010413          	addi	s0,sp,16
    800061a4:	00020793          	mv	a5,tp
    800061a8:	00813403          	ld	s0,8(sp)
    800061ac:	0007879b          	sext.w	a5,a5
    800061b0:	00779793          	slli	a5,a5,0x7
    800061b4:	0000a517          	auipc	a0,0xa
    800061b8:	80c50513          	addi	a0,a0,-2036 # 8000f9c0 <cpus>
    800061bc:	00f50533          	add	a0,a0,a5
    800061c0:	01010113          	addi	sp,sp,16
    800061c4:	00008067          	ret

00000000800061c8 <userinit>:
    800061c8:	ff010113          	addi	sp,sp,-16
    800061cc:	00813423          	sd	s0,8(sp)
    800061d0:	01010413          	addi	s0,sp,16
    800061d4:	00813403          	ld	s0,8(sp)
    800061d8:	01010113          	addi	sp,sp,16
    800061dc:	ffffd317          	auipc	t1,0xffffd
    800061e0:	4bc30067          	jr	1212(t1) # 80003698 <main>

00000000800061e4 <either_copyout>:
    800061e4:	ff010113          	addi	sp,sp,-16
    800061e8:	00813023          	sd	s0,0(sp)
    800061ec:	00113423          	sd	ra,8(sp)
    800061f0:	01010413          	addi	s0,sp,16
    800061f4:	02051663          	bnez	a0,80006220 <either_copyout+0x3c>
    800061f8:	00058513          	mv	a0,a1
    800061fc:	00060593          	mv	a1,a2
    80006200:	0006861b          	sext.w	a2,a3
    80006204:	00002097          	auipc	ra,0x2
    80006208:	c60080e7          	jalr	-928(ra) # 80007e64 <__memmove>
    8000620c:	00813083          	ld	ra,8(sp)
    80006210:	00013403          	ld	s0,0(sp)
    80006214:	00000513          	li	a0,0
    80006218:	01010113          	addi	sp,sp,16
    8000621c:	00008067          	ret
    80006220:	00002517          	auipc	a0,0x2
    80006224:	2e850513          	addi	a0,a0,744 # 80008508 <CONSOLE_STATUS+0x4f8>
    80006228:	00001097          	auipc	ra,0x1
    8000622c:	934080e7          	jalr	-1740(ra) # 80006b5c <panic>

0000000080006230 <either_copyin>:
    80006230:	ff010113          	addi	sp,sp,-16
    80006234:	00813023          	sd	s0,0(sp)
    80006238:	00113423          	sd	ra,8(sp)
    8000623c:	01010413          	addi	s0,sp,16
    80006240:	02059463          	bnez	a1,80006268 <either_copyin+0x38>
    80006244:	00060593          	mv	a1,a2
    80006248:	0006861b          	sext.w	a2,a3
    8000624c:	00002097          	auipc	ra,0x2
    80006250:	c18080e7          	jalr	-1000(ra) # 80007e64 <__memmove>
    80006254:	00813083          	ld	ra,8(sp)
    80006258:	00013403          	ld	s0,0(sp)
    8000625c:	00000513          	li	a0,0
    80006260:	01010113          	addi	sp,sp,16
    80006264:	00008067          	ret
    80006268:	00002517          	auipc	a0,0x2
    8000626c:	2c850513          	addi	a0,a0,712 # 80008530 <CONSOLE_STATUS+0x520>
    80006270:	00001097          	auipc	ra,0x1
    80006274:	8ec080e7          	jalr	-1812(ra) # 80006b5c <panic>

0000000080006278 <trapinit>:
    80006278:	ff010113          	addi	sp,sp,-16
    8000627c:	00813423          	sd	s0,8(sp)
    80006280:	01010413          	addi	s0,sp,16
    80006284:	00813403          	ld	s0,8(sp)
    80006288:	00002597          	auipc	a1,0x2
    8000628c:	2d058593          	addi	a1,a1,720 # 80008558 <CONSOLE_STATUS+0x548>
    80006290:	00009517          	auipc	a0,0x9
    80006294:	7b050513          	addi	a0,a0,1968 # 8000fa40 <tickslock>
    80006298:	01010113          	addi	sp,sp,16
    8000629c:	00001317          	auipc	t1,0x1
    800062a0:	5cc30067          	jr	1484(t1) # 80007868 <initlock>

00000000800062a4 <trapinithart>:
    800062a4:	ff010113          	addi	sp,sp,-16
    800062a8:	00813423          	sd	s0,8(sp)
    800062ac:	01010413          	addi	s0,sp,16
    800062b0:	00000797          	auipc	a5,0x0
    800062b4:	30078793          	addi	a5,a5,768 # 800065b0 <kernelvec>
    800062b8:	10579073          	csrw	stvec,a5
    800062bc:	00813403          	ld	s0,8(sp)
    800062c0:	01010113          	addi	sp,sp,16
    800062c4:	00008067          	ret

00000000800062c8 <usertrap>:
    800062c8:	ff010113          	addi	sp,sp,-16
    800062cc:	00813423          	sd	s0,8(sp)
    800062d0:	01010413          	addi	s0,sp,16
    800062d4:	00813403          	ld	s0,8(sp)
    800062d8:	01010113          	addi	sp,sp,16
    800062dc:	00008067          	ret

00000000800062e0 <usertrapret>:
    800062e0:	ff010113          	addi	sp,sp,-16
    800062e4:	00813423          	sd	s0,8(sp)
    800062e8:	01010413          	addi	s0,sp,16
    800062ec:	00813403          	ld	s0,8(sp)
    800062f0:	01010113          	addi	sp,sp,16
    800062f4:	00008067          	ret

00000000800062f8 <kerneltrap>:
    800062f8:	fe010113          	addi	sp,sp,-32
    800062fc:	00813823          	sd	s0,16(sp)
    80006300:	00113c23          	sd	ra,24(sp)
    80006304:	00913423          	sd	s1,8(sp)
    80006308:	02010413          	addi	s0,sp,32
    8000630c:	142025f3          	csrr	a1,scause
    80006310:	100027f3          	csrr	a5,sstatus
    80006314:	0027f793          	andi	a5,a5,2
    80006318:	10079c63          	bnez	a5,80006430 <kerneltrap+0x138>
    8000631c:	142027f3          	csrr	a5,scause
    80006320:	0207ce63          	bltz	a5,8000635c <kerneltrap+0x64>
    80006324:	00002517          	auipc	a0,0x2
    80006328:	27c50513          	addi	a0,a0,636 # 800085a0 <CONSOLE_STATUS+0x590>
    8000632c:	00001097          	auipc	ra,0x1
    80006330:	88c080e7          	jalr	-1908(ra) # 80006bb8 <__printf>
    80006334:	141025f3          	csrr	a1,sepc
    80006338:	14302673          	csrr	a2,stval
    8000633c:	00002517          	auipc	a0,0x2
    80006340:	27450513          	addi	a0,a0,628 # 800085b0 <CONSOLE_STATUS+0x5a0>
    80006344:	00001097          	auipc	ra,0x1
    80006348:	874080e7          	jalr	-1932(ra) # 80006bb8 <__printf>
    8000634c:	00002517          	auipc	a0,0x2
    80006350:	27c50513          	addi	a0,a0,636 # 800085c8 <CONSOLE_STATUS+0x5b8>
    80006354:	00001097          	auipc	ra,0x1
    80006358:	808080e7          	jalr	-2040(ra) # 80006b5c <panic>
    8000635c:	0ff7f713          	andi	a4,a5,255
    80006360:	00900693          	li	a3,9
    80006364:	04d70063          	beq	a4,a3,800063a4 <kerneltrap+0xac>
    80006368:	fff00713          	li	a4,-1
    8000636c:	03f71713          	slli	a4,a4,0x3f
    80006370:	00170713          	addi	a4,a4,1
    80006374:	fae798e3          	bne	a5,a4,80006324 <kerneltrap+0x2c>
    80006378:	00000097          	auipc	ra,0x0
    8000637c:	e00080e7          	jalr	-512(ra) # 80006178 <cpuid>
    80006380:	06050663          	beqz	a0,800063ec <kerneltrap+0xf4>
    80006384:	144027f3          	csrr	a5,sip
    80006388:	ffd7f793          	andi	a5,a5,-3
    8000638c:	14479073          	csrw	sip,a5
    80006390:	01813083          	ld	ra,24(sp)
    80006394:	01013403          	ld	s0,16(sp)
    80006398:	00813483          	ld	s1,8(sp)
    8000639c:	02010113          	addi	sp,sp,32
    800063a0:	00008067          	ret
    800063a4:	00000097          	auipc	ra,0x0
    800063a8:	3d0080e7          	jalr	976(ra) # 80006774 <plic_claim>
    800063ac:	00a00793          	li	a5,10
    800063b0:	00050493          	mv	s1,a0
    800063b4:	06f50863          	beq	a0,a5,80006424 <kerneltrap+0x12c>
    800063b8:	fc050ce3          	beqz	a0,80006390 <kerneltrap+0x98>
    800063bc:	00050593          	mv	a1,a0
    800063c0:	00002517          	auipc	a0,0x2
    800063c4:	1c050513          	addi	a0,a0,448 # 80008580 <CONSOLE_STATUS+0x570>
    800063c8:	00000097          	auipc	ra,0x0
    800063cc:	7f0080e7          	jalr	2032(ra) # 80006bb8 <__printf>
    800063d0:	01013403          	ld	s0,16(sp)
    800063d4:	01813083          	ld	ra,24(sp)
    800063d8:	00048513          	mv	a0,s1
    800063dc:	00813483          	ld	s1,8(sp)
    800063e0:	02010113          	addi	sp,sp,32
    800063e4:	00000317          	auipc	t1,0x0
    800063e8:	3c830067          	jr	968(t1) # 800067ac <plic_complete>
    800063ec:	00009517          	auipc	a0,0x9
    800063f0:	65450513          	addi	a0,a0,1620 # 8000fa40 <tickslock>
    800063f4:	00001097          	auipc	ra,0x1
    800063f8:	498080e7          	jalr	1176(ra) # 8000788c <acquire>
    800063fc:	00004717          	auipc	a4,0x4
    80006400:	49870713          	addi	a4,a4,1176 # 8000a894 <ticks>
    80006404:	00072783          	lw	a5,0(a4)
    80006408:	00009517          	auipc	a0,0x9
    8000640c:	63850513          	addi	a0,a0,1592 # 8000fa40 <tickslock>
    80006410:	0017879b          	addiw	a5,a5,1
    80006414:	00f72023          	sw	a5,0(a4)
    80006418:	00001097          	auipc	ra,0x1
    8000641c:	540080e7          	jalr	1344(ra) # 80007958 <release>
    80006420:	f65ff06f          	j	80006384 <kerneltrap+0x8c>
    80006424:	00001097          	auipc	ra,0x1
    80006428:	09c080e7          	jalr	156(ra) # 800074c0 <uartintr>
    8000642c:	fa5ff06f          	j	800063d0 <kerneltrap+0xd8>
    80006430:	00002517          	auipc	a0,0x2
    80006434:	13050513          	addi	a0,a0,304 # 80008560 <CONSOLE_STATUS+0x550>
    80006438:	00000097          	auipc	ra,0x0
    8000643c:	724080e7          	jalr	1828(ra) # 80006b5c <panic>

0000000080006440 <clockintr>:
    80006440:	fe010113          	addi	sp,sp,-32
    80006444:	00813823          	sd	s0,16(sp)
    80006448:	00913423          	sd	s1,8(sp)
    8000644c:	00113c23          	sd	ra,24(sp)
    80006450:	02010413          	addi	s0,sp,32
    80006454:	00009497          	auipc	s1,0x9
    80006458:	5ec48493          	addi	s1,s1,1516 # 8000fa40 <tickslock>
    8000645c:	00048513          	mv	a0,s1
    80006460:	00001097          	auipc	ra,0x1
    80006464:	42c080e7          	jalr	1068(ra) # 8000788c <acquire>
    80006468:	00004717          	auipc	a4,0x4
    8000646c:	42c70713          	addi	a4,a4,1068 # 8000a894 <ticks>
    80006470:	00072783          	lw	a5,0(a4)
    80006474:	01013403          	ld	s0,16(sp)
    80006478:	01813083          	ld	ra,24(sp)
    8000647c:	00048513          	mv	a0,s1
    80006480:	0017879b          	addiw	a5,a5,1
    80006484:	00813483          	ld	s1,8(sp)
    80006488:	00f72023          	sw	a5,0(a4)
    8000648c:	02010113          	addi	sp,sp,32
    80006490:	00001317          	auipc	t1,0x1
    80006494:	4c830067          	jr	1224(t1) # 80007958 <release>

0000000080006498 <devintr>:
    80006498:	142027f3          	csrr	a5,scause
    8000649c:	00000513          	li	a0,0
    800064a0:	0007c463          	bltz	a5,800064a8 <devintr+0x10>
    800064a4:	00008067          	ret
    800064a8:	fe010113          	addi	sp,sp,-32
    800064ac:	00813823          	sd	s0,16(sp)
    800064b0:	00113c23          	sd	ra,24(sp)
    800064b4:	00913423          	sd	s1,8(sp)
    800064b8:	02010413          	addi	s0,sp,32
    800064bc:	0ff7f713          	andi	a4,a5,255
    800064c0:	00900693          	li	a3,9
    800064c4:	04d70c63          	beq	a4,a3,8000651c <devintr+0x84>
    800064c8:	fff00713          	li	a4,-1
    800064cc:	03f71713          	slli	a4,a4,0x3f
    800064d0:	00170713          	addi	a4,a4,1
    800064d4:	00e78c63          	beq	a5,a4,800064ec <devintr+0x54>
    800064d8:	01813083          	ld	ra,24(sp)
    800064dc:	01013403          	ld	s0,16(sp)
    800064e0:	00813483          	ld	s1,8(sp)
    800064e4:	02010113          	addi	sp,sp,32
    800064e8:	00008067          	ret
    800064ec:	00000097          	auipc	ra,0x0
    800064f0:	c8c080e7          	jalr	-884(ra) # 80006178 <cpuid>
    800064f4:	06050663          	beqz	a0,80006560 <devintr+0xc8>
    800064f8:	144027f3          	csrr	a5,sip
    800064fc:	ffd7f793          	andi	a5,a5,-3
    80006500:	14479073          	csrw	sip,a5
    80006504:	01813083          	ld	ra,24(sp)
    80006508:	01013403          	ld	s0,16(sp)
    8000650c:	00813483          	ld	s1,8(sp)
    80006510:	00200513          	li	a0,2
    80006514:	02010113          	addi	sp,sp,32
    80006518:	00008067          	ret
    8000651c:	00000097          	auipc	ra,0x0
    80006520:	258080e7          	jalr	600(ra) # 80006774 <plic_claim>
    80006524:	00a00793          	li	a5,10
    80006528:	00050493          	mv	s1,a0
    8000652c:	06f50663          	beq	a0,a5,80006598 <devintr+0x100>
    80006530:	00100513          	li	a0,1
    80006534:	fa0482e3          	beqz	s1,800064d8 <devintr+0x40>
    80006538:	00048593          	mv	a1,s1
    8000653c:	00002517          	auipc	a0,0x2
    80006540:	04450513          	addi	a0,a0,68 # 80008580 <CONSOLE_STATUS+0x570>
    80006544:	00000097          	auipc	ra,0x0
    80006548:	674080e7          	jalr	1652(ra) # 80006bb8 <__printf>
    8000654c:	00048513          	mv	a0,s1
    80006550:	00000097          	auipc	ra,0x0
    80006554:	25c080e7          	jalr	604(ra) # 800067ac <plic_complete>
    80006558:	00100513          	li	a0,1
    8000655c:	f7dff06f          	j	800064d8 <devintr+0x40>
    80006560:	00009517          	auipc	a0,0x9
    80006564:	4e050513          	addi	a0,a0,1248 # 8000fa40 <tickslock>
    80006568:	00001097          	auipc	ra,0x1
    8000656c:	324080e7          	jalr	804(ra) # 8000788c <acquire>
    80006570:	00004717          	auipc	a4,0x4
    80006574:	32470713          	addi	a4,a4,804 # 8000a894 <ticks>
    80006578:	00072783          	lw	a5,0(a4)
    8000657c:	00009517          	auipc	a0,0x9
    80006580:	4c450513          	addi	a0,a0,1220 # 8000fa40 <tickslock>
    80006584:	0017879b          	addiw	a5,a5,1
    80006588:	00f72023          	sw	a5,0(a4)
    8000658c:	00001097          	auipc	ra,0x1
    80006590:	3cc080e7          	jalr	972(ra) # 80007958 <release>
    80006594:	f65ff06f          	j	800064f8 <devintr+0x60>
    80006598:	00001097          	auipc	ra,0x1
    8000659c:	f28080e7          	jalr	-216(ra) # 800074c0 <uartintr>
    800065a0:	fadff06f          	j	8000654c <devintr+0xb4>
	...

00000000800065b0 <kernelvec>:
    800065b0:	f0010113          	addi	sp,sp,-256
    800065b4:	00113023          	sd	ra,0(sp)
    800065b8:	00213423          	sd	sp,8(sp)
    800065bc:	00313823          	sd	gp,16(sp)
    800065c0:	00413c23          	sd	tp,24(sp)
    800065c4:	02513023          	sd	t0,32(sp)
    800065c8:	02613423          	sd	t1,40(sp)
    800065cc:	02713823          	sd	t2,48(sp)
    800065d0:	02813c23          	sd	s0,56(sp)
    800065d4:	04913023          	sd	s1,64(sp)
    800065d8:	04a13423          	sd	a0,72(sp)
    800065dc:	04b13823          	sd	a1,80(sp)
    800065e0:	04c13c23          	sd	a2,88(sp)
    800065e4:	06d13023          	sd	a3,96(sp)
    800065e8:	06e13423          	sd	a4,104(sp)
    800065ec:	06f13823          	sd	a5,112(sp)
    800065f0:	07013c23          	sd	a6,120(sp)
    800065f4:	09113023          	sd	a7,128(sp)
    800065f8:	09213423          	sd	s2,136(sp)
    800065fc:	09313823          	sd	s3,144(sp)
    80006600:	09413c23          	sd	s4,152(sp)
    80006604:	0b513023          	sd	s5,160(sp)
    80006608:	0b613423          	sd	s6,168(sp)
    8000660c:	0b713823          	sd	s7,176(sp)
    80006610:	0b813c23          	sd	s8,184(sp)
    80006614:	0d913023          	sd	s9,192(sp)
    80006618:	0da13423          	sd	s10,200(sp)
    8000661c:	0db13823          	sd	s11,208(sp)
    80006620:	0dc13c23          	sd	t3,216(sp)
    80006624:	0fd13023          	sd	t4,224(sp)
    80006628:	0fe13423          	sd	t5,232(sp)
    8000662c:	0ff13823          	sd	t6,240(sp)
    80006630:	cc9ff0ef          	jal	ra,800062f8 <kerneltrap>
    80006634:	00013083          	ld	ra,0(sp)
    80006638:	00813103          	ld	sp,8(sp)
    8000663c:	01013183          	ld	gp,16(sp)
    80006640:	02013283          	ld	t0,32(sp)
    80006644:	02813303          	ld	t1,40(sp)
    80006648:	03013383          	ld	t2,48(sp)
    8000664c:	03813403          	ld	s0,56(sp)
    80006650:	04013483          	ld	s1,64(sp)
    80006654:	04813503          	ld	a0,72(sp)
    80006658:	05013583          	ld	a1,80(sp)
    8000665c:	05813603          	ld	a2,88(sp)
    80006660:	06013683          	ld	a3,96(sp)
    80006664:	06813703          	ld	a4,104(sp)
    80006668:	07013783          	ld	a5,112(sp)
    8000666c:	07813803          	ld	a6,120(sp)
    80006670:	08013883          	ld	a7,128(sp)
    80006674:	08813903          	ld	s2,136(sp)
    80006678:	09013983          	ld	s3,144(sp)
    8000667c:	09813a03          	ld	s4,152(sp)
    80006680:	0a013a83          	ld	s5,160(sp)
    80006684:	0a813b03          	ld	s6,168(sp)
    80006688:	0b013b83          	ld	s7,176(sp)
    8000668c:	0b813c03          	ld	s8,184(sp)
    80006690:	0c013c83          	ld	s9,192(sp)
    80006694:	0c813d03          	ld	s10,200(sp)
    80006698:	0d013d83          	ld	s11,208(sp)
    8000669c:	0d813e03          	ld	t3,216(sp)
    800066a0:	0e013e83          	ld	t4,224(sp)
    800066a4:	0e813f03          	ld	t5,232(sp)
    800066a8:	0f013f83          	ld	t6,240(sp)
    800066ac:	10010113          	addi	sp,sp,256
    800066b0:	10200073          	sret
    800066b4:	00000013          	nop
    800066b8:	00000013          	nop
    800066bc:	00000013          	nop

00000000800066c0 <timervec>:
    800066c0:	34051573          	csrrw	a0,mscratch,a0
    800066c4:	00b53023          	sd	a1,0(a0)
    800066c8:	00c53423          	sd	a2,8(a0)
    800066cc:	00d53823          	sd	a3,16(a0)
    800066d0:	01853583          	ld	a1,24(a0)
    800066d4:	02053603          	ld	a2,32(a0)
    800066d8:	0005b683          	ld	a3,0(a1)
    800066dc:	00c686b3          	add	a3,a3,a2
    800066e0:	00d5b023          	sd	a3,0(a1)
    800066e4:	00200593          	li	a1,2
    800066e8:	14459073          	csrw	sip,a1
    800066ec:	01053683          	ld	a3,16(a0)
    800066f0:	00853603          	ld	a2,8(a0)
    800066f4:	00053583          	ld	a1,0(a0)
    800066f8:	34051573          	csrrw	a0,mscratch,a0
    800066fc:	30200073          	mret

0000000080006700 <plicinit>:
    80006700:	ff010113          	addi	sp,sp,-16
    80006704:	00813423          	sd	s0,8(sp)
    80006708:	01010413          	addi	s0,sp,16
    8000670c:	00813403          	ld	s0,8(sp)
    80006710:	0c0007b7          	lui	a5,0xc000
    80006714:	00100713          	li	a4,1
    80006718:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000671c:	00e7a223          	sw	a4,4(a5)
    80006720:	01010113          	addi	sp,sp,16
    80006724:	00008067          	ret

0000000080006728 <plicinithart>:
    80006728:	ff010113          	addi	sp,sp,-16
    8000672c:	00813023          	sd	s0,0(sp)
    80006730:	00113423          	sd	ra,8(sp)
    80006734:	01010413          	addi	s0,sp,16
    80006738:	00000097          	auipc	ra,0x0
    8000673c:	a40080e7          	jalr	-1472(ra) # 80006178 <cpuid>
    80006740:	0085171b          	slliw	a4,a0,0x8
    80006744:	0c0027b7          	lui	a5,0xc002
    80006748:	00e787b3          	add	a5,a5,a4
    8000674c:	40200713          	li	a4,1026
    80006750:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006754:	00813083          	ld	ra,8(sp)
    80006758:	00013403          	ld	s0,0(sp)
    8000675c:	00d5151b          	slliw	a0,a0,0xd
    80006760:	0c2017b7          	lui	a5,0xc201
    80006764:	00a78533          	add	a0,a5,a0
    80006768:	00052023          	sw	zero,0(a0)
    8000676c:	01010113          	addi	sp,sp,16
    80006770:	00008067          	ret

0000000080006774 <plic_claim>:
    80006774:	ff010113          	addi	sp,sp,-16
    80006778:	00813023          	sd	s0,0(sp)
    8000677c:	00113423          	sd	ra,8(sp)
    80006780:	01010413          	addi	s0,sp,16
    80006784:	00000097          	auipc	ra,0x0
    80006788:	9f4080e7          	jalr	-1548(ra) # 80006178 <cpuid>
    8000678c:	00813083          	ld	ra,8(sp)
    80006790:	00013403          	ld	s0,0(sp)
    80006794:	00d5151b          	slliw	a0,a0,0xd
    80006798:	0c2017b7          	lui	a5,0xc201
    8000679c:	00a78533          	add	a0,a5,a0
    800067a0:	00452503          	lw	a0,4(a0)
    800067a4:	01010113          	addi	sp,sp,16
    800067a8:	00008067          	ret

00000000800067ac <plic_complete>:
    800067ac:	fe010113          	addi	sp,sp,-32
    800067b0:	00813823          	sd	s0,16(sp)
    800067b4:	00913423          	sd	s1,8(sp)
    800067b8:	00113c23          	sd	ra,24(sp)
    800067bc:	02010413          	addi	s0,sp,32
    800067c0:	00050493          	mv	s1,a0
    800067c4:	00000097          	auipc	ra,0x0
    800067c8:	9b4080e7          	jalr	-1612(ra) # 80006178 <cpuid>
    800067cc:	01813083          	ld	ra,24(sp)
    800067d0:	01013403          	ld	s0,16(sp)
    800067d4:	00d5179b          	slliw	a5,a0,0xd
    800067d8:	0c201737          	lui	a4,0xc201
    800067dc:	00f707b3          	add	a5,a4,a5
    800067e0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800067e4:	00813483          	ld	s1,8(sp)
    800067e8:	02010113          	addi	sp,sp,32
    800067ec:	00008067          	ret

00000000800067f0 <consolewrite>:
    800067f0:	fb010113          	addi	sp,sp,-80
    800067f4:	04813023          	sd	s0,64(sp)
    800067f8:	04113423          	sd	ra,72(sp)
    800067fc:	02913c23          	sd	s1,56(sp)
    80006800:	03213823          	sd	s2,48(sp)
    80006804:	03313423          	sd	s3,40(sp)
    80006808:	03413023          	sd	s4,32(sp)
    8000680c:	01513c23          	sd	s5,24(sp)
    80006810:	05010413          	addi	s0,sp,80
    80006814:	06c05c63          	blez	a2,8000688c <consolewrite+0x9c>
    80006818:	00060993          	mv	s3,a2
    8000681c:	00050a13          	mv	s4,a0
    80006820:	00058493          	mv	s1,a1
    80006824:	00000913          	li	s2,0
    80006828:	fff00a93          	li	s5,-1
    8000682c:	01c0006f          	j	80006848 <consolewrite+0x58>
    80006830:	fbf44503          	lbu	a0,-65(s0)
    80006834:	0019091b          	addiw	s2,s2,1
    80006838:	00148493          	addi	s1,s1,1
    8000683c:	00001097          	auipc	ra,0x1
    80006840:	a9c080e7          	jalr	-1380(ra) # 800072d8 <uartputc>
    80006844:	03298063          	beq	s3,s2,80006864 <consolewrite+0x74>
    80006848:	00048613          	mv	a2,s1
    8000684c:	00100693          	li	a3,1
    80006850:	000a0593          	mv	a1,s4
    80006854:	fbf40513          	addi	a0,s0,-65
    80006858:	00000097          	auipc	ra,0x0
    8000685c:	9d8080e7          	jalr	-1576(ra) # 80006230 <either_copyin>
    80006860:	fd5518e3          	bne	a0,s5,80006830 <consolewrite+0x40>
    80006864:	04813083          	ld	ra,72(sp)
    80006868:	04013403          	ld	s0,64(sp)
    8000686c:	03813483          	ld	s1,56(sp)
    80006870:	02813983          	ld	s3,40(sp)
    80006874:	02013a03          	ld	s4,32(sp)
    80006878:	01813a83          	ld	s5,24(sp)
    8000687c:	00090513          	mv	a0,s2
    80006880:	03013903          	ld	s2,48(sp)
    80006884:	05010113          	addi	sp,sp,80
    80006888:	00008067          	ret
    8000688c:	00000913          	li	s2,0
    80006890:	fd5ff06f          	j	80006864 <consolewrite+0x74>

0000000080006894 <consoleread>:
    80006894:	f9010113          	addi	sp,sp,-112
    80006898:	06813023          	sd	s0,96(sp)
    8000689c:	04913c23          	sd	s1,88(sp)
    800068a0:	05213823          	sd	s2,80(sp)
    800068a4:	05313423          	sd	s3,72(sp)
    800068a8:	05413023          	sd	s4,64(sp)
    800068ac:	03513c23          	sd	s5,56(sp)
    800068b0:	03613823          	sd	s6,48(sp)
    800068b4:	03713423          	sd	s7,40(sp)
    800068b8:	03813023          	sd	s8,32(sp)
    800068bc:	06113423          	sd	ra,104(sp)
    800068c0:	01913c23          	sd	s9,24(sp)
    800068c4:	07010413          	addi	s0,sp,112
    800068c8:	00060b93          	mv	s7,a2
    800068cc:	00050913          	mv	s2,a0
    800068d0:	00058c13          	mv	s8,a1
    800068d4:	00060b1b          	sext.w	s6,a2
    800068d8:	00009497          	auipc	s1,0x9
    800068dc:	19048493          	addi	s1,s1,400 # 8000fa68 <cons>
    800068e0:	00400993          	li	s3,4
    800068e4:	fff00a13          	li	s4,-1
    800068e8:	00a00a93          	li	s5,10
    800068ec:	05705e63          	blez	s7,80006948 <consoleread+0xb4>
    800068f0:	09c4a703          	lw	a4,156(s1)
    800068f4:	0984a783          	lw	a5,152(s1)
    800068f8:	0007071b          	sext.w	a4,a4
    800068fc:	08e78463          	beq	a5,a4,80006984 <consoleread+0xf0>
    80006900:	07f7f713          	andi	a4,a5,127
    80006904:	00e48733          	add	a4,s1,a4
    80006908:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000690c:	0017869b          	addiw	a3,a5,1
    80006910:	08d4ac23          	sw	a3,152(s1)
    80006914:	00070c9b          	sext.w	s9,a4
    80006918:	0b370663          	beq	a4,s3,800069c4 <consoleread+0x130>
    8000691c:	00100693          	li	a3,1
    80006920:	f9f40613          	addi	a2,s0,-97
    80006924:	000c0593          	mv	a1,s8
    80006928:	00090513          	mv	a0,s2
    8000692c:	f8e40fa3          	sb	a4,-97(s0)
    80006930:	00000097          	auipc	ra,0x0
    80006934:	8b4080e7          	jalr	-1868(ra) # 800061e4 <either_copyout>
    80006938:	01450863          	beq	a0,s4,80006948 <consoleread+0xb4>
    8000693c:	001c0c13          	addi	s8,s8,1
    80006940:	fffb8b9b          	addiw	s7,s7,-1
    80006944:	fb5c94e3          	bne	s9,s5,800068ec <consoleread+0x58>
    80006948:	000b851b          	sext.w	a0,s7
    8000694c:	06813083          	ld	ra,104(sp)
    80006950:	06013403          	ld	s0,96(sp)
    80006954:	05813483          	ld	s1,88(sp)
    80006958:	05013903          	ld	s2,80(sp)
    8000695c:	04813983          	ld	s3,72(sp)
    80006960:	04013a03          	ld	s4,64(sp)
    80006964:	03813a83          	ld	s5,56(sp)
    80006968:	02813b83          	ld	s7,40(sp)
    8000696c:	02013c03          	ld	s8,32(sp)
    80006970:	01813c83          	ld	s9,24(sp)
    80006974:	40ab053b          	subw	a0,s6,a0
    80006978:	03013b03          	ld	s6,48(sp)
    8000697c:	07010113          	addi	sp,sp,112
    80006980:	00008067          	ret
    80006984:	00001097          	auipc	ra,0x1
    80006988:	1d8080e7          	jalr	472(ra) # 80007b5c <push_on>
    8000698c:	0984a703          	lw	a4,152(s1)
    80006990:	09c4a783          	lw	a5,156(s1)
    80006994:	0007879b          	sext.w	a5,a5
    80006998:	fef70ce3          	beq	a4,a5,80006990 <consoleread+0xfc>
    8000699c:	00001097          	auipc	ra,0x1
    800069a0:	234080e7          	jalr	564(ra) # 80007bd0 <pop_on>
    800069a4:	0984a783          	lw	a5,152(s1)
    800069a8:	07f7f713          	andi	a4,a5,127
    800069ac:	00e48733          	add	a4,s1,a4
    800069b0:	01874703          	lbu	a4,24(a4)
    800069b4:	0017869b          	addiw	a3,a5,1
    800069b8:	08d4ac23          	sw	a3,152(s1)
    800069bc:	00070c9b          	sext.w	s9,a4
    800069c0:	f5371ee3          	bne	a4,s3,8000691c <consoleread+0x88>
    800069c4:	000b851b          	sext.w	a0,s7
    800069c8:	f96bf2e3          	bgeu	s7,s6,8000694c <consoleread+0xb8>
    800069cc:	08f4ac23          	sw	a5,152(s1)
    800069d0:	f7dff06f          	j	8000694c <consoleread+0xb8>

00000000800069d4 <consputc>:
    800069d4:	10000793          	li	a5,256
    800069d8:	00f50663          	beq	a0,a5,800069e4 <consputc+0x10>
    800069dc:	00001317          	auipc	t1,0x1
    800069e0:	9f430067          	jr	-1548(t1) # 800073d0 <uartputc_sync>
    800069e4:	ff010113          	addi	sp,sp,-16
    800069e8:	00113423          	sd	ra,8(sp)
    800069ec:	00813023          	sd	s0,0(sp)
    800069f0:	01010413          	addi	s0,sp,16
    800069f4:	00800513          	li	a0,8
    800069f8:	00001097          	auipc	ra,0x1
    800069fc:	9d8080e7          	jalr	-1576(ra) # 800073d0 <uartputc_sync>
    80006a00:	02000513          	li	a0,32
    80006a04:	00001097          	auipc	ra,0x1
    80006a08:	9cc080e7          	jalr	-1588(ra) # 800073d0 <uartputc_sync>
    80006a0c:	00013403          	ld	s0,0(sp)
    80006a10:	00813083          	ld	ra,8(sp)
    80006a14:	00800513          	li	a0,8
    80006a18:	01010113          	addi	sp,sp,16
    80006a1c:	00001317          	auipc	t1,0x1
    80006a20:	9b430067          	jr	-1612(t1) # 800073d0 <uartputc_sync>

0000000080006a24 <consoleintr>:
    80006a24:	fe010113          	addi	sp,sp,-32
    80006a28:	00813823          	sd	s0,16(sp)
    80006a2c:	00913423          	sd	s1,8(sp)
    80006a30:	01213023          	sd	s2,0(sp)
    80006a34:	00113c23          	sd	ra,24(sp)
    80006a38:	02010413          	addi	s0,sp,32
    80006a3c:	00009917          	auipc	s2,0x9
    80006a40:	02c90913          	addi	s2,s2,44 # 8000fa68 <cons>
    80006a44:	00050493          	mv	s1,a0
    80006a48:	00090513          	mv	a0,s2
    80006a4c:	00001097          	auipc	ra,0x1
    80006a50:	e40080e7          	jalr	-448(ra) # 8000788c <acquire>
    80006a54:	02048c63          	beqz	s1,80006a8c <consoleintr+0x68>
    80006a58:	0a092783          	lw	a5,160(s2)
    80006a5c:	09892703          	lw	a4,152(s2)
    80006a60:	07f00693          	li	a3,127
    80006a64:	40e7873b          	subw	a4,a5,a4
    80006a68:	02e6e263          	bltu	a3,a4,80006a8c <consoleintr+0x68>
    80006a6c:	00d00713          	li	a4,13
    80006a70:	04e48063          	beq	s1,a4,80006ab0 <consoleintr+0x8c>
    80006a74:	07f7f713          	andi	a4,a5,127
    80006a78:	00e90733          	add	a4,s2,a4
    80006a7c:	0017879b          	addiw	a5,a5,1
    80006a80:	0af92023          	sw	a5,160(s2)
    80006a84:	00970c23          	sb	s1,24(a4)
    80006a88:	08f92e23          	sw	a5,156(s2)
    80006a8c:	01013403          	ld	s0,16(sp)
    80006a90:	01813083          	ld	ra,24(sp)
    80006a94:	00813483          	ld	s1,8(sp)
    80006a98:	00013903          	ld	s2,0(sp)
    80006a9c:	00009517          	auipc	a0,0x9
    80006aa0:	fcc50513          	addi	a0,a0,-52 # 8000fa68 <cons>
    80006aa4:	02010113          	addi	sp,sp,32
    80006aa8:	00001317          	auipc	t1,0x1
    80006aac:	eb030067          	jr	-336(t1) # 80007958 <release>
    80006ab0:	00a00493          	li	s1,10
    80006ab4:	fc1ff06f          	j	80006a74 <consoleintr+0x50>

0000000080006ab8 <consoleinit>:
    80006ab8:	fe010113          	addi	sp,sp,-32
    80006abc:	00113c23          	sd	ra,24(sp)
    80006ac0:	00813823          	sd	s0,16(sp)
    80006ac4:	00913423          	sd	s1,8(sp)
    80006ac8:	02010413          	addi	s0,sp,32
    80006acc:	00009497          	auipc	s1,0x9
    80006ad0:	f9c48493          	addi	s1,s1,-100 # 8000fa68 <cons>
    80006ad4:	00048513          	mv	a0,s1
    80006ad8:	00002597          	auipc	a1,0x2
    80006adc:	b0058593          	addi	a1,a1,-1280 # 800085d8 <CONSOLE_STATUS+0x5c8>
    80006ae0:	00001097          	auipc	ra,0x1
    80006ae4:	d88080e7          	jalr	-632(ra) # 80007868 <initlock>
    80006ae8:	00000097          	auipc	ra,0x0
    80006aec:	7ac080e7          	jalr	1964(ra) # 80007294 <uartinit>
    80006af0:	01813083          	ld	ra,24(sp)
    80006af4:	01013403          	ld	s0,16(sp)
    80006af8:	00000797          	auipc	a5,0x0
    80006afc:	d9c78793          	addi	a5,a5,-612 # 80006894 <consoleread>
    80006b00:	0af4bc23          	sd	a5,184(s1)
    80006b04:	00000797          	auipc	a5,0x0
    80006b08:	cec78793          	addi	a5,a5,-788 # 800067f0 <consolewrite>
    80006b0c:	0cf4b023          	sd	a5,192(s1)
    80006b10:	00813483          	ld	s1,8(sp)
    80006b14:	02010113          	addi	sp,sp,32
    80006b18:	00008067          	ret

0000000080006b1c <console_read>:
    80006b1c:	ff010113          	addi	sp,sp,-16
    80006b20:	00813423          	sd	s0,8(sp)
    80006b24:	01010413          	addi	s0,sp,16
    80006b28:	00813403          	ld	s0,8(sp)
    80006b2c:	00009317          	auipc	t1,0x9
    80006b30:	ff433303          	ld	t1,-12(t1) # 8000fb20 <devsw+0x10>
    80006b34:	01010113          	addi	sp,sp,16
    80006b38:	00030067          	jr	t1

0000000080006b3c <console_write>:
    80006b3c:	ff010113          	addi	sp,sp,-16
    80006b40:	00813423          	sd	s0,8(sp)
    80006b44:	01010413          	addi	s0,sp,16
    80006b48:	00813403          	ld	s0,8(sp)
    80006b4c:	00009317          	auipc	t1,0x9
    80006b50:	fdc33303          	ld	t1,-36(t1) # 8000fb28 <devsw+0x18>
    80006b54:	01010113          	addi	sp,sp,16
    80006b58:	00030067          	jr	t1

0000000080006b5c <panic>:
    80006b5c:	fe010113          	addi	sp,sp,-32
    80006b60:	00113c23          	sd	ra,24(sp)
    80006b64:	00813823          	sd	s0,16(sp)
    80006b68:	00913423          	sd	s1,8(sp)
    80006b6c:	02010413          	addi	s0,sp,32
    80006b70:	00050493          	mv	s1,a0
    80006b74:	00002517          	auipc	a0,0x2
    80006b78:	a6c50513          	addi	a0,a0,-1428 # 800085e0 <CONSOLE_STATUS+0x5d0>
    80006b7c:	00009797          	auipc	a5,0x9
    80006b80:	0407a623          	sw	zero,76(a5) # 8000fbc8 <pr+0x18>
    80006b84:	00000097          	auipc	ra,0x0
    80006b88:	034080e7          	jalr	52(ra) # 80006bb8 <__printf>
    80006b8c:	00048513          	mv	a0,s1
    80006b90:	00000097          	auipc	ra,0x0
    80006b94:	028080e7          	jalr	40(ra) # 80006bb8 <__printf>
    80006b98:	00002517          	auipc	a0,0x2
    80006b9c:	a2850513          	addi	a0,a0,-1496 # 800085c0 <CONSOLE_STATUS+0x5b0>
    80006ba0:	00000097          	auipc	ra,0x0
    80006ba4:	018080e7          	jalr	24(ra) # 80006bb8 <__printf>
    80006ba8:	00100793          	li	a5,1
    80006bac:	00004717          	auipc	a4,0x4
    80006bb0:	cef72623          	sw	a5,-788(a4) # 8000a898 <panicked>
    80006bb4:	0000006f          	j	80006bb4 <panic+0x58>

0000000080006bb8 <__printf>:
    80006bb8:	f3010113          	addi	sp,sp,-208
    80006bbc:	08813023          	sd	s0,128(sp)
    80006bc0:	07313423          	sd	s3,104(sp)
    80006bc4:	09010413          	addi	s0,sp,144
    80006bc8:	05813023          	sd	s8,64(sp)
    80006bcc:	08113423          	sd	ra,136(sp)
    80006bd0:	06913c23          	sd	s1,120(sp)
    80006bd4:	07213823          	sd	s2,112(sp)
    80006bd8:	07413023          	sd	s4,96(sp)
    80006bdc:	05513c23          	sd	s5,88(sp)
    80006be0:	05613823          	sd	s6,80(sp)
    80006be4:	05713423          	sd	s7,72(sp)
    80006be8:	03913c23          	sd	s9,56(sp)
    80006bec:	03a13823          	sd	s10,48(sp)
    80006bf0:	03b13423          	sd	s11,40(sp)
    80006bf4:	00009317          	auipc	t1,0x9
    80006bf8:	fbc30313          	addi	t1,t1,-68 # 8000fbb0 <pr>
    80006bfc:	01832c03          	lw	s8,24(t1)
    80006c00:	00b43423          	sd	a1,8(s0)
    80006c04:	00c43823          	sd	a2,16(s0)
    80006c08:	00d43c23          	sd	a3,24(s0)
    80006c0c:	02e43023          	sd	a4,32(s0)
    80006c10:	02f43423          	sd	a5,40(s0)
    80006c14:	03043823          	sd	a6,48(s0)
    80006c18:	03143c23          	sd	a7,56(s0)
    80006c1c:	00050993          	mv	s3,a0
    80006c20:	4a0c1663          	bnez	s8,800070cc <__printf+0x514>
    80006c24:	60098c63          	beqz	s3,8000723c <__printf+0x684>
    80006c28:	0009c503          	lbu	a0,0(s3)
    80006c2c:	00840793          	addi	a5,s0,8
    80006c30:	f6f43c23          	sd	a5,-136(s0)
    80006c34:	00000493          	li	s1,0
    80006c38:	22050063          	beqz	a0,80006e58 <__printf+0x2a0>
    80006c3c:	00002a37          	lui	s4,0x2
    80006c40:	00018ab7          	lui	s5,0x18
    80006c44:	000f4b37          	lui	s6,0xf4
    80006c48:	00989bb7          	lui	s7,0x989
    80006c4c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006c50:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006c54:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006c58:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006c5c:	00148c9b          	addiw	s9,s1,1
    80006c60:	02500793          	li	a5,37
    80006c64:	01998933          	add	s2,s3,s9
    80006c68:	38f51263          	bne	a0,a5,80006fec <__printf+0x434>
    80006c6c:	00094783          	lbu	a5,0(s2)
    80006c70:	00078c9b          	sext.w	s9,a5
    80006c74:	1e078263          	beqz	a5,80006e58 <__printf+0x2a0>
    80006c78:	0024849b          	addiw	s1,s1,2
    80006c7c:	07000713          	li	a4,112
    80006c80:	00998933          	add	s2,s3,s1
    80006c84:	38e78a63          	beq	a5,a4,80007018 <__printf+0x460>
    80006c88:	20f76863          	bltu	a4,a5,80006e98 <__printf+0x2e0>
    80006c8c:	42a78863          	beq	a5,a0,800070bc <__printf+0x504>
    80006c90:	06400713          	li	a4,100
    80006c94:	40e79663          	bne	a5,a4,800070a0 <__printf+0x4e8>
    80006c98:	f7843783          	ld	a5,-136(s0)
    80006c9c:	0007a603          	lw	a2,0(a5)
    80006ca0:	00878793          	addi	a5,a5,8
    80006ca4:	f6f43c23          	sd	a5,-136(s0)
    80006ca8:	42064a63          	bltz	a2,800070dc <__printf+0x524>
    80006cac:	00a00713          	li	a4,10
    80006cb0:	02e677bb          	remuw	a5,a2,a4
    80006cb4:	00002d97          	auipc	s11,0x2
    80006cb8:	954d8d93          	addi	s11,s11,-1708 # 80008608 <digits>
    80006cbc:	00900593          	li	a1,9
    80006cc0:	0006051b          	sext.w	a0,a2
    80006cc4:	00000c93          	li	s9,0
    80006cc8:	02079793          	slli	a5,a5,0x20
    80006ccc:	0207d793          	srli	a5,a5,0x20
    80006cd0:	00fd87b3          	add	a5,s11,a5
    80006cd4:	0007c783          	lbu	a5,0(a5)
    80006cd8:	02e656bb          	divuw	a3,a2,a4
    80006cdc:	f8f40023          	sb	a5,-128(s0)
    80006ce0:	14c5d863          	bge	a1,a2,80006e30 <__printf+0x278>
    80006ce4:	06300593          	li	a1,99
    80006ce8:	00100c93          	li	s9,1
    80006cec:	02e6f7bb          	remuw	a5,a3,a4
    80006cf0:	02079793          	slli	a5,a5,0x20
    80006cf4:	0207d793          	srli	a5,a5,0x20
    80006cf8:	00fd87b3          	add	a5,s11,a5
    80006cfc:	0007c783          	lbu	a5,0(a5)
    80006d00:	02e6d73b          	divuw	a4,a3,a4
    80006d04:	f8f400a3          	sb	a5,-127(s0)
    80006d08:	12a5f463          	bgeu	a1,a0,80006e30 <__printf+0x278>
    80006d0c:	00a00693          	li	a3,10
    80006d10:	00900593          	li	a1,9
    80006d14:	02d777bb          	remuw	a5,a4,a3
    80006d18:	02079793          	slli	a5,a5,0x20
    80006d1c:	0207d793          	srli	a5,a5,0x20
    80006d20:	00fd87b3          	add	a5,s11,a5
    80006d24:	0007c503          	lbu	a0,0(a5)
    80006d28:	02d757bb          	divuw	a5,a4,a3
    80006d2c:	f8a40123          	sb	a0,-126(s0)
    80006d30:	48e5f263          	bgeu	a1,a4,800071b4 <__printf+0x5fc>
    80006d34:	06300513          	li	a0,99
    80006d38:	02d7f5bb          	remuw	a1,a5,a3
    80006d3c:	02059593          	slli	a1,a1,0x20
    80006d40:	0205d593          	srli	a1,a1,0x20
    80006d44:	00bd85b3          	add	a1,s11,a1
    80006d48:	0005c583          	lbu	a1,0(a1)
    80006d4c:	02d7d7bb          	divuw	a5,a5,a3
    80006d50:	f8b401a3          	sb	a1,-125(s0)
    80006d54:	48e57263          	bgeu	a0,a4,800071d8 <__printf+0x620>
    80006d58:	3e700513          	li	a0,999
    80006d5c:	02d7f5bb          	remuw	a1,a5,a3
    80006d60:	02059593          	slli	a1,a1,0x20
    80006d64:	0205d593          	srli	a1,a1,0x20
    80006d68:	00bd85b3          	add	a1,s11,a1
    80006d6c:	0005c583          	lbu	a1,0(a1)
    80006d70:	02d7d7bb          	divuw	a5,a5,a3
    80006d74:	f8b40223          	sb	a1,-124(s0)
    80006d78:	46e57663          	bgeu	a0,a4,800071e4 <__printf+0x62c>
    80006d7c:	02d7f5bb          	remuw	a1,a5,a3
    80006d80:	02059593          	slli	a1,a1,0x20
    80006d84:	0205d593          	srli	a1,a1,0x20
    80006d88:	00bd85b3          	add	a1,s11,a1
    80006d8c:	0005c583          	lbu	a1,0(a1)
    80006d90:	02d7d7bb          	divuw	a5,a5,a3
    80006d94:	f8b402a3          	sb	a1,-123(s0)
    80006d98:	46ea7863          	bgeu	s4,a4,80007208 <__printf+0x650>
    80006d9c:	02d7f5bb          	remuw	a1,a5,a3
    80006da0:	02059593          	slli	a1,a1,0x20
    80006da4:	0205d593          	srli	a1,a1,0x20
    80006da8:	00bd85b3          	add	a1,s11,a1
    80006dac:	0005c583          	lbu	a1,0(a1)
    80006db0:	02d7d7bb          	divuw	a5,a5,a3
    80006db4:	f8b40323          	sb	a1,-122(s0)
    80006db8:	3eeaf863          	bgeu	s5,a4,800071a8 <__printf+0x5f0>
    80006dbc:	02d7f5bb          	remuw	a1,a5,a3
    80006dc0:	02059593          	slli	a1,a1,0x20
    80006dc4:	0205d593          	srli	a1,a1,0x20
    80006dc8:	00bd85b3          	add	a1,s11,a1
    80006dcc:	0005c583          	lbu	a1,0(a1)
    80006dd0:	02d7d7bb          	divuw	a5,a5,a3
    80006dd4:	f8b403a3          	sb	a1,-121(s0)
    80006dd8:	42eb7e63          	bgeu	s6,a4,80007214 <__printf+0x65c>
    80006ddc:	02d7f5bb          	remuw	a1,a5,a3
    80006de0:	02059593          	slli	a1,a1,0x20
    80006de4:	0205d593          	srli	a1,a1,0x20
    80006de8:	00bd85b3          	add	a1,s11,a1
    80006dec:	0005c583          	lbu	a1,0(a1)
    80006df0:	02d7d7bb          	divuw	a5,a5,a3
    80006df4:	f8b40423          	sb	a1,-120(s0)
    80006df8:	42ebfc63          	bgeu	s7,a4,80007230 <__printf+0x678>
    80006dfc:	02079793          	slli	a5,a5,0x20
    80006e00:	0207d793          	srli	a5,a5,0x20
    80006e04:	00fd8db3          	add	s11,s11,a5
    80006e08:	000dc703          	lbu	a4,0(s11)
    80006e0c:	00a00793          	li	a5,10
    80006e10:	00900c93          	li	s9,9
    80006e14:	f8e404a3          	sb	a4,-119(s0)
    80006e18:	00065c63          	bgez	a2,80006e30 <__printf+0x278>
    80006e1c:	f9040713          	addi	a4,s0,-112
    80006e20:	00f70733          	add	a4,a4,a5
    80006e24:	02d00693          	li	a3,45
    80006e28:	fed70823          	sb	a3,-16(a4)
    80006e2c:	00078c93          	mv	s9,a5
    80006e30:	f8040793          	addi	a5,s0,-128
    80006e34:	01978cb3          	add	s9,a5,s9
    80006e38:	f7f40d13          	addi	s10,s0,-129
    80006e3c:	000cc503          	lbu	a0,0(s9)
    80006e40:	fffc8c93          	addi	s9,s9,-1
    80006e44:	00000097          	auipc	ra,0x0
    80006e48:	b90080e7          	jalr	-1136(ra) # 800069d4 <consputc>
    80006e4c:	ffac98e3          	bne	s9,s10,80006e3c <__printf+0x284>
    80006e50:	00094503          	lbu	a0,0(s2)
    80006e54:	e00514e3          	bnez	a0,80006c5c <__printf+0xa4>
    80006e58:	1a0c1663          	bnez	s8,80007004 <__printf+0x44c>
    80006e5c:	08813083          	ld	ra,136(sp)
    80006e60:	08013403          	ld	s0,128(sp)
    80006e64:	07813483          	ld	s1,120(sp)
    80006e68:	07013903          	ld	s2,112(sp)
    80006e6c:	06813983          	ld	s3,104(sp)
    80006e70:	06013a03          	ld	s4,96(sp)
    80006e74:	05813a83          	ld	s5,88(sp)
    80006e78:	05013b03          	ld	s6,80(sp)
    80006e7c:	04813b83          	ld	s7,72(sp)
    80006e80:	04013c03          	ld	s8,64(sp)
    80006e84:	03813c83          	ld	s9,56(sp)
    80006e88:	03013d03          	ld	s10,48(sp)
    80006e8c:	02813d83          	ld	s11,40(sp)
    80006e90:	0d010113          	addi	sp,sp,208
    80006e94:	00008067          	ret
    80006e98:	07300713          	li	a4,115
    80006e9c:	1ce78a63          	beq	a5,a4,80007070 <__printf+0x4b8>
    80006ea0:	07800713          	li	a4,120
    80006ea4:	1ee79e63          	bne	a5,a4,800070a0 <__printf+0x4e8>
    80006ea8:	f7843783          	ld	a5,-136(s0)
    80006eac:	0007a703          	lw	a4,0(a5)
    80006eb0:	00878793          	addi	a5,a5,8
    80006eb4:	f6f43c23          	sd	a5,-136(s0)
    80006eb8:	28074263          	bltz	a4,8000713c <__printf+0x584>
    80006ebc:	00001d97          	auipc	s11,0x1
    80006ec0:	74cd8d93          	addi	s11,s11,1868 # 80008608 <digits>
    80006ec4:	00f77793          	andi	a5,a4,15
    80006ec8:	00fd87b3          	add	a5,s11,a5
    80006ecc:	0007c683          	lbu	a3,0(a5)
    80006ed0:	00f00613          	li	a2,15
    80006ed4:	0007079b          	sext.w	a5,a4
    80006ed8:	f8d40023          	sb	a3,-128(s0)
    80006edc:	0047559b          	srliw	a1,a4,0x4
    80006ee0:	0047569b          	srliw	a3,a4,0x4
    80006ee4:	00000c93          	li	s9,0
    80006ee8:	0ee65063          	bge	a2,a4,80006fc8 <__printf+0x410>
    80006eec:	00f6f693          	andi	a3,a3,15
    80006ef0:	00dd86b3          	add	a3,s11,a3
    80006ef4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006ef8:	0087d79b          	srliw	a5,a5,0x8
    80006efc:	00100c93          	li	s9,1
    80006f00:	f8d400a3          	sb	a3,-127(s0)
    80006f04:	0cb67263          	bgeu	a2,a1,80006fc8 <__printf+0x410>
    80006f08:	00f7f693          	andi	a3,a5,15
    80006f0c:	00dd86b3          	add	a3,s11,a3
    80006f10:	0006c583          	lbu	a1,0(a3)
    80006f14:	00f00613          	li	a2,15
    80006f18:	0047d69b          	srliw	a3,a5,0x4
    80006f1c:	f8b40123          	sb	a1,-126(s0)
    80006f20:	0047d593          	srli	a1,a5,0x4
    80006f24:	28f67e63          	bgeu	a2,a5,800071c0 <__printf+0x608>
    80006f28:	00f6f693          	andi	a3,a3,15
    80006f2c:	00dd86b3          	add	a3,s11,a3
    80006f30:	0006c503          	lbu	a0,0(a3)
    80006f34:	0087d813          	srli	a6,a5,0x8
    80006f38:	0087d69b          	srliw	a3,a5,0x8
    80006f3c:	f8a401a3          	sb	a0,-125(s0)
    80006f40:	28b67663          	bgeu	a2,a1,800071cc <__printf+0x614>
    80006f44:	00f6f693          	andi	a3,a3,15
    80006f48:	00dd86b3          	add	a3,s11,a3
    80006f4c:	0006c583          	lbu	a1,0(a3)
    80006f50:	00c7d513          	srli	a0,a5,0xc
    80006f54:	00c7d69b          	srliw	a3,a5,0xc
    80006f58:	f8b40223          	sb	a1,-124(s0)
    80006f5c:	29067a63          	bgeu	a2,a6,800071f0 <__printf+0x638>
    80006f60:	00f6f693          	andi	a3,a3,15
    80006f64:	00dd86b3          	add	a3,s11,a3
    80006f68:	0006c583          	lbu	a1,0(a3)
    80006f6c:	0107d813          	srli	a6,a5,0x10
    80006f70:	0107d69b          	srliw	a3,a5,0x10
    80006f74:	f8b402a3          	sb	a1,-123(s0)
    80006f78:	28a67263          	bgeu	a2,a0,800071fc <__printf+0x644>
    80006f7c:	00f6f693          	andi	a3,a3,15
    80006f80:	00dd86b3          	add	a3,s11,a3
    80006f84:	0006c683          	lbu	a3,0(a3)
    80006f88:	0147d79b          	srliw	a5,a5,0x14
    80006f8c:	f8d40323          	sb	a3,-122(s0)
    80006f90:	21067663          	bgeu	a2,a6,8000719c <__printf+0x5e4>
    80006f94:	02079793          	slli	a5,a5,0x20
    80006f98:	0207d793          	srli	a5,a5,0x20
    80006f9c:	00fd8db3          	add	s11,s11,a5
    80006fa0:	000dc683          	lbu	a3,0(s11)
    80006fa4:	00800793          	li	a5,8
    80006fa8:	00700c93          	li	s9,7
    80006fac:	f8d403a3          	sb	a3,-121(s0)
    80006fb0:	00075c63          	bgez	a4,80006fc8 <__printf+0x410>
    80006fb4:	f9040713          	addi	a4,s0,-112
    80006fb8:	00f70733          	add	a4,a4,a5
    80006fbc:	02d00693          	li	a3,45
    80006fc0:	fed70823          	sb	a3,-16(a4)
    80006fc4:	00078c93          	mv	s9,a5
    80006fc8:	f8040793          	addi	a5,s0,-128
    80006fcc:	01978cb3          	add	s9,a5,s9
    80006fd0:	f7f40d13          	addi	s10,s0,-129
    80006fd4:	000cc503          	lbu	a0,0(s9)
    80006fd8:	fffc8c93          	addi	s9,s9,-1
    80006fdc:	00000097          	auipc	ra,0x0
    80006fe0:	9f8080e7          	jalr	-1544(ra) # 800069d4 <consputc>
    80006fe4:	ff9d18e3          	bne	s10,s9,80006fd4 <__printf+0x41c>
    80006fe8:	0100006f          	j	80006ff8 <__printf+0x440>
    80006fec:	00000097          	auipc	ra,0x0
    80006ff0:	9e8080e7          	jalr	-1560(ra) # 800069d4 <consputc>
    80006ff4:	000c8493          	mv	s1,s9
    80006ff8:	00094503          	lbu	a0,0(s2)
    80006ffc:	c60510e3          	bnez	a0,80006c5c <__printf+0xa4>
    80007000:	e40c0ee3          	beqz	s8,80006e5c <__printf+0x2a4>
    80007004:	00009517          	auipc	a0,0x9
    80007008:	bac50513          	addi	a0,a0,-1108 # 8000fbb0 <pr>
    8000700c:	00001097          	auipc	ra,0x1
    80007010:	94c080e7          	jalr	-1716(ra) # 80007958 <release>
    80007014:	e49ff06f          	j	80006e5c <__printf+0x2a4>
    80007018:	f7843783          	ld	a5,-136(s0)
    8000701c:	03000513          	li	a0,48
    80007020:	01000d13          	li	s10,16
    80007024:	00878713          	addi	a4,a5,8
    80007028:	0007bc83          	ld	s9,0(a5)
    8000702c:	f6e43c23          	sd	a4,-136(s0)
    80007030:	00000097          	auipc	ra,0x0
    80007034:	9a4080e7          	jalr	-1628(ra) # 800069d4 <consputc>
    80007038:	07800513          	li	a0,120
    8000703c:	00000097          	auipc	ra,0x0
    80007040:	998080e7          	jalr	-1640(ra) # 800069d4 <consputc>
    80007044:	00001d97          	auipc	s11,0x1
    80007048:	5c4d8d93          	addi	s11,s11,1476 # 80008608 <digits>
    8000704c:	03ccd793          	srli	a5,s9,0x3c
    80007050:	00fd87b3          	add	a5,s11,a5
    80007054:	0007c503          	lbu	a0,0(a5)
    80007058:	fffd0d1b          	addiw	s10,s10,-1
    8000705c:	004c9c93          	slli	s9,s9,0x4
    80007060:	00000097          	auipc	ra,0x0
    80007064:	974080e7          	jalr	-1676(ra) # 800069d4 <consputc>
    80007068:	fe0d12e3          	bnez	s10,8000704c <__printf+0x494>
    8000706c:	f8dff06f          	j	80006ff8 <__printf+0x440>
    80007070:	f7843783          	ld	a5,-136(s0)
    80007074:	0007bc83          	ld	s9,0(a5)
    80007078:	00878793          	addi	a5,a5,8
    8000707c:	f6f43c23          	sd	a5,-136(s0)
    80007080:	000c9a63          	bnez	s9,80007094 <__printf+0x4dc>
    80007084:	1080006f          	j	8000718c <__printf+0x5d4>
    80007088:	001c8c93          	addi	s9,s9,1
    8000708c:	00000097          	auipc	ra,0x0
    80007090:	948080e7          	jalr	-1720(ra) # 800069d4 <consputc>
    80007094:	000cc503          	lbu	a0,0(s9)
    80007098:	fe0518e3          	bnez	a0,80007088 <__printf+0x4d0>
    8000709c:	f5dff06f          	j	80006ff8 <__printf+0x440>
    800070a0:	02500513          	li	a0,37
    800070a4:	00000097          	auipc	ra,0x0
    800070a8:	930080e7          	jalr	-1744(ra) # 800069d4 <consputc>
    800070ac:	000c8513          	mv	a0,s9
    800070b0:	00000097          	auipc	ra,0x0
    800070b4:	924080e7          	jalr	-1756(ra) # 800069d4 <consputc>
    800070b8:	f41ff06f          	j	80006ff8 <__printf+0x440>
    800070bc:	02500513          	li	a0,37
    800070c0:	00000097          	auipc	ra,0x0
    800070c4:	914080e7          	jalr	-1772(ra) # 800069d4 <consputc>
    800070c8:	f31ff06f          	j	80006ff8 <__printf+0x440>
    800070cc:	00030513          	mv	a0,t1
    800070d0:	00000097          	auipc	ra,0x0
    800070d4:	7bc080e7          	jalr	1980(ra) # 8000788c <acquire>
    800070d8:	b4dff06f          	j	80006c24 <__printf+0x6c>
    800070dc:	40c0053b          	negw	a0,a2
    800070e0:	00a00713          	li	a4,10
    800070e4:	02e576bb          	remuw	a3,a0,a4
    800070e8:	00001d97          	auipc	s11,0x1
    800070ec:	520d8d93          	addi	s11,s11,1312 # 80008608 <digits>
    800070f0:	ff700593          	li	a1,-9
    800070f4:	02069693          	slli	a3,a3,0x20
    800070f8:	0206d693          	srli	a3,a3,0x20
    800070fc:	00dd86b3          	add	a3,s11,a3
    80007100:	0006c683          	lbu	a3,0(a3)
    80007104:	02e557bb          	divuw	a5,a0,a4
    80007108:	f8d40023          	sb	a3,-128(s0)
    8000710c:	10b65e63          	bge	a2,a1,80007228 <__printf+0x670>
    80007110:	06300593          	li	a1,99
    80007114:	02e7f6bb          	remuw	a3,a5,a4
    80007118:	02069693          	slli	a3,a3,0x20
    8000711c:	0206d693          	srli	a3,a3,0x20
    80007120:	00dd86b3          	add	a3,s11,a3
    80007124:	0006c683          	lbu	a3,0(a3)
    80007128:	02e7d73b          	divuw	a4,a5,a4
    8000712c:	00200793          	li	a5,2
    80007130:	f8d400a3          	sb	a3,-127(s0)
    80007134:	bca5ece3          	bltu	a1,a0,80006d0c <__printf+0x154>
    80007138:	ce5ff06f          	j	80006e1c <__printf+0x264>
    8000713c:	40e007bb          	negw	a5,a4
    80007140:	00001d97          	auipc	s11,0x1
    80007144:	4c8d8d93          	addi	s11,s11,1224 # 80008608 <digits>
    80007148:	00f7f693          	andi	a3,a5,15
    8000714c:	00dd86b3          	add	a3,s11,a3
    80007150:	0006c583          	lbu	a1,0(a3)
    80007154:	ff100613          	li	a2,-15
    80007158:	0047d69b          	srliw	a3,a5,0x4
    8000715c:	f8b40023          	sb	a1,-128(s0)
    80007160:	0047d59b          	srliw	a1,a5,0x4
    80007164:	0ac75e63          	bge	a4,a2,80007220 <__printf+0x668>
    80007168:	00f6f693          	andi	a3,a3,15
    8000716c:	00dd86b3          	add	a3,s11,a3
    80007170:	0006c603          	lbu	a2,0(a3)
    80007174:	00f00693          	li	a3,15
    80007178:	0087d79b          	srliw	a5,a5,0x8
    8000717c:	f8c400a3          	sb	a2,-127(s0)
    80007180:	d8b6e4e3          	bltu	a3,a1,80006f08 <__printf+0x350>
    80007184:	00200793          	li	a5,2
    80007188:	e2dff06f          	j	80006fb4 <__printf+0x3fc>
    8000718c:	00001c97          	auipc	s9,0x1
    80007190:	45cc8c93          	addi	s9,s9,1116 # 800085e8 <CONSOLE_STATUS+0x5d8>
    80007194:	02800513          	li	a0,40
    80007198:	ef1ff06f          	j	80007088 <__printf+0x4d0>
    8000719c:	00700793          	li	a5,7
    800071a0:	00600c93          	li	s9,6
    800071a4:	e0dff06f          	j	80006fb0 <__printf+0x3f8>
    800071a8:	00700793          	li	a5,7
    800071ac:	00600c93          	li	s9,6
    800071b0:	c69ff06f          	j	80006e18 <__printf+0x260>
    800071b4:	00300793          	li	a5,3
    800071b8:	00200c93          	li	s9,2
    800071bc:	c5dff06f          	j	80006e18 <__printf+0x260>
    800071c0:	00300793          	li	a5,3
    800071c4:	00200c93          	li	s9,2
    800071c8:	de9ff06f          	j	80006fb0 <__printf+0x3f8>
    800071cc:	00400793          	li	a5,4
    800071d0:	00300c93          	li	s9,3
    800071d4:	dddff06f          	j	80006fb0 <__printf+0x3f8>
    800071d8:	00400793          	li	a5,4
    800071dc:	00300c93          	li	s9,3
    800071e0:	c39ff06f          	j	80006e18 <__printf+0x260>
    800071e4:	00500793          	li	a5,5
    800071e8:	00400c93          	li	s9,4
    800071ec:	c2dff06f          	j	80006e18 <__printf+0x260>
    800071f0:	00500793          	li	a5,5
    800071f4:	00400c93          	li	s9,4
    800071f8:	db9ff06f          	j	80006fb0 <__printf+0x3f8>
    800071fc:	00600793          	li	a5,6
    80007200:	00500c93          	li	s9,5
    80007204:	dadff06f          	j	80006fb0 <__printf+0x3f8>
    80007208:	00600793          	li	a5,6
    8000720c:	00500c93          	li	s9,5
    80007210:	c09ff06f          	j	80006e18 <__printf+0x260>
    80007214:	00800793          	li	a5,8
    80007218:	00700c93          	li	s9,7
    8000721c:	bfdff06f          	j	80006e18 <__printf+0x260>
    80007220:	00100793          	li	a5,1
    80007224:	d91ff06f          	j	80006fb4 <__printf+0x3fc>
    80007228:	00100793          	li	a5,1
    8000722c:	bf1ff06f          	j	80006e1c <__printf+0x264>
    80007230:	00900793          	li	a5,9
    80007234:	00800c93          	li	s9,8
    80007238:	be1ff06f          	j	80006e18 <__printf+0x260>
    8000723c:	00001517          	auipc	a0,0x1
    80007240:	3b450513          	addi	a0,a0,948 # 800085f0 <CONSOLE_STATUS+0x5e0>
    80007244:	00000097          	auipc	ra,0x0
    80007248:	918080e7          	jalr	-1768(ra) # 80006b5c <panic>

000000008000724c <printfinit>:
    8000724c:	fe010113          	addi	sp,sp,-32
    80007250:	00813823          	sd	s0,16(sp)
    80007254:	00913423          	sd	s1,8(sp)
    80007258:	00113c23          	sd	ra,24(sp)
    8000725c:	02010413          	addi	s0,sp,32
    80007260:	00009497          	auipc	s1,0x9
    80007264:	95048493          	addi	s1,s1,-1712 # 8000fbb0 <pr>
    80007268:	00048513          	mv	a0,s1
    8000726c:	00001597          	auipc	a1,0x1
    80007270:	39458593          	addi	a1,a1,916 # 80008600 <CONSOLE_STATUS+0x5f0>
    80007274:	00000097          	auipc	ra,0x0
    80007278:	5f4080e7          	jalr	1524(ra) # 80007868 <initlock>
    8000727c:	01813083          	ld	ra,24(sp)
    80007280:	01013403          	ld	s0,16(sp)
    80007284:	0004ac23          	sw	zero,24(s1)
    80007288:	00813483          	ld	s1,8(sp)
    8000728c:	02010113          	addi	sp,sp,32
    80007290:	00008067          	ret

0000000080007294 <uartinit>:
    80007294:	ff010113          	addi	sp,sp,-16
    80007298:	00813423          	sd	s0,8(sp)
    8000729c:	01010413          	addi	s0,sp,16
    800072a0:	100007b7          	lui	a5,0x10000
    800072a4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800072a8:	f8000713          	li	a4,-128
    800072ac:	00e781a3          	sb	a4,3(a5)
    800072b0:	00300713          	li	a4,3
    800072b4:	00e78023          	sb	a4,0(a5)
    800072b8:	000780a3          	sb	zero,1(a5)
    800072bc:	00e781a3          	sb	a4,3(a5)
    800072c0:	00700693          	li	a3,7
    800072c4:	00d78123          	sb	a3,2(a5)
    800072c8:	00e780a3          	sb	a4,1(a5)
    800072cc:	00813403          	ld	s0,8(sp)
    800072d0:	01010113          	addi	sp,sp,16
    800072d4:	00008067          	ret

00000000800072d8 <uartputc>:
    800072d8:	00003797          	auipc	a5,0x3
    800072dc:	5c07a783          	lw	a5,1472(a5) # 8000a898 <panicked>
    800072e0:	00078463          	beqz	a5,800072e8 <uartputc+0x10>
    800072e4:	0000006f          	j	800072e4 <uartputc+0xc>
    800072e8:	fd010113          	addi	sp,sp,-48
    800072ec:	02813023          	sd	s0,32(sp)
    800072f0:	00913c23          	sd	s1,24(sp)
    800072f4:	01213823          	sd	s2,16(sp)
    800072f8:	01313423          	sd	s3,8(sp)
    800072fc:	02113423          	sd	ra,40(sp)
    80007300:	03010413          	addi	s0,sp,48
    80007304:	00003917          	auipc	s2,0x3
    80007308:	59c90913          	addi	s2,s2,1436 # 8000a8a0 <uart_tx_r>
    8000730c:	00093783          	ld	a5,0(s2)
    80007310:	00003497          	auipc	s1,0x3
    80007314:	59848493          	addi	s1,s1,1432 # 8000a8a8 <uart_tx_w>
    80007318:	0004b703          	ld	a4,0(s1)
    8000731c:	02078693          	addi	a3,a5,32
    80007320:	00050993          	mv	s3,a0
    80007324:	02e69c63          	bne	a3,a4,8000735c <uartputc+0x84>
    80007328:	00001097          	auipc	ra,0x1
    8000732c:	834080e7          	jalr	-1996(ra) # 80007b5c <push_on>
    80007330:	00093783          	ld	a5,0(s2)
    80007334:	0004b703          	ld	a4,0(s1)
    80007338:	02078793          	addi	a5,a5,32
    8000733c:	00e79463          	bne	a5,a4,80007344 <uartputc+0x6c>
    80007340:	0000006f          	j	80007340 <uartputc+0x68>
    80007344:	00001097          	auipc	ra,0x1
    80007348:	88c080e7          	jalr	-1908(ra) # 80007bd0 <pop_on>
    8000734c:	00093783          	ld	a5,0(s2)
    80007350:	0004b703          	ld	a4,0(s1)
    80007354:	02078693          	addi	a3,a5,32
    80007358:	fce688e3          	beq	a3,a4,80007328 <uartputc+0x50>
    8000735c:	01f77693          	andi	a3,a4,31
    80007360:	00009597          	auipc	a1,0x9
    80007364:	87058593          	addi	a1,a1,-1936 # 8000fbd0 <uart_tx_buf>
    80007368:	00d586b3          	add	a3,a1,a3
    8000736c:	00170713          	addi	a4,a4,1
    80007370:	01368023          	sb	s3,0(a3)
    80007374:	00e4b023          	sd	a4,0(s1)
    80007378:	10000637          	lui	a2,0x10000
    8000737c:	02f71063          	bne	a4,a5,8000739c <uartputc+0xc4>
    80007380:	0340006f          	j	800073b4 <uartputc+0xdc>
    80007384:	00074703          	lbu	a4,0(a4)
    80007388:	00f93023          	sd	a5,0(s2)
    8000738c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007390:	00093783          	ld	a5,0(s2)
    80007394:	0004b703          	ld	a4,0(s1)
    80007398:	00f70e63          	beq	a4,a5,800073b4 <uartputc+0xdc>
    8000739c:	00564683          	lbu	a3,5(a2)
    800073a0:	01f7f713          	andi	a4,a5,31
    800073a4:	00e58733          	add	a4,a1,a4
    800073a8:	0206f693          	andi	a3,a3,32
    800073ac:	00178793          	addi	a5,a5,1
    800073b0:	fc069ae3          	bnez	a3,80007384 <uartputc+0xac>
    800073b4:	02813083          	ld	ra,40(sp)
    800073b8:	02013403          	ld	s0,32(sp)
    800073bc:	01813483          	ld	s1,24(sp)
    800073c0:	01013903          	ld	s2,16(sp)
    800073c4:	00813983          	ld	s3,8(sp)
    800073c8:	03010113          	addi	sp,sp,48
    800073cc:	00008067          	ret

00000000800073d0 <uartputc_sync>:
    800073d0:	ff010113          	addi	sp,sp,-16
    800073d4:	00813423          	sd	s0,8(sp)
    800073d8:	01010413          	addi	s0,sp,16
    800073dc:	00003717          	auipc	a4,0x3
    800073e0:	4bc72703          	lw	a4,1212(a4) # 8000a898 <panicked>
    800073e4:	02071663          	bnez	a4,80007410 <uartputc_sync+0x40>
    800073e8:	00050793          	mv	a5,a0
    800073ec:	100006b7          	lui	a3,0x10000
    800073f0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800073f4:	02077713          	andi	a4,a4,32
    800073f8:	fe070ce3          	beqz	a4,800073f0 <uartputc_sync+0x20>
    800073fc:	0ff7f793          	andi	a5,a5,255
    80007400:	00f68023          	sb	a5,0(a3)
    80007404:	00813403          	ld	s0,8(sp)
    80007408:	01010113          	addi	sp,sp,16
    8000740c:	00008067          	ret
    80007410:	0000006f          	j	80007410 <uartputc_sync+0x40>

0000000080007414 <uartstart>:
    80007414:	ff010113          	addi	sp,sp,-16
    80007418:	00813423          	sd	s0,8(sp)
    8000741c:	01010413          	addi	s0,sp,16
    80007420:	00003617          	auipc	a2,0x3
    80007424:	48060613          	addi	a2,a2,1152 # 8000a8a0 <uart_tx_r>
    80007428:	00003517          	auipc	a0,0x3
    8000742c:	48050513          	addi	a0,a0,1152 # 8000a8a8 <uart_tx_w>
    80007430:	00063783          	ld	a5,0(a2)
    80007434:	00053703          	ld	a4,0(a0)
    80007438:	04f70263          	beq	a4,a5,8000747c <uartstart+0x68>
    8000743c:	100005b7          	lui	a1,0x10000
    80007440:	00008817          	auipc	a6,0x8
    80007444:	79080813          	addi	a6,a6,1936 # 8000fbd0 <uart_tx_buf>
    80007448:	01c0006f          	j	80007464 <uartstart+0x50>
    8000744c:	0006c703          	lbu	a4,0(a3)
    80007450:	00f63023          	sd	a5,0(a2)
    80007454:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007458:	00063783          	ld	a5,0(a2)
    8000745c:	00053703          	ld	a4,0(a0)
    80007460:	00f70e63          	beq	a4,a5,8000747c <uartstart+0x68>
    80007464:	01f7f713          	andi	a4,a5,31
    80007468:	00e806b3          	add	a3,a6,a4
    8000746c:	0055c703          	lbu	a4,5(a1)
    80007470:	00178793          	addi	a5,a5,1
    80007474:	02077713          	andi	a4,a4,32
    80007478:	fc071ae3          	bnez	a4,8000744c <uartstart+0x38>
    8000747c:	00813403          	ld	s0,8(sp)
    80007480:	01010113          	addi	sp,sp,16
    80007484:	00008067          	ret

0000000080007488 <uartgetc>:
    80007488:	ff010113          	addi	sp,sp,-16
    8000748c:	00813423          	sd	s0,8(sp)
    80007490:	01010413          	addi	s0,sp,16
    80007494:	10000737          	lui	a4,0x10000
    80007498:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000749c:	0017f793          	andi	a5,a5,1
    800074a0:	00078c63          	beqz	a5,800074b8 <uartgetc+0x30>
    800074a4:	00074503          	lbu	a0,0(a4)
    800074a8:	0ff57513          	andi	a0,a0,255
    800074ac:	00813403          	ld	s0,8(sp)
    800074b0:	01010113          	addi	sp,sp,16
    800074b4:	00008067          	ret
    800074b8:	fff00513          	li	a0,-1
    800074bc:	ff1ff06f          	j	800074ac <uartgetc+0x24>

00000000800074c0 <uartintr>:
    800074c0:	100007b7          	lui	a5,0x10000
    800074c4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800074c8:	0017f793          	andi	a5,a5,1
    800074cc:	0a078463          	beqz	a5,80007574 <uartintr+0xb4>
    800074d0:	fe010113          	addi	sp,sp,-32
    800074d4:	00813823          	sd	s0,16(sp)
    800074d8:	00913423          	sd	s1,8(sp)
    800074dc:	00113c23          	sd	ra,24(sp)
    800074e0:	02010413          	addi	s0,sp,32
    800074e4:	100004b7          	lui	s1,0x10000
    800074e8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800074ec:	0ff57513          	andi	a0,a0,255
    800074f0:	fffff097          	auipc	ra,0xfffff
    800074f4:	534080e7          	jalr	1332(ra) # 80006a24 <consoleintr>
    800074f8:	0054c783          	lbu	a5,5(s1)
    800074fc:	0017f793          	andi	a5,a5,1
    80007500:	fe0794e3          	bnez	a5,800074e8 <uartintr+0x28>
    80007504:	00003617          	auipc	a2,0x3
    80007508:	39c60613          	addi	a2,a2,924 # 8000a8a0 <uart_tx_r>
    8000750c:	00003517          	auipc	a0,0x3
    80007510:	39c50513          	addi	a0,a0,924 # 8000a8a8 <uart_tx_w>
    80007514:	00063783          	ld	a5,0(a2)
    80007518:	00053703          	ld	a4,0(a0)
    8000751c:	04f70263          	beq	a4,a5,80007560 <uartintr+0xa0>
    80007520:	100005b7          	lui	a1,0x10000
    80007524:	00008817          	auipc	a6,0x8
    80007528:	6ac80813          	addi	a6,a6,1708 # 8000fbd0 <uart_tx_buf>
    8000752c:	01c0006f          	j	80007548 <uartintr+0x88>
    80007530:	0006c703          	lbu	a4,0(a3)
    80007534:	00f63023          	sd	a5,0(a2)
    80007538:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000753c:	00063783          	ld	a5,0(a2)
    80007540:	00053703          	ld	a4,0(a0)
    80007544:	00f70e63          	beq	a4,a5,80007560 <uartintr+0xa0>
    80007548:	01f7f713          	andi	a4,a5,31
    8000754c:	00e806b3          	add	a3,a6,a4
    80007550:	0055c703          	lbu	a4,5(a1)
    80007554:	00178793          	addi	a5,a5,1
    80007558:	02077713          	andi	a4,a4,32
    8000755c:	fc071ae3          	bnez	a4,80007530 <uartintr+0x70>
    80007560:	01813083          	ld	ra,24(sp)
    80007564:	01013403          	ld	s0,16(sp)
    80007568:	00813483          	ld	s1,8(sp)
    8000756c:	02010113          	addi	sp,sp,32
    80007570:	00008067          	ret
    80007574:	00003617          	auipc	a2,0x3
    80007578:	32c60613          	addi	a2,a2,812 # 8000a8a0 <uart_tx_r>
    8000757c:	00003517          	auipc	a0,0x3
    80007580:	32c50513          	addi	a0,a0,812 # 8000a8a8 <uart_tx_w>
    80007584:	00063783          	ld	a5,0(a2)
    80007588:	00053703          	ld	a4,0(a0)
    8000758c:	04f70263          	beq	a4,a5,800075d0 <uartintr+0x110>
    80007590:	100005b7          	lui	a1,0x10000
    80007594:	00008817          	auipc	a6,0x8
    80007598:	63c80813          	addi	a6,a6,1596 # 8000fbd0 <uart_tx_buf>
    8000759c:	01c0006f          	j	800075b8 <uartintr+0xf8>
    800075a0:	0006c703          	lbu	a4,0(a3)
    800075a4:	00f63023          	sd	a5,0(a2)
    800075a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800075ac:	00063783          	ld	a5,0(a2)
    800075b0:	00053703          	ld	a4,0(a0)
    800075b4:	02f70063          	beq	a4,a5,800075d4 <uartintr+0x114>
    800075b8:	01f7f713          	andi	a4,a5,31
    800075bc:	00e806b3          	add	a3,a6,a4
    800075c0:	0055c703          	lbu	a4,5(a1)
    800075c4:	00178793          	addi	a5,a5,1
    800075c8:	02077713          	andi	a4,a4,32
    800075cc:	fc071ae3          	bnez	a4,800075a0 <uartintr+0xe0>
    800075d0:	00008067          	ret
    800075d4:	00008067          	ret

00000000800075d8 <kinit>:
    800075d8:	fc010113          	addi	sp,sp,-64
    800075dc:	02913423          	sd	s1,40(sp)
    800075e0:	fffff7b7          	lui	a5,0xfffff
    800075e4:	00009497          	auipc	s1,0x9
    800075e8:	60b48493          	addi	s1,s1,1547 # 80010bef <end+0xfff>
    800075ec:	02813823          	sd	s0,48(sp)
    800075f0:	01313c23          	sd	s3,24(sp)
    800075f4:	00f4f4b3          	and	s1,s1,a5
    800075f8:	02113c23          	sd	ra,56(sp)
    800075fc:	03213023          	sd	s2,32(sp)
    80007600:	01413823          	sd	s4,16(sp)
    80007604:	01513423          	sd	s5,8(sp)
    80007608:	04010413          	addi	s0,sp,64
    8000760c:	000017b7          	lui	a5,0x1
    80007610:	01100993          	li	s3,17
    80007614:	00f487b3          	add	a5,s1,a5
    80007618:	01b99993          	slli	s3,s3,0x1b
    8000761c:	06f9e063          	bltu	s3,a5,8000767c <kinit+0xa4>
    80007620:	00008a97          	auipc	s5,0x8
    80007624:	5d0a8a93          	addi	s5,s5,1488 # 8000fbf0 <end>
    80007628:	0754ec63          	bltu	s1,s5,800076a0 <kinit+0xc8>
    8000762c:	0734fa63          	bgeu	s1,s3,800076a0 <kinit+0xc8>
    80007630:	00088a37          	lui	s4,0x88
    80007634:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007638:	00003917          	auipc	s2,0x3
    8000763c:	27890913          	addi	s2,s2,632 # 8000a8b0 <kmem>
    80007640:	00ca1a13          	slli	s4,s4,0xc
    80007644:	0140006f          	j	80007658 <kinit+0x80>
    80007648:	000017b7          	lui	a5,0x1
    8000764c:	00f484b3          	add	s1,s1,a5
    80007650:	0554e863          	bltu	s1,s5,800076a0 <kinit+0xc8>
    80007654:	0534f663          	bgeu	s1,s3,800076a0 <kinit+0xc8>
    80007658:	00001637          	lui	a2,0x1
    8000765c:	00100593          	li	a1,1
    80007660:	00048513          	mv	a0,s1
    80007664:	00000097          	auipc	ra,0x0
    80007668:	5e4080e7          	jalr	1508(ra) # 80007c48 <__memset>
    8000766c:	00093783          	ld	a5,0(s2)
    80007670:	00f4b023          	sd	a5,0(s1)
    80007674:	00993023          	sd	s1,0(s2)
    80007678:	fd4498e3          	bne	s1,s4,80007648 <kinit+0x70>
    8000767c:	03813083          	ld	ra,56(sp)
    80007680:	03013403          	ld	s0,48(sp)
    80007684:	02813483          	ld	s1,40(sp)
    80007688:	02013903          	ld	s2,32(sp)
    8000768c:	01813983          	ld	s3,24(sp)
    80007690:	01013a03          	ld	s4,16(sp)
    80007694:	00813a83          	ld	s5,8(sp)
    80007698:	04010113          	addi	sp,sp,64
    8000769c:	00008067          	ret
    800076a0:	00001517          	auipc	a0,0x1
    800076a4:	f8050513          	addi	a0,a0,-128 # 80008620 <digits+0x18>
    800076a8:	fffff097          	auipc	ra,0xfffff
    800076ac:	4b4080e7          	jalr	1204(ra) # 80006b5c <panic>

00000000800076b0 <freerange>:
    800076b0:	fc010113          	addi	sp,sp,-64
    800076b4:	000017b7          	lui	a5,0x1
    800076b8:	02913423          	sd	s1,40(sp)
    800076bc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800076c0:	009504b3          	add	s1,a0,s1
    800076c4:	fffff537          	lui	a0,0xfffff
    800076c8:	02813823          	sd	s0,48(sp)
    800076cc:	02113c23          	sd	ra,56(sp)
    800076d0:	03213023          	sd	s2,32(sp)
    800076d4:	01313c23          	sd	s3,24(sp)
    800076d8:	01413823          	sd	s4,16(sp)
    800076dc:	01513423          	sd	s5,8(sp)
    800076e0:	01613023          	sd	s6,0(sp)
    800076e4:	04010413          	addi	s0,sp,64
    800076e8:	00a4f4b3          	and	s1,s1,a0
    800076ec:	00f487b3          	add	a5,s1,a5
    800076f0:	06f5e463          	bltu	a1,a5,80007758 <freerange+0xa8>
    800076f4:	00008a97          	auipc	s5,0x8
    800076f8:	4fca8a93          	addi	s5,s5,1276 # 8000fbf0 <end>
    800076fc:	0954e263          	bltu	s1,s5,80007780 <freerange+0xd0>
    80007700:	01100993          	li	s3,17
    80007704:	01b99993          	slli	s3,s3,0x1b
    80007708:	0734fc63          	bgeu	s1,s3,80007780 <freerange+0xd0>
    8000770c:	00058a13          	mv	s4,a1
    80007710:	00003917          	auipc	s2,0x3
    80007714:	1a090913          	addi	s2,s2,416 # 8000a8b0 <kmem>
    80007718:	00002b37          	lui	s6,0x2
    8000771c:	0140006f          	j	80007730 <freerange+0x80>
    80007720:	000017b7          	lui	a5,0x1
    80007724:	00f484b3          	add	s1,s1,a5
    80007728:	0554ec63          	bltu	s1,s5,80007780 <freerange+0xd0>
    8000772c:	0534fa63          	bgeu	s1,s3,80007780 <freerange+0xd0>
    80007730:	00001637          	lui	a2,0x1
    80007734:	00100593          	li	a1,1
    80007738:	00048513          	mv	a0,s1
    8000773c:	00000097          	auipc	ra,0x0
    80007740:	50c080e7          	jalr	1292(ra) # 80007c48 <__memset>
    80007744:	00093703          	ld	a4,0(s2)
    80007748:	016487b3          	add	a5,s1,s6
    8000774c:	00e4b023          	sd	a4,0(s1)
    80007750:	00993023          	sd	s1,0(s2)
    80007754:	fcfa76e3          	bgeu	s4,a5,80007720 <freerange+0x70>
    80007758:	03813083          	ld	ra,56(sp)
    8000775c:	03013403          	ld	s0,48(sp)
    80007760:	02813483          	ld	s1,40(sp)
    80007764:	02013903          	ld	s2,32(sp)
    80007768:	01813983          	ld	s3,24(sp)
    8000776c:	01013a03          	ld	s4,16(sp)
    80007770:	00813a83          	ld	s5,8(sp)
    80007774:	00013b03          	ld	s6,0(sp)
    80007778:	04010113          	addi	sp,sp,64
    8000777c:	00008067          	ret
    80007780:	00001517          	auipc	a0,0x1
    80007784:	ea050513          	addi	a0,a0,-352 # 80008620 <digits+0x18>
    80007788:	fffff097          	auipc	ra,0xfffff
    8000778c:	3d4080e7          	jalr	980(ra) # 80006b5c <panic>

0000000080007790 <kfree>:
    80007790:	fe010113          	addi	sp,sp,-32
    80007794:	00813823          	sd	s0,16(sp)
    80007798:	00113c23          	sd	ra,24(sp)
    8000779c:	00913423          	sd	s1,8(sp)
    800077a0:	02010413          	addi	s0,sp,32
    800077a4:	03451793          	slli	a5,a0,0x34
    800077a8:	04079c63          	bnez	a5,80007800 <kfree+0x70>
    800077ac:	00008797          	auipc	a5,0x8
    800077b0:	44478793          	addi	a5,a5,1092 # 8000fbf0 <end>
    800077b4:	00050493          	mv	s1,a0
    800077b8:	04f56463          	bltu	a0,a5,80007800 <kfree+0x70>
    800077bc:	01100793          	li	a5,17
    800077c0:	01b79793          	slli	a5,a5,0x1b
    800077c4:	02f57e63          	bgeu	a0,a5,80007800 <kfree+0x70>
    800077c8:	00001637          	lui	a2,0x1
    800077cc:	00100593          	li	a1,1
    800077d0:	00000097          	auipc	ra,0x0
    800077d4:	478080e7          	jalr	1144(ra) # 80007c48 <__memset>
    800077d8:	00003797          	auipc	a5,0x3
    800077dc:	0d878793          	addi	a5,a5,216 # 8000a8b0 <kmem>
    800077e0:	0007b703          	ld	a4,0(a5)
    800077e4:	01813083          	ld	ra,24(sp)
    800077e8:	01013403          	ld	s0,16(sp)
    800077ec:	00e4b023          	sd	a4,0(s1)
    800077f0:	0097b023          	sd	s1,0(a5)
    800077f4:	00813483          	ld	s1,8(sp)
    800077f8:	02010113          	addi	sp,sp,32
    800077fc:	00008067          	ret
    80007800:	00001517          	auipc	a0,0x1
    80007804:	e2050513          	addi	a0,a0,-480 # 80008620 <digits+0x18>
    80007808:	fffff097          	auipc	ra,0xfffff
    8000780c:	354080e7          	jalr	852(ra) # 80006b5c <panic>

0000000080007810 <kalloc>:
    80007810:	fe010113          	addi	sp,sp,-32
    80007814:	00813823          	sd	s0,16(sp)
    80007818:	00913423          	sd	s1,8(sp)
    8000781c:	00113c23          	sd	ra,24(sp)
    80007820:	02010413          	addi	s0,sp,32
    80007824:	00003797          	auipc	a5,0x3
    80007828:	08c78793          	addi	a5,a5,140 # 8000a8b0 <kmem>
    8000782c:	0007b483          	ld	s1,0(a5)
    80007830:	02048063          	beqz	s1,80007850 <kalloc+0x40>
    80007834:	0004b703          	ld	a4,0(s1)
    80007838:	00001637          	lui	a2,0x1
    8000783c:	00500593          	li	a1,5
    80007840:	00048513          	mv	a0,s1
    80007844:	00e7b023          	sd	a4,0(a5)
    80007848:	00000097          	auipc	ra,0x0
    8000784c:	400080e7          	jalr	1024(ra) # 80007c48 <__memset>
    80007850:	01813083          	ld	ra,24(sp)
    80007854:	01013403          	ld	s0,16(sp)
    80007858:	00048513          	mv	a0,s1
    8000785c:	00813483          	ld	s1,8(sp)
    80007860:	02010113          	addi	sp,sp,32
    80007864:	00008067          	ret

0000000080007868 <initlock>:
    80007868:	ff010113          	addi	sp,sp,-16
    8000786c:	00813423          	sd	s0,8(sp)
    80007870:	01010413          	addi	s0,sp,16
    80007874:	00813403          	ld	s0,8(sp)
    80007878:	00b53423          	sd	a1,8(a0)
    8000787c:	00052023          	sw	zero,0(a0)
    80007880:	00053823          	sd	zero,16(a0)
    80007884:	01010113          	addi	sp,sp,16
    80007888:	00008067          	ret

000000008000788c <acquire>:
    8000788c:	fe010113          	addi	sp,sp,-32
    80007890:	00813823          	sd	s0,16(sp)
    80007894:	00913423          	sd	s1,8(sp)
    80007898:	00113c23          	sd	ra,24(sp)
    8000789c:	01213023          	sd	s2,0(sp)
    800078a0:	02010413          	addi	s0,sp,32
    800078a4:	00050493          	mv	s1,a0
    800078a8:	10002973          	csrr	s2,sstatus
    800078ac:	100027f3          	csrr	a5,sstatus
    800078b0:	ffd7f793          	andi	a5,a5,-3
    800078b4:	10079073          	csrw	sstatus,a5
    800078b8:	fffff097          	auipc	ra,0xfffff
    800078bc:	8e0080e7          	jalr	-1824(ra) # 80006198 <mycpu>
    800078c0:	07852783          	lw	a5,120(a0)
    800078c4:	06078e63          	beqz	a5,80007940 <acquire+0xb4>
    800078c8:	fffff097          	auipc	ra,0xfffff
    800078cc:	8d0080e7          	jalr	-1840(ra) # 80006198 <mycpu>
    800078d0:	07852783          	lw	a5,120(a0)
    800078d4:	0004a703          	lw	a4,0(s1)
    800078d8:	0017879b          	addiw	a5,a5,1
    800078dc:	06f52c23          	sw	a5,120(a0)
    800078e0:	04071063          	bnez	a4,80007920 <acquire+0x94>
    800078e4:	00100713          	li	a4,1
    800078e8:	00070793          	mv	a5,a4
    800078ec:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800078f0:	0007879b          	sext.w	a5,a5
    800078f4:	fe079ae3          	bnez	a5,800078e8 <acquire+0x5c>
    800078f8:	0ff0000f          	fence
    800078fc:	fffff097          	auipc	ra,0xfffff
    80007900:	89c080e7          	jalr	-1892(ra) # 80006198 <mycpu>
    80007904:	01813083          	ld	ra,24(sp)
    80007908:	01013403          	ld	s0,16(sp)
    8000790c:	00a4b823          	sd	a0,16(s1)
    80007910:	00013903          	ld	s2,0(sp)
    80007914:	00813483          	ld	s1,8(sp)
    80007918:	02010113          	addi	sp,sp,32
    8000791c:	00008067          	ret
    80007920:	0104b903          	ld	s2,16(s1)
    80007924:	fffff097          	auipc	ra,0xfffff
    80007928:	874080e7          	jalr	-1932(ra) # 80006198 <mycpu>
    8000792c:	faa91ce3          	bne	s2,a0,800078e4 <acquire+0x58>
    80007930:	00001517          	auipc	a0,0x1
    80007934:	cf850513          	addi	a0,a0,-776 # 80008628 <digits+0x20>
    80007938:	fffff097          	auipc	ra,0xfffff
    8000793c:	224080e7          	jalr	548(ra) # 80006b5c <panic>
    80007940:	00195913          	srli	s2,s2,0x1
    80007944:	fffff097          	auipc	ra,0xfffff
    80007948:	854080e7          	jalr	-1964(ra) # 80006198 <mycpu>
    8000794c:	00197913          	andi	s2,s2,1
    80007950:	07252e23          	sw	s2,124(a0)
    80007954:	f75ff06f          	j	800078c8 <acquire+0x3c>

0000000080007958 <release>:
    80007958:	fe010113          	addi	sp,sp,-32
    8000795c:	00813823          	sd	s0,16(sp)
    80007960:	00113c23          	sd	ra,24(sp)
    80007964:	00913423          	sd	s1,8(sp)
    80007968:	01213023          	sd	s2,0(sp)
    8000796c:	02010413          	addi	s0,sp,32
    80007970:	00052783          	lw	a5,0(a0)
    80007974:	00079a63          	bnez	a5,80007988 <release+0x30>
    80007978:	00001517          	auipc	a0,0x1
    8000797c:	cb850513          	addi	a0,a0,-840 # 80008630 <digits+0x28>
    80007980:	fffff097          	auipc	ra,0xfffff
    80007984:	1dc080e7          	jalr	476(ra) # 80006b5c <panic>
    80007988:	01053903          	ld	s2,16(a0)
    8000798c:	00050493          	mv	s1,a0
    80007990:	fffff097          	auipc	ra,0xfffff
    80007994:	808080e7          	jalr	-2040(ra) # 80006198 <mycpu>
    80007998:	fea910e3          	bne	s2,a0,80007978 <release+0x20>
    8000799c:	0004b823          	sd	zero,16(s1)
    800079a0:	0ff0000f          	fence
    800079a4:	0f50000f          	fence	iorw,ow
    800079a8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800079ac:	ffffe097          	auipc	ra,0xffffe
    800079b0:	7ec080e7          	jalr	2028(ra) # 80006198 <mycpu>
    800079b4:	100027f3          	csrr	a5,sstatus
    800079b8:	0027f793          	andi	a5,a5,2
    800079bc:	04079a63          	bnez	a5,80007a10 <release+0xb8>
    800079c0:	07852783          	lw	a5,120(a0)
    800079c4:	02f05e63          	blez	a5,80007a00 <release+0xa8>
    800079c8:	fff7871b          	addiw	a4,a5,-1
    800079cc:	06e52c23          	sw	a4,120(a0)
    800079d0:	00071c63          	bnez	a4,800079e8 <release+0x90>
    800079d4:	07c52783          	lw	a5,124(a0)
    800079d8:	00078863          	beqz	a5,800079e8 <release+0x90>
    800079dc:	100027f3          	csrr	a5,sstatus
    800079e0:	0027e793          	ori	a5,a5,2
    800079e4:	10079073          	csrw	sstatus,a5
    800079e8:	01813083          	ld	ra,24(sp)
    800079ec:	01013403          	ld	s0,16(sp)
    800079f0:	00813483          	ld	s1,8(sp)
    800079f4:	00013903          	ld	s2,0(sp)
    800079f8:	02010113          	addi	sp,sp,32
    800079fc:	00008067          	ret
    80007a00:	00001517          	auipc	a0,0x1
    80007a04:	c5050513          	addi	a0,a0,-944 # 80008650 <digits+0x48>
    80007a08:	fffff097          	auipc	ra,0xfffff
    80007a0c:	154080e7          	jalr	340(ra) # 80006b5c <panic>
    80007a10:	00001517          	auipc	a0,0x1
    80007a14:	c2850513          	addi	a0,a0,-984 # 80008638 <digits+0x30>
    80007a18:	fffff097          	auipc	ra,0xfffff
    80007a1c:	144080e7          	jalr	324(ra) # 80006b5c <panic>

0000000080007a20 <holding>:
    80007a20:	00052783          	lw	a5,0(a0)
    80007a24:	00079663          	bnez	a5,80007a30 <holding+0x10>
    80007a28:	00000513          	li	a0,0
    80007a2c:	00008067          	ret
    80007a30:	fe010113          	addi	sp,sp,-32
    80007a34:	00813823          	sd	s0,16(sp)
    80007a38:	00913423          	sd	s1,8(sp)
    80007a3c:	00113c23          	sd	ra,24(sp)
    80007a40:	02010413          	addi	s0,sp,32
    80007a44:	01053483          	ld	s1,16(a0)
    80007a48:	ffffe097          	auipc	ra,0xffffe
    80007a4c:	750080e7          	jalr	1872(ra) # 80006198 <mycpu>
    80007a50:	01813083          	ld	ra,24(sp)
    80007a54:	01013403          	ld	s0,16(sp)
    80007a58:	40a48533          	sub	a0,s1,a0
    80007a5c:	00153513          	seqz	a0,a0
    80007a60:	00813483          	ld	s1,8(sp)
    80007a64:	02010113          	addi	sp,sp,32
    80007a68:	00008067          	ret

0000000080007a6c <push_off>:
    80007a6c:	fe010113          	addi	sp,sp,-32
    80007a70:	00813823          	sd	s0,16(sp)
    80007a74:	00113c23          	sd	ra,24(sp)
    80007a78:	00913423          	sd	s1,8(sp)
    80007a7c:	02010413          	addi	s0,sp,32
    80007a80:	100024f3          	csrr	s1,sstatus
    80007a84:	100027f3          	csrr	a5,sstatus
    80007a88:	ffd7f793          	andi	a5,a5,-3
    80007a8c:	10079073          	csrw	sstatus,a5
    80007a90:	ffffe097          	auipc	ra,0xffffe
    80007a94:	708080e7          	jalr	1800(ra) # 80006198 <mycpu>
    80007a98:	07852783          	lw	a5,120(a0)
    80007a9c:	02078663          	beqz	a5,80007ac8 <push_off+0x5c>
    80007aa0:	ffffe097          	auipc	ra,0xffffe
    80007aa4:	6f8080e7          	jalr	1784(ra) # 80006198 <mycpu>
    80007aa8:	07852783          	lw	a5,120(a0)
    80007aac:	01813083          	ld	ra,24(sp)
    80007ab0:	01013403          	ld	s0,16(sp)
    80007ab4:	0017879b          	addiw	a5,a5,1
    80007ab8:	06f52c23          	sw	a5,120(a0)
    80007abc:	00813483          	ld	s1,8(sp)
    80007ac0:	02010113          	addi	sp,sp,32
    80007ac4:	00008067          	ret
    80007ac8:	0014d493          	srli	s1,s1,0x1
    80007acc:	ffffe097          	auipc	ra,0xffffe
    80007ad0:	6cc080e7          	jalr	1740(ra) # 80006198 <mycpu>
    80007ad4:	0014f493          	andi	s1,s1,1
    80007ad8:	06952e23          	sw	s1,124(a0)
    80007adc:	fc5ff06f          	j	80007aa0 <push_off+0x34>

0000000080007ae0 <pop_off>:
    80007ae0:	ff010113          	addi	sp,sp,-16
    80007ae4:	00813023          	sd	s0,0(sp)
    80007ae8:	00113423          	sd	ra,8(sp)
    80007aec:	01010413          	addi	s0,sp,16
    80007af0:	ffffe097          	auipc	ra,0xffffe
    80007af4:	6a8080e7          	jalr	1704(ra) # 80006198 <mycpu>
    80007af8:	100027f3          	csrr	a5,sstatus
    80007afc:	0027f793          	andi	a5,a5,2
    80007b00:	04079663          	bnez	a5,80007b4c <pop_off+0x6c>
    80007b04:	07852783          	lw	a5,120(a0)
    80007b08:	02f05a63          	blez	a5,80007b3c <pop_off+0x5c>
    80007b0c:	fff7871b          	addiw	a4,a5,-1
    80007b10:	06e52c23          	sw	a4,120(a0)
    80007b14:	00071c63          	bnez	a4,80007b2c <pop_off+0x4c>
    80007b18:	07c52783          	lw	a5,124(a0)
    80007b1c:	00078863          	beqz	a5,80007b2c <pop_off+0x4c>
    80007b20:	100027f3          	csrr	a5,sstatus
    80007b24:	0027e793          	ori	a5,a5,2
    80007b28:	10079073          	csrw	sstatus,a5
    80007b2c:	00813083          	ld	ra,8(sp)
    80007b30:	00013403          	ld	s0,0(sp)
    80007b34:	01010113          	addi	sp,sp,16
    80007b38:	00008067          	ret
    80007b3c:	00001517          	auipc	a0,0x1
    80007b40:	b1450513          	addi	a0,a0,-1260 # 80008650 <digits+0x48>
    80007b44:	fffff097          	auipc	ra,0xfffff
    80007b48:	018080e7          	jalr	24(ra) # 80006b5c <panic>
    80007b4c:	00001517          	auipc	a0,0x1
    80007b50:	aec50513          	addi	a0,a0,-1300 # 80008638 <digits+0x30>
    80007b54:	fffff097          	auipc	ra,0xfffff
    80007b58:	008080e7          	jalr	8(ra) # 80006b5c <panic>

0000000080007b5c <push_on>:
    80007b5c:	fe010113          	addi	sp,sp,-32
    80007b60:	00813823          	sd	s0,16(sp)
    80007b64:	00113c23          	sd	ra,24(sp)
    80007b68:	00913423          	sd	s1,8(sp)
    80007b6c:	02010413          	addi	s0,sp,32
    80007b70:	100024f3          	csrr	s1,sstatus
    80007b74:	100027f3          	csrr	a5,sstatus
    80007b78:	0027e793          	ori	a5,a5,2
    80007b7c:	10079073          	csrw	sstatus,a5
    80007b80:	ffffe097          	auipc	ra,0xffffe
    80007b84:	618080e7          	jalr	1560(ra) # 80006198 <mycpu>
    80007b88:	07852783          	lw	a5,120(a0)
    80007b8c:	02078663          	beqz	a5,80007bb8 <push_on+0x5c>
    80007b90:	ffffe097          	auipc	ra,0xffffe
    80007b94:	608080e7          	jalr	1544(ra) # 80006198 <mycpu>
    80007b98:	07852783          	lw	a5,120(a0)
    80007b9c:	01813083          	ld	ra,24(sp)
    80007ba0:	01013403          	ld	s0,16(sp)
    80007ba4:	0017879b          	addiw	a5,a5,1
    80007ba8:	06f52c23          	sw	a5,120(a0)
    80007bac:	00813483          	ld	s1,8(sp)
    80007bb0:	02010113          	addi	sp,sp,32
    80007bb4:	00008067          	ret
    80007bb8:	0014d493          	srli	s1,s1,0x1
    80007bbc:	ffffe097          	auipc	ra,0xffffe
    80007bc0:	5dc080e7          	jalr	1500(ra) # 80006198 <mycpu>
    80007bc4:	0014f493          	andi	s1,s1,1
    80007bc8:	06952e23          	sw	s1,124(a0)
    80007bcc:	fc5ff06f          	j	80007b90 <push_on+0x34>

0000000080007bd0 <pop_on>:
    80007bd0:	ff010113          	addi	sp,sp,-16
    80007bd4:	00813023          	sd	s0,0(sp)
    80007bd8:	00113423          	sd	ra,8(sp)
    80007bdc:	01010413          	addi	s0,sp,16
    80007be0:	ffffe097          	auipc	ra,0xffffe
    80007be4:	5b8080e7          	jalr	1464(ra) # 80006198 <mycpu>
    80007be8:	100027f3          	csrr	a5,sstatus
    80007bec:	0027f793          	andi	a5,a5,2
    80007bf0:	04078463          	beqz	a5,80007c38 <pop_on+0x68>
    80007bf4:	07852783          	lw	a5,120(a0)
    80007bf8:	02f05863          	blez	a5,80007c28 <pop_on+0x58>
    80007bfc:	fff7879b          	addiw	a5,a5,-1
    80007c00:	06f52c23          	sw	a5,120(a0)
    80007c04:	07853783          	ld	a5,120(a0)
    80007c08:	00079863          	bnez	a5,80007c18 <pop_on+0x48>
    80007c0c:	100027f3          	csrr	a5,sstatus
    80007c10:	ffd7f793          	andi	a5,a5,-3
    80007c14:	10079073          	csrw	sstatus,a5
    80007c18:	00813083          	ld	ra,8(sp)
    80007c1c:	00013403          	ld	s0,0(sp)
    80007c20:	01010113          	addi	sp,sp,16
    80007c24:	00008067          	ret
    80007c28:	00001517          	auipc	a0,0x1
    80007c2c:	a5050513          	addi	a0,a0,-1456 # 80008678 <digits+0x70>
    80007c30:	fffff097          	auipc	ra,0xfffff
    80007c34:	f2c080e7          	jalr	-212(ra) # 80006b5c <panic>
    80007c38:	00001517          	auipc	a0,0x1
    80007c3c:	a2050513          	addi	a0,a0,-1504 # 80008658 <digits+0x50>
    80007c40:	fffff097          	auipc	ra,0xfffff
    80007c44:	f1c080e7          	jalr	-228(ra) # 80006b5c <panic>

0000000080007c48 <__memset>:
    80007c48:	ff010113          	addi	sp,sp,-16
    80007c4c:	00813423          	sd	s0,8(sp)
    80007c50:	01010413          	addi	s0,sp,16
    80007c54:	1a060e63          	beqz	a2,80007e10 <__memset+0x1c8>
    80007c58:	40a007b3          	neg	a5,a0
    80007c5c:	0077f793          	andi	a5,a5,7
    80007c60:	00778693          	addi	a3,a5,7
    80007c64:	00b00813          	li	a6,11
    80007c68:	0ff5f593          	andi	a1,a1,255
    80007c6c:	fff6071b          	addiw	a4,a2,-1
    80007c70:	1b06e663          	bltu	a3,a6,80007e1c <__memset+0x1d4>
    80007c74:	1cd76463          	bltu	a4,a3,80007e3c <__memset+0x1f4>
    80007c78:	1a078e63          	beqz	a5,80007e34 <__memset+0x1ec>
    80007c7c:	00b50023          	sb	a1,0(a0)
    80007c80:	00100713          	li	a4,1
    80007c84:	1ae78463          	beq	a5,a4,80007e2c <__memset+0x1e4>
    80007c88:	00b500a3          	sb	a1,1(a0)
    80007c8c:	00200713          	li	a4,2
    80007c90:	1ae78a63          	beq	a5,a4,80007e44 <__memset+0x1fc>
    80007c94:	00b50123          	sb	a1,2(a0)
    80007c98:	00300713          	li	a4,3
    80007c9c:	18e78463          	beq	a5,a4,80007e24 <__memset+0x1dc>
    80007ca0:	00b501a3          	sb	a1,3(a0)
    80007ca4:	00400713          	li	a4,4
    80007ca8:	1ae78263          	beq	a5,a4,80007e4c <__memset+0x204>
    80007cac:	00b50223          	sb	a1,4(a0)
    80007cb0:	00500713          	li	a4,5
    80007cb4:	1ae78063          	beq	a5,a4,80007e54 <__memset+0x20c>
    80007cb8:	00b502a3          	sb	a1,5(a0)
    80007cbc:	00700713          	li	a4,7
    80007cc0:	18e79e63          	bne	a5,a4,80007e5c <__memset+0x214>
    80007cc4:	00b50323          	sb	a1,6(a0)
    80007cc8:	00700e93          	li	t4,7
    80007ccc:	00859713          	slli	a4,a1,0x8
    80007cd0:	00e5e733          	or	a4,a1,a4
    80007cd4:	01059e13          	slli	t3,a1,0x10
    80007cd8:	01c76e33          	or	t3,a4,t3
    80007cdc:	01859313          	slli	t1,a1,0x18
    80007ce0:	006e6333          	or	t1,t3,t1
    80007ce4:	02059893          	slli	a7,a1,0x20
    80007ce8:	40f60e3b          	subw	t3,a2,a5
    80007cec:	011368b3          	or	a7,t1,a7
    80007cf0:	02859813          	slli	a6,a1,0x28
    80007cf4:	0108e833          	or	a6,a7,a6
    80007cf8:	03059693          	slli	a3,a1,0x30
    80007cfc:	003e589b          	srliw	a7,t3,0x3
    80007d00:	00d866b3          	or	a3,a6,a3
    80007d04:	03859713          	slli	a4,a1,0x38
    80007d08:	00389813          	slli	a6,a7,0x3
    80007d0c:	00f507b3          	add	a5,a0,a5
    80007d10:	00e6e733          	or	a4,a3,a4
    80007d14:	000e089b          	sext.w	a7,t3
    80007d18:	00f806b3          	add	a3,a6,a5
    80007d1c:	00e7b023          	sd	a4,0(a5)
    80007d20:	00878793          	addi	a5,a5,8
    80007d24:	fed79ce3          	bne	a5,a3,80007d1c <__memset+0xd4>
    80007d28:	ff8e7793          	andi	a5,t3,-8
    80007d2c:	0007871b          	sext.w	a4,a5
    80007d30:	01d787bb          	addw	a5,a5,t4
    80007d34:	0ce88e63          	beq	a7,a4,80007e10 <__memset+0x1c8>
    80007d38:	00f50733          	add	a4,a0,a5
    80007d3c:	00b70023          	sb	a1,0(a4)
    80007d40:	0017871b          	addiw	a4,a5,1
    80007d44:	0cc77663          	bgeu	a4,a2,80007e10 <__memset+0x1c8>
    80007d48:	00e50733          	add	a4,a0,a4
    80007d4c:	00b70023          	sb	a1,0(a4)
    80007d50:	0027871b          	addiw	a4,a5,2
    80007d54:	0ac77e63          	bgeu	a4,a2,80007e10 <__memset+0x1c8>
    80007d58:	00e50733          	add	a4,a0,a4
    80007d5c:	00b70023          	sb	a1,0(a4)
    80007d60:	0037871b          	addiw	a4,a5,3
    80007d64:	0ac77663          	bgeu	a4,a2,80007e10 <__memset+0x1c8>
    80007d68:	00e50733          	add	a4,a0,a4
    80007d6c:	00b70023          	sb	a1,0(a4)
    80007d70:	0047871b          	addiw	a4,a5,4
    80007d74:	08c77e63          	bgeu	a4,a2,80007e10 <__memset+0x1c8>
    80007d78:	00e50733          	add	a4,a0,a4
    80007d7c:	00b70023          	sb	a1,0(a4)
    80007d80:	0057871b          	addiw	a4,a5,5
    80007d84:	08c77663          	bgeu	a4,a2,80007e10 <__memset+0x1c8>
    80007d88:	00e50733          	add	a4,a0,a4
    80007d8c:	00b70023          	sb	a1,0(a4)
    80007d90:	0067871b          	addiw	a4,a5,6
    80007d94:	06c77e63          	bgeu	a4,a2,80007e10 <__memset+0x1c8>
    80007d98:	00e50733          	add	a4,a0,a4
    80007d9c:	00b70023          	sb	a1,0(a4)
    80007da0:	0077871b          	addiw	a4,a5,7
    80007da4:	06c77663          	bgeu	a4,a2,80007e10 <__memset+0x1c8>
    80007da8:	00e50733          	add	a4,a0,a4
    80007dac:	00b70023          	sb	a1,0(a4)
    80007db0:	0087871b          	addiw	a4,a5,8
    80007db4:	04c77e63          	bgeu	a4,a2,80007e10 <__memset+0x1c8>
    80007db8:	00e50733          	add	a4,a0,a4
    80007dbc:	00b70023          	sb	a1,0(a4)
    80007dc0:	0097871b          	addiw	a4,a5,9
    80007dc4:	04c77663          	bgeu	a4,a2,80007e10 <__memset+0x1c8>
    80007dc8:	00e50733          	add	a4,a0,a4
    80007dcc:	00b70023          	sb	a1,0(a4)
    80007dd0:	00a7871b          	addiw	a4,a5,10
    80007dd4:	02c77e63          	bgeu	a4,a2,80007e10 <__memset+0x1c8>
    80007dd8:	00e50733          	add	a4,a0,a4
    80007ddc:	00b70023          	sb	a1,0(a4)
    80007de0:	00b7871b          	addiw	a4,a5,11
    80007de4:	02c77663          	bgeu	a4,a2,80007e10 <__memset+0x1c8>
    80007de8:	00e50733          	add	a4,a0,a4
    80007dec:	00b70023          	sb	a1,0(a4)
    80007df0:	00c7871b          	addiw	a4,a5,12
    80007df4:	00c77e63          	bgeu	a4,a2,80007e10 <__memset+0x1c8>
    80007df8:	00e50733          	add	a4,a0,a4
    80007dfc:	00b70023          	sb	a1,0(a4)
    80007e00:	00d7879b          	addiw	a5,a5,13
    80007e04:	00c7f663          	bgeu	a5,a2,80007e10 <__memset+0x1c8>
    80007e08:	00f507b3          	add	a5,a0,a5
    80007e0c:	00b78023          	sb	a1,0(a5)
    80007e10:	00813403          	ld	s0,8(sp)
    80007e14:	01010113          	addi	sp,sp,16
    80007e18:	00008067          	ret
    80007e1c:	00b00693          	li	a3,11
    80007e20:	e55ff06f          	j	80007c74 <__memset+0x2c>
    80007e24:	00300e93          	li	t4,3
    80007e28:	ea5ff06f          	j	80007ccc <__memset+0x84>
    80007e2c:	00100e93          	li	t4,1
    80007e30:	e9dff06f          	j	80007ccc <__memset+0x84>
    80007e34:	00000e93          	li	t4,0
    80007e38:	e95ff06f          	j	80007ccc <__memset+0x84>
    80007e3c:	00000793          	li	a5,0
    80007e40:	ef9ff06f          	j	80007d38 <__memset+0xf0>
    80007e44:	00200e93          	li	t4,2
    80007e48:	e85ff06f          	j	80007ccc <__memset+0x84>
    80007e4c:	00400e93          	li	t4,4
    80007e50:	e7dff06f          	j	80007ccc <__memset+0x84>
    80007e54:	00500e93          	li	t4,5
    80007e58:	e75ff06f          	j	80007ccc <__memset+0x84>
    80007e5c:	00600e93          	li	t4,6
    80007e60:	e6dff06f          	j	80007ccc <__memset+0x84>

0000000080007e64 <__memmove>:
    80007e64:	ff010113          	addi	sp,sp,-16
    80007e68:	00813423          	sd	s0,8(sp)
    80007e6c:	01010413          	addi	s0,sp,16
    80007e70:	0e060863          	beqz	a2,80007f60 <__memmove+0xfc>
    80007e74:	fff6069b          	addiw	a3,a2,-1
    80007e78:	0006881b          	sext.w	a6,a3
    80007e7c:	0ea5e863          	bltu	a1,a0,80007f6c <__memmove+0x108>
    80007e80:	00758713          	addi	a4,a1,7
    80007e84:	00a5e7b3          	or	a5,a1,a0
    80007e88:	40a70733          	sub	a4,a4,a0
    80007e8c:	0077f793          	andi	a5,a5,7
    80007e90:	00f73713          	sltiu	a4,a4,15
    80007e94:	00174713          	xori	a4,a4,1
    80007e98:	0017b793          	seqz	a5,a5
    80007e9c:	00e7f7b3          	and	a5,a5,a4
    80007ea0:	10078863          	beqz	a5,80007fb0 <__memmove+0x14c>
    80007ea4:	00900793          	li	a5,9
    80007ea8:	1107f463          	bgeu	a5,a6,80007fb0 <__memmove+0x14c>
    80007eac:	0036581b          	srliw	a6,a2,0x3
    80007eb0:	fff8081b          	addiw	a6,a6,-1
    80007eb4:	02081813          	slli	a6,a6,0x20
    80007eb8:	01d85893          	srli	a7,a6,0x1d
    80007ebc:	00858813          	addi	a6,a1,8
    80007ec0:	00058793          	mv	a5,a1
    80007ec4:	00050713          	mv	a4,a0
    80007ec8:	01088833          	add	a6,a7,a6
    80007ecc:	0007b883          	ld	a7,0(a5)
    80007ed0:	00878793          	addi	a5,a5,8
    80007ed4:	00870713          	addi	a4,a4,8
    80007ed8:	ff173c23          	sd	a7,-8(a4)
    80007edc:	ff0798e3          	bne	a5,a6,80007ecc <__memmove+0x68>
    80007ee0:	ff867713          	andi	a4,a2,-8
    80007ee4:	02071793          	slli	a5,a4,0x20
    80007ee8:	0207d793          	srli	a5,a5,0x20
    80007eec:	00f585b3          	add	a1,a1,a5
    80007ef0:	40e686bb          	subw	a3,a3,a4
    80007ef4:	00f507b3          	add	a5,a0,a5
    80007ef8:	06e60463          	beq	a2,a4,80007f60 <__memmove+0xfc>
    80007efc:	0005c703          	lbu	a4,0(a1)
    80007f00:	00e78023          	sb	a4,0(a5)
    80007f04:	04068e63          	beqz	a3,80007f60 <__memmove+0xfc>
    80007f08:	0015c603          	lbu	a2,1(a1)
    80007f0c:	00100713          	li	a4,1
    80007f10:	00c780a3          	sb	a2,1(a5)
    80007f14:	04e68663          	beq	a3,a4,80007f60 <__memmove+0xfc>
    80007f18:	0025c603          	lbu	a2,2(a1)
    80007f1c:	00200713          	li	a4,2
    80007f20:	00c78123          	sb	a2,2(a5)
    80007f24:	02e68e63          	beq	a3,a4,80007f60 <__memmove+0xfc>
    80007f28:	0035c603          	lbu	a2,3(a1)
    80007f2c:	00300713          	li	a4,3
    80007f30:	00c781a3          	sb	a2,3(a5)
    80007f34:	02e68663          	beq	a3,a4,80007f60 <__memmove+0xfc>
    80007f38:	0045c603          	lbu	a2,4(a1)
    80007f3c:	00400713          	li	a4,4
    80007f40:	00c78223          	sb	a2,4(a5)
    80007f44:	00e68e63          	beq	a3,a4,80007f60 <__memmove+0xfc>
    80007f48:	0055c603          	lbu	a2,5(a1)
    80007f4c:	00500713          	li	a4,5
    80007f50:	00c782a3          	sb	a2,5(a5)
    80007f54:	00e68663          	beq	a3,a4,80007f60 <__memmove+0xfc>
    80007f58:	0065c703          	lbu	a4,6(a1)
    80007f5c:	00e78323          	sb	a4,6(a5)
    80007f60:	00813403          	ld	s0,8(sp)
    80007f64:	01010113          	addi	sp,sp,16
    80007f68:	00008067          	ret
    80007f6c:	02061713          	slli	a4,a2,0x20
    80007f70:	02075713          	srli	a4,a4,0x20
    80007f74:	00e587b3          	add	a5,a1,a4
    80007f78:	f0f574e3          	bgeu	a0,a5,80007e80 <__memmove+0x1c>
    80007f7c:	02069613          	slli	a2,a3,0x20
    80007f80:	02065613          	srli	a2,a2,0x20
    80007f84:	fff64613          	not	a2,a2
    80007f88:	00e50733          	add	a4,a0,a4
    80007f8c:	00c78633          	add	a2,a5,a2
    80007f90:	fff7c683          	lbu	a3,-1(a5)
    80007f94:	fff78793          	addi	a5,a5,-1
    80007f98:	fff70713          	addi	a4,a4,-1
    80007f9c:	00d70023          	sb	a3,0(a4)
    80007fa0:	fec798e3          	bne	a5,a2,80007f90 <__memmove+0x12c>
    80007fa4:	00813403          	ld	s0,8(sp)
    80007fa8:	01010113          	addi	sp,sp,16
    80007fac:	00008067          	ret
    80007fb0:	02069713          	slli	a4,a3,0x20
    80007fb4:	02075713          	srli	a4,a4,0x20
    80007fb8:	00170713          	addi	a4,a4,1
    80007fbc:	00e50733          	add	a4,a0,a4
    80007fc0:	00050793          	mv	a5,a0
    80007fc4:	0005c683          	lbu	a3,0(a1)
    80007fc8:	00178793          	addi	a5,a5,1
    80007fcc:	00158593          	addi	a1,a1,1
    80007fd0:	fed78fa3          	sb	a3,-1(a5)
    80007fd4:	fee798e3          	bne	a5,a4,80007fc4 <__memmove+0x160>
    80007fd8:	f89ff06f          	j	80007f60 <__memmove+0xfc>
	...
